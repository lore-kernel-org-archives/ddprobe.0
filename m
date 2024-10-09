Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 128A76FC3
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728434154; cv=none; b=kmRB2C2vc7btuj5r+HHyXWA5sdVcPi7TkmXlFC+INNTpZ3vM3pLHd/SBhf+EiXRsGzZ9hvd9Ywt+3Q7rj1SY8GumMGdP/licFv764OLWRCHxMuEm4F7vofKsUBxxv3EwfjHX80KgKsPgI2yWucy3Mf2USjtAOyYpcxWaIbDGcTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728434154; c=relaxed/simple;
	bh=Ehw8wNJS+sxqYwbUZnKWfVU9gXzG9AiiA0i9Vtdzpxo=;
	h=To:Subject:From:Message-Id:Date; b=fIaFw49eziNRQxSiHEIunBoPc+9ZwRH9zpLp8nApuWK3qP92kvS0g3xARWuOh5c45Ah5hZmDFskTeClRXsgl6ITBKTdtRCKQQU7dyk+1geIRF7y3atu+gs5J/krIE+CpdxuAUc2Guf10JPncvHYAFBCaDbqSI4qOcqjtsYCLon8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IrXqPLae; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IrXqPLae"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE8BC4CEC7
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728434153;
	bh=Ehw8wNJS+sxqYwbUZnKWfVU9gXzG9AiiA0i9Vtdzpxo=;
	h=To:Subject:From:Date:From;
	b=IrXqPLaethgYg5Gkv9/8UKK5AwZU7dMq/ciWGd/ug5dxGyjUsI+1eSniV/LzPQyzV
	 KZjhZkAAAFzGdCKAwSUU2TAluVPvjjN0MBi/R61X45yrIqossX5pOa3TApr2534+qr
	 dZAGUa1kzO1zwqSsWFMcjQ5TJGjqhcZULzwWCuQ8kDqAy37FFOCdJQwc/WK1OaPmth
	 3vuKJYcGvu3ZEHR6WhyOki9H9OHrVuQZ7hHLqL39SpMsbdq+arYYL1QpEQRHF0VIYd
	 MFV8zspem54SYt9zyg+eNVW+VsBE2uB54J3jZV69L2oKh6codL29Xy0/SMvaG/aPIT
	 K148y+pePfxQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B38CF042B
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172843415358.5981.5172241522713540657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69ee705e475d7e97f70053bb75fafec48e39ad879a49974b3a24915a308aa708
Date: Wed, 09 Oct 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728434153

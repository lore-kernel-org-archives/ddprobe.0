Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3777920330
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749157795; cv=none; b=qaqdVcpylN8VreE8TnWgkW7F2+AJQ3NqKITA3M62CEQOb+R8dGZSHwFsEYnHuusEOSCOaPw7pNm9Vuwq47dY9OwnKR2+qjE5LTMQ2GPdYVGsKWvifExeb5Qyxs1dLDjVUcJAgBgTKA9yb5hhxUdezIc5wJhnCAwWjtaeD9QHU/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749157795; c=relaxed/simple;
	bh=YZ4YrNq88P8Nv7UgInGglAnmysUFREliF9lk/VJJuxE=;
	h=To:Subject:From:Message-Id:Date; b=hSbgloJiUz/+1UnaNuy5tJaN7E0y3cHgLfO/Z9DNyz/Xz7x8fxT6vpgdKg2zyrP6BGZQ27/sEk4RTdnNB6YdKhVtJJSiUl0uERbmRffOs1SJGwzVVJ5D7lxjSyTAYohlNo1yeBxmMIWUagnIFSGJK7naiqrB4DFOjFR4PtrTRmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e1ALj03W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e1ALj03W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D52C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749157793;
	bh=YZ4YrNq88P8Nv7UgInGglAnmysUFREliF9lk/VJJuxE=;
	h=To:Subject:From:Date:From;
	b=e1ALj03WpoZZcEs6IZ/eaxfk3LdcCgefBFadPXTZr5dGiLrCLaX7aR5S9rM/T7dNh
	 9/qWanzVTOdlqqy8exGHCsbdLZlZzD/3FUcJllvgmDOwYd3VDTPgz8Sj4SHS4ZkIWF
	 nHJ5HrBbbBomBERP+C+RV07GnoLrX1tShVzsBO/KssCr8vKLRtKCF495wkegDC30Nt
	 v5XyoJCyiSeMiWUopRjwZGBwdgyJlTqdl8jD21e7ns4BG7bnUc6KYmLjmpMi1+V8FT
	 kBlQvgfHSw/jSrJWBxMxsjY4avVxwNQgo633qFQiPOeakxHsCbZ6WWLr4+OEipCPAh
	 pxRw9wOcRLBjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904B8C5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174915779358.18354.1736377998446353869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f73a6c2525edea6ca5ad511c05386abcb431b180d8ebcfab8052e13c54fef351
Date: Thu, 05 Jun 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749157793

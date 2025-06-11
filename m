Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2544A0F
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749608394; cv=none; b=AGyA3GKqOv41g1nNeb2D3voAcfGyx+eTJnLYzk4X1QtsMb3gAr/9ZiP9s7/RQFskoGeSueqTRK9exMpyXEcAhOzhswUVQBvU4ZN5960mc+suDNnXuLoVoL79GflFGlEJN3MrJSI25hK0RwB86i1nOLd6vPDrOCLUFHvJs88328k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749608394; c=relaxed/simple;
	bh=30kvOpnGKGpDAQ3nVPDIkKE4hyNZcMnmtvXeY4/bV3c=;
	h=To:Subject:From:Message-Id:Date; b=JkkzZLxcMjZXAMP+wnzwHVxhtOAT9MC1E9aYtmyihI7+O1xApHj2idRYL5FRQ3ZFnozaEaxtQriaKqJSFsYXiScyA0a/Ea54O4wWblFWP7tPv1/7bBZdzhu8gZEii4S3GVVN8jsCkFNy49XX8XWVUvuUAoxpxhCq71aTdyrpEew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Of7jdyyS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Of7jdyyS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42E5C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749608393;
	bh=30kvOpnGKGpDAQ3nVPDIkKE4hyNZcMnmtvXeY4/bV3c=;
	h=To:Subject:From:Date:From;
	b=Of7jdyySpnUgfRYDCzvHAOG+f/DhKs2ybPyqn20YBvD9FPDKAa780IMzVrNBmO9/A
	 tvW1soBihHW4R6GeowEL44tSrY3Svqaclft/3panSOSYRPTiYahZzMVgWSr/hULYbB
	 SR91RxlgYdjDuwcQCsj2+aZVNrfkpdg9v9QAlXigDXJtwMS5T7y0naUiAbOHsl3pUs
	 DCUJ97MPDhcLFEDP4QpZY/hBMsoLesRZdA4aoYQVDzBt+oTq2iOdQqQgFSrURswwni
	 fKbQJkQIVWR42nIwC3Bab2A0TeSKtnUOk1HAkGkZ71evzFz1+fIBZoYK2tf2CHztqu
	 OKbYw/qWjzo3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908E7C677C4
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174960839358.24370.6227766225901398998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cd7563f582989025aaaf9285e4c71e991acd97e8091864bad882c1ec36375fb
Date: Wed, 11 Jun 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749608393

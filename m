Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B8D51CFAF
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 02:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719543263; cv=none; b=PCFDdStYx1ovwXEzLaP5cPFcqQcpKSng05tQgdxl84Q+kKqD1SwEa4mLN9wH+rCBmMFFQ7YXo60AiUCax4BaxMDZXuV3i/NZVfVMD93Kg4UfFSpZz3CnRc4xM7agyQa8l295/lrBc6+By5L7l32sPp34Mwzk5IcRQAlWOF1gEVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719543263; c=relaxed/simple;
	bh=F8sYaJKRqQSYsawVB/FksEfCCN1RmdlUTp+8sQQSQ8I=;
	h=To:Subject:From:Message-Id:Date; b=Rq2CrbjdppiY2xNbYrIAieKLjMFZ0Ymh3HsTfede80QG3CyzctVcxMUMXn1vvfItp3Neux+DvPlTwauBXljDFuvTErE7yDCM/0DTHjzKIgx9Nh5QSkYvz5x92CMAtYZtiV/Ed6H1bmxez+iGrIaJ3L2kKRX6vMUFEqn/LTiTAWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dm7Mls9E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dm7Mls9E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8D0DC32789
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 02:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719543262;
	bh=F8sYaJKRqQSYsawVB/FksEfCCN1RmdlUTp+8sQQSQ8I=;
	h=To:Subject:From:Date:From;
	b=Dm7Mls9E1m0I2A8uc/BZatq+n9uTjqIgA0l41S/+SOxYP6cU4wx1BtaqPIF+BhBXM
	 DoQLGkrfxawWD9Mh1TRknZ2kf285s2jEMjCQ1Ojq3d5CCtv3VzNyoIiUwJB4w5gUiK
	 O49SrdpVPjwQupxC/RJPa1Tv3Hb6iMXsK+ajeikihC7alIfBo/odib681Fwsf7jhzb
	 OsvG4JRv8OBML61W2oHTGr6VLjAIRY4BuvREJ0bKOEamHK9C/s+U00M/HflXPAEl62
	 oImeBTd5wjavIAgDzPxBSt1nnqXsGEa0XJRiEpKsIj0Q9yJCTDUb5w1yozJfENkZ/P
	 0LJgc+KHVOqgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2B94C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 02:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171954326277.9622.3519756107258416735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3a719498b8194963a70908ee109b7dd93c3f1dda205866fcb8f85cacb4d2e13
Date: Fri, 28 Jun 2024 02:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719543262

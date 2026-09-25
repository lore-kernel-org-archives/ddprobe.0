Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3465F3D566A
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 08:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790324434; cv=none; b=tfjtX2C7RPmnQrw8fI9Nx+oYStaY6lJ4Ef1yBjz74CrMnaFcxlnxrrxuiGmmI2sar6Q5nm+IPagjYkBxZXihenl87+I0BSP2kCVbpD0AsCBnCMj5iCUtbbryjQ6WkyowQZ9v0UJGgVS0GBLSlAf4wZ4z3FaZMKMivOSaY1FbAmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790324434; c=relaxed/simple;
	bh=K18ELoqFT2IUKsNhEamNbH8ogBNFMGM5puWm5can02o=;
	h=To:Subject:From:Message-Id:Date; b=rycJLlr8Nl3IMIBcU/aRpdwJ+JrY9LPK0Uq5mtYDD17qREphpRagckilk67COsFI/+0la9tRl68+mwdFvGpLtMt1EdygOeWex2cHzv8r72S5JCkpZeNBsNgV0c6MQgQiHtx7Qyi1FUuOmGWizIQSGd9g2zs3bz5I+gU11v1LtFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T58UP6KS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T58UP6KS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3CD7C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790324433;
	bh=K18ELoqFT2IUKsNhEamNbH8ogBNFMGM5puWm5can02o=;
	h=To:Subject:From:Date:From;
	b=T58UP6KSKBpNvCh5oB6qdHmeTCokwDCvg3lLuTM6ywgz5PnzIqXnVgoOJyJef5nBB
	 QbCPPvdNeV3Uovth7sMK3y+Gnc1lfTIN77osW7NSm76EUeCcYyMshosP6SjduX2Hmv
	 4FR9JHvNAk8+7I+U7QYhM4zktjb6Dr4eok//CmcSYLktMq64VtW9SGBWJScZVY0N/+
	 2y5PYrfNJ8sFWM2vvDFHv3reWQPHc7T7oGMqlyT958CI6p0qxbv1GxiduMi7p5oSro
	 3gKDoNIkTVM2kfP30/En7KAkwqxOZrvyQdGFwnoZR2qrxkUz2SVde7E/p2uZ6q6JTh
	 33rUtMgbPEwVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA79C9830D
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179032443369.14173.1688638971963898696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdbff43a946fc8bb7d98e9e6316d0f641f0dcae7781607efbaba3b2ff7a1b748
Date: Fri, 25 Sep 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790324433

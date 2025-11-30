Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C32E207A0B
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 15:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764517374; cv=none; b=C+jAYQuxBK3Zs58ifBIy3DJ4PsxjjeOJLdbQ6/ptW761PPUUNQvOPKBOUInNZcFNOCBrMA4yHzulfOLFD32GRp1zgB9zMLIUHn2nefkTlvdaLWHpgT8PCb/7j9t1RJHIdGimNEyxvn+dqv1d5l3slU3dwd+DcnhuwjSs3nl4FI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764517374; c=relaxed/simple;
	bh=/65Ul+opmyeX37kWdOQHrWFOlyitEoqvoST5uEoGSDc=;
	h=To:Subject:From:Message-Id:Date; b=FItVzd/lLK+hsGN3FL7jvhcIhGmImLMEQhToH6E2i2k8we6TsKsjUjxL2sqBEBhgJLgqZ+ssDIW2GJ/ZEbgPnNB7A+KbqtofVoo0ogXg4lI+wtcmNTR7DDqYb1TENw+ZbVjvN4md7W8LRla+zFUcSOfdj0BIgzXslS2PJg+JvkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OUMCOaZF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OUMCOaZF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A806BC4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 15:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764517373;
	bh=/65Ul+opmyeX37kWdOQHrWFOlyitEoqvoST5uEoGSDc=;
	h=To:Subject:From:Date:From;
	b=OUMCOaZFCUt+3eGMKI8zKog5JywfIjWNjIiXYRlKxPPB+HBH314K4zCVq7mD6/laC
	 Zo7AVeHutSuy4Dpi6RpQEqDfZP9IatOzTPAm9PCqLg02bpVANAIDOgN44Rm29YRzrT
	 FFe4ASYAKrrcqQvuhVjJIKsFEAW9gOLPQczPhW22KPXN90IVOfsXSU1TX8MGEKzq34
	 fiRtM0PsOK7pJUszUATQiks9jJLb64b/YjaUUgqdO8QMtOe6Nf833gVeIUdq3BmmbR
	 jwS3dvBu4HWyq5jCTDUKJvFB4XnAhsnzf7L/wPQbyqz5K5smH/6VBNn5FbyVzeGIpI
	 S4nchPXHPJtOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F51D116F3
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 15:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176451737358.24852.4386706631317615494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aff20a60ad89357e5150bff08ad96b02bb5453dc297b85d319b3fa689f00f49e
Date: Sun, 30 Nov 2025 15:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764517373

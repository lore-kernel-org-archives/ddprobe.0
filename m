Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 776D52765C3
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 01:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763427714; cv=none; b=kg5Cw6rbTOCVaaQq3VJaFgGKdNwKMVM5uubuyfHnfzeglnvI4RXqbjYBmsQfPGNAT1Z354oxB+UFv84RPxqqerbzvOtRCxHnlnesM0YFMw+fwLSxqMZYizEAJ7L/fzOi+FOn95eTu4VNDZEJoKPjtM3TliY/x969JzLE/bSCfvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763427714; c=relaxed/simple;
	bh=8IFA0u//2tmDEAf8YTjIZv0rnPYI+aNH1YaHCAul9CQ=;
	h=To:Subject:From:Message-Id:Date; b=JoneWDJJo64lrXjMx0OvGTPphdSzeJkbDsnchK3l39dsT2jeoICnI16mpix9iqn1UhZixV0xvt1iSlnA/QY7CUJwSof00jyNisQlKAmE685cAcHTBO/hHJy500h1v9HpOuOn05zrcvPq/dCutZCuQayJiuKtkAWs5gzMtuii9p4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mJS08ZMD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mJS08ZMD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B412FC113D0
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 01:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763427713;
	bh=8IFA0u//2tmDEAf8YTjIZv0rnPYI+aNH1YaHCAul9CQ=;
	h=To:Subject:From:Date:From;
	b=mJS08ZMDnI/9YwZbMPi+WhORiQ3yXKNtxHEamoJv/Nk878C3vraTfPEhyhyy1QE7H
	 TMt+1XPm8aVAM7sr0oXzBhxv8G5DAi2Xu35zxsk7OK6F6PCk7Wi/a0lgDYNmmS2Znk
	 wO25ch79oEqPl7/oaIcM3w4vXH0fplLTAgWDZX6JKMYISDoE+Iun4kMa/UQKMI+MN7
	 3jUJMwEyMVmVg7G8UFMdCsuZtZrBClskXAupzqjq8gwIFwOG2W4AShxPMipyP96XMV
	 Ov8Oo8i2FqE2J6Zx1rHBbV2GWJcQhUvrjvCZvHebo7xuBbrYXeH6mgPp/Est+mOOli
	 gNO5Byku20N1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91845CE8D6B
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 01:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176342771358.18714.5288872508827155381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7691d2dd4740e77a998f933bcd740449414f6ab2a486edfb3e75ebe18a16ea0f
Date: Tue, 18 Nov 2025 01:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763427713

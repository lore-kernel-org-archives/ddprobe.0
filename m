Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 389543BB4A
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761376794; cv=none; b=LctkDrt+RzpRkTYX12/kEVoVo4HRc1pA39LZ5dpLF96jSE/qFmC1cjZASe2C4WDzSlFSswUpUYQtFMLAW6F87/tYWIVDXTcIBYuxOUoy7VrdC5YRGdj/73o1pDbPsBMGTAocQGUAewB8v8PfyoIIIu1pnoY9cQZNcf6oywBkYv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761376794; c=relaxed/simple;
	bh=cbX4X8eNgAlSpW9PUvCyAcRzl7V5HAfv3g1FAxwMLQ8=;
	h=To:Subject:From:Message-Id:Date; b=ebfrE4gNRkF5CI0TMvNE0c5oXSWEaZjAB22fHpDYsS6E2BX550MnmDBeEEQpiH/IL5r1SzXrGpbL7FYX8mLeEe6VLsEyAwMa8psY+e77miewTx4mDxw0A0wLYyxdE3s3e+nz2tmGuIVohp2Zfsr3bGjMq1ejeQkSevNQN86q7m8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=npcqEpqy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="npcqEpqy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFCABC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761376793;
	bh=cbX4X8eNgAlSpW9PUvCyAcRzl7V5HAfv3g1FAxwMLQ8=;
	h=To:Subject:From:Date:From;
	b=npcqEpqyCGEpf2y9ilwPVvPZjJP7S6n1zMGlTyzwu39X9eczIGLmkR7wAk628DqZL
	 3c9hERYh3UR8CrJ17jXTDbbCE/+BWISMCyftcASMOw3G2SdsKvh0G5K4rNsoO2T86I
	 gGgoVU1TYY9MQd71a6iMdEuDna9GR22CCN55QmEvigLA6kICBMFZuP/TD0pbKLk7eH
	 BWutItXpmpy3S96eqawSFa3xQdqysYciEG4OGTA14w9xsNn1AtK7aVfYrgfi38IJxf
	 b2U1l5xtx8TbuVisib9BIiQU0z2+sYjK8SekKwKzBEci6LApJ+F+yUg6A030KMt13q
	 udViCXu1AwcUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 998A6CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176137679359.12029.13268016643820347633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87905a542fea17ce217203f30e1eef7f9c840de3c536970cff9b2e148ac22120
Date: Sat, 25 Oct 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761376793

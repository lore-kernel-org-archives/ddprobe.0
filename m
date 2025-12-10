Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12E1EF9D9
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 00:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765324974; cv=none; b=XSB8yKOCP/hZFbLuK4k7YXXoN/tLXH57kfcsVKrWF7kfJBocAd9c4UyGiXVnPKQKybtMcEdNxX7cQCRtgGQorAK6191nY95+tsW3UmqK10rxer4MdmqS/fkmfBmvXCtD471h7o5/aYHupWnVDTyR2IJ/71AIN38AKAjHu+h1NVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765324974; c=relaxed/simple;
	bh=BAcCNA/1Yxqh2sds/qtzVAy2vE6lAJtpi61c2DApmMQ=;
	h=To:Subject:From:Message-Id:Date; b=b+MecTwopOs6AZcNZP4Sufi4CniRT3TmGaSQtLaDyomJZqGDdER8Xj+BWnJDxcf2b+T4VoOBAiE97ehEl3G0m4sP5SmladeffB4BfdmQ+WDxFBIoQm0Aa6MssMTu2eTTyKCR9axEaLV2gN6KshJMH94hfB9dfadq7NY9z7D8OoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BGdhZrZ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BGdhZrZ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C3DC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 00:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765324973;
	bh=BAcCNA/1Yxqh2sds/qtzVAy2vE6lAJtpi61c2DApmMQ=;
	h=To:Subject:From:Date:From;
	b=BGdhZrZ9grp7+9IQmfZQKLxH/dCWPf0CB5/UUyfJl7s5GGvc0t7dpqyfy+Iv7YWTs
	 ShQJnM0EcJhpvP3C9v/9xR526PyT1HoLYI3+rYZFoy2YvqeHQlRn9lyaufsKNk+E1Y
	 fYmEtViY3OvWV2UDxMtiCCnRkKzN3ZquYZNE+VhZb7wIjeB4+RTxUQVV0BPpgZgB3G
	 i4AEfhxee2kvz3ET1xeg/vyHSQSHvC+vjg/p8Yq2DxwD8bHjynpWuja2bMXzqBeNpR
	 /5ThTaJPwHQvCaxFVi/GQEyRTQHbRxdUuzx44jF/tiJhJ9QeI1gCLnlA33I8DswxEd
	 utsUUYkjm3g3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913B1D3B9B6
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 00:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176532497358.24052.12537248552591884021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84e76c562dc96447d618ebf732cde6b4a0b406e8e2c8bcf1a0d4442bd404336d
Date: Wed, 10 Dec 2025 00:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765324973

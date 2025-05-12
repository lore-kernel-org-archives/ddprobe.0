Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BFB280B
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747030194; cv=none; b=ThzZsya7IYbZ2zN0FE8tFn2ivq9DbHr+nuOvlwD4CjwhZtycJN5NlDeuaYqeCNicxISVbPRmWvjT5YRwBJ3JXDgBq3cLrSbVJ7s4TiAXveLEMFzhsJxqgHIqpse5dszpD6eZpC9iEXQlzaVxeu12ccQaOwmLlaCm3b77N3imBfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747030194; c=relaxed/simple;
	bh=6OvodwfbrlyubwObhxItwWartheo1Lv3zrVUPxTjwd4=;
	h=To:Subject:From:Message-Id:Date; b=ELxHXYRenXg1xfVIlMQxXw2cFAN9jAJFDpec1e1fQ/Ackm72WD5RNLNvujL24LRvvuBJ2nvfWQJkErZOYlbtleaE0kD21txE1TwPZ2DXTuriUdm1fBARFtdFGAOGWcoQfv2k1yt/PjMCwSRSjFngCQSPg2JVKrR/2+hwNqlBDRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NyFdshQA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NyFdshQA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EE8C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747030193;
	bh=6OvodwfbrlyubwObhxItwWartheo1Lv3zrVUPxTjwd4=;
	h=To:Subject:From:Date:From;
	b=NyFdshQAMtNLAd3NFOGky0MMsVr+6Sdf4FvGsakhQYlRV84xt0f720nN0YKNP+ZfR
	 0+LTagQ5t3MzeHCD5MTmhKibGSd5bG5+Ys+Ex2VAQ4Kv0XrmhJx2px4gKYMWsHfkMm
	 /Je+vriOgrdwxm0OuxAxobm5uMBfoc8fwe9jo39fnsu7k8PvEE1EBMAnqkjwCDdLbj
	 Mi95y+FQl1EEhq5QSD/X7QYSV6X8Oq2xHGpJ2fxjwTNQaitlY/pDmXNnv0Mg1jlmbf
	 Q1A6doGhvrMhR7PIaqguoNCoUFgceGDcmN9+bfmqJmy5vBB0HHNXSwS0NLJVy6nu/J
	 CYAepbPB9rNTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAA6C3ABBC
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174703019357.4857.554889382413693834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eda49fd7641b2a646fe0f83bef7b72ace24944329e3ab21958ddceb054e01396
Date: Mon, 12 May 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747030193

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0285C3D3487
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 20:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773432894; cv=none; b=MBU8rAwSya4rKsg1Rlq8wuLyQunjdsltoc6sf09iDIlPMu6/6K22sTFrday5fsMe1Kw/h6mfae4SSOw+ZjPiLkmF9HwlnD+nm7vup6NY3IPiixg+XdLJTfwHu6Kczysu5JT6suT3vgm7xQt60/ufTnQT8gl8r5K0HRi6s062MS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773432894; c=relaxed/simple;
	bh=xJD/UBdfoaJ2/i2rerMzyEFZCLpT3uJGfaPpkmO495U=;
	h=To:Subject:From:Message-Id:Date; b=M79t1/Bz+Ymp0iSm6/oySLsT3XuQuvqWFUXNfYrZak9ZTLAk0uFRFlCqNCB/Ggn6JW0twMJE9jA95uYEqsCqEm6ZOeCwygjC0hcFn75QvcqsPBZ9qEbjORRlgzHbjELVta1lN2sK/wf+jL4GQ6qTKEs0jPqHSzYx1uiRkHlZeSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rcZqUqEe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rcZqUqEe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EB8C19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 20:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773432893;
	bh=xJD/UBdfoaJ2/i2rerMzyEFZCLpT3uJGfaPpkmO495U=;
	h=To:Subject:From:Date:From;
	b=rcZqUqEevbmojQQjeehtGqidZBzD/OnnMI4zSkm9B/kddT46KD4DK1whkYtjwU/dn
	 /mYMeTIkfkmkAFdxqFoU/zVqlDzOqs+VhPigvWqNYwiaCk0LqKNg49pvOtyqcKpyBJ
	 0wB0Jt82agBTOczqeDg2XhefU/NQ2UfU7mdoLT3JWGLs8Zxd3eVCUe7JpR3MkW3aOl
	 9IBYqkxY03wbd30e1OFQyparmqsbNXeobq91vKs1WbWitAOOTHorvcAX+IZGwIQBL9
	 mwVTCC2XG2xwJpahQF6/vFoHVr8tIijmsfOuHFRJHuHQ1MUWNMJ1NGszh15O4nyCkb
	 oC/RgGqL+Lj+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9002D107BCE2
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 20:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177343289358.14379.4934526180401467380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1e14c0ee8446a2acce2f0f27ea4d246890db82e074e1b5a616300128d923ba6
Date: Fri, 13 Mar 2026 20:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773432893

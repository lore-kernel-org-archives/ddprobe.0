Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7E3618C933
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762291793; cv=none; b=jlD26Uq+HrwjQY6HwVb4NR7xaNNZWZIed0nw6VRgeMlmY9fK8xM6nWq6isjrMXCq0r4lY44+TAF9kzm4DOtpAyyfGO4dMDkdtxtwuntnTM+H9SMjD8zPRu9TxMG8ZVrWYlNlBkms/gmWDdUBBsHZ63h3duwlSBo3QPiEK5uk/NQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762291793; c=relaxed/simple;
	bh=8UsY4urYcAwd+Ww8RNd4lHQJVko3JhdNrbUz9/dLp5I=;
	h=To:Subject:From:Message-Id:Date; b=idt4obx/MGub9/FfKqNuTOmM5uh34AjYE4uN6w/uvIvyR+zsIA8DPK7M5zDxAjEwf7Jn18o2aGIbmno7ztxxyC+3E5P6YQjyCrxMSfN9cKHv2t/49lzQe/72uOmZEEFssA6igzSNrC6dZ4WvRxUqmWAmLvnzDkJro6t+dnTvlBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rx8UtH1i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rx8UtH1i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7234C116B1
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762291793;
	bh=8UsY4urYcAwd+Ww8RNd4lHQJVko3JhdNrbUz9/dLp5I=;
	h=To:Subject:From:Date:From;
	b=rx8UtH1iFLzexWpISprujlpIZZD8H2RdNJ070KZbLTqOaiYjd5vVsA+PO11znB0l+
	 zgvFAfxsPrhGxqNDbNpLP63pIq2VD+nA061+HPRrR1JXAj+uBhi1thNDPwS49J66X3
	 J4Ur2LZnG+AxgtxplUSSc/3G49v8tcqm4zGqfILG6KbxQ043JSTS2NqQnMdFensBpa
	 4ocDtrU+LBpIZS2rCZJIJSYpZfBhQ2dofg9zEpju+1dQwHklMsDVweGedW+/Ohqh+w
	 HI66Ay+0sPXp0EzJiTx5IBuDTh8A6aqbsPC10GabERWElLnwHX6s0u3s8AdeDMG0et
	 bHMVi9rgo005w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DDECCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176229179359.3518.12572153776251818106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f80b6f0bc19ec40d2f11dc6011679a1eb0368c1d614294fb3a027112b994a68a
Date: Tue, 04 Nov 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762291793

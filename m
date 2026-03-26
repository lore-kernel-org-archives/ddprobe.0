Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB1B2C3268
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 12:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774529094; cv=none; b=EdKcS0nfvjadRPRD4lotMCX2xkQSKMwC1sArfFVXoQCEqNnXVMyec01cpV7x9rvsE6sY4z65f60kiq7PIMXPpin1IN8UWj1Mu8qBXHHxJQdFgbzq9ZA88OsvoHl3w4p61E0vtR5MhFvhrrDfMwOqc52dYCjVeyOsRqxVQOJHdqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774529094; c=relaxed/simple;
	bh=F695kmbXA2GlgaiIzitZS96D5O6IVDGqK8TGO1abG0s=;
	h=To:Subject:From:Message-Id:Date; b=WpOiBQiF1wSqtKcfkRAhZqUpX8YdUWT8zz8pRFSCM9bY5fxWLhXYhfnMJcOsEp2PSuLEv+njgVWYeilM5nCB42+8XfGJC+iT4VBawDxCnnQwR/+Qcv/OmSnpdYC+njBLh4TS9Pv6fUtX2THFlmnWs6jtK48JXLMBGEaJSTl222A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QBu5BkEn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QBu5BkEn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A960AC116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 12:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774529093;
	bh=F695kmbXA2GlgaiIzitZS96D5O6IVDGqK8TGO1abG0s=;
	h=To:Subject:From:Date:From;
	b=QBu5BkEncWOy7wu6uBDrX/Pesx76JPorWMMPrnxEonkqAVnqYTT8jFD0Ae+MIEYcD
	 puyPMuAJIk2LbhGXvHNktpveqD6J9ZrxeW+UvV5Ak0yCMBGcwumSNxHyxaO1zyHMmN
	 e5HNpS8bQCz61SmtwsvvpZzt0eI3Dc484f45GxW1Ab35keij23xYwqcvuzV34aBhkz
	 keJ2yZpTBfZqb/KKGZHC17HPT4J0nIMCclh+duPbbNNXTCUS010+zApXiZ+QpZc7Ra
	 X9vvuT7sGA/cGj4KnvqrrahoF/YLV3YFDvNZRUxjofummQxqrzhb7BsQ/gFKa8/JgM
	 ZXWJgV4GSAdlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D5210A3D8E
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 12:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177452909358.3018.2701320273198301203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c476aeb031f2c393f12ec23a1ce0226b95de5f013b466f674440bfb42c9c6a1
Date: Thu, 26 Mar 2026 12:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774529093

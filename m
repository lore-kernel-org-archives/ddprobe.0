Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3274526B0AD
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746283194; cv=none; b=VqbH09hooqn1OaXu8d1EQSsdVFAO3mbYpsptTD0H07bySqoLyErGAVOlFMFgU1wUpV2Xd6OGHosihDqkHXH8ae322t4zKEZv5EiIweAfk2qvQs/db96tmwJWhNYJqlKmLKs9pmj22DZV0EpsjMPNWGlVII6dcqU/+0Um0klkle4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746283194; c=relaxed/simple;
	bh=aucgP1lG43ehtZVEFtnMLj02IkspiKY+9QMDgph3n48=;
	h=To:Subject:From:Message-Id:Date; b=g2jpmhzdh3pZx2xZN5vxprDBjCk9g8SF/vuP2K52KostD0pVarYgNcRS6eVbRIclVvY9hUfEyvtTwntYp1J9X5Dk3g1XVFg3DglCgW16n3W30u1Nn+0xi5AzS8JkRT8p9CC2V/QZpzn0GFe/HG85v2m/GYdp28rUexoy7M4EQtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qaz/iSWo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qaz/iSWo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CD97C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746283193;
	bh=aucgP1lG43ehtZVEFtnMLj02IkspiKY+9QMDgph3n48=;
	h=To:Subject:From:Date:From;
	b=Qaz/iSWolhZLEhOGI7pwSNPPDOmIdjhrZzPy3LFO4mRBb/SaqwRVQvekW/s0rVsGp
	 VEhRdc8Q+DpgCakeoqbW6+D5hcLyyKLN1ozvv/+KFf8LqxXJD/alUWMvMLVko8rfef
	 G4ilg3EmE0r7ze6AjBLs5wtqWjfE1hoEdGfVYNZara27mnKxZr9oKj9RApJKOk+yeC
	 pEU0KnkiXsvbChHjusC8dDaS1rNLFxwuu0JNl92LxObLU/r97qQ6fBBcbwiOjJ1r7r
	 XF/IkW0fL0cae4Qu/377XgFEB+Ii/Es2jjqepD2xuH6AbJbmEhO8eY/XsfKetn8bFp
	 CCB3GeyCxJNoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D7C3C369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174628319357.4066.1376154231816095255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9f1402be09504f6bd68239963ef3dd981366f4ed166314d9477faafbec3891c
Date: Sat, 03 May 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746283193

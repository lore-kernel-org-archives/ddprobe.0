Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 890912F7EF5
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 07:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780383874; cv=none; b=oni8We1J+c3ypq56OkZE1aRZFwT4m6T+RGtZ4hGSDG9KwTxjPeDLP4IO1halFs0zkpFFCr9Lujl7I5prF238l1Y7I3j0jqsfNl0v+83wf/KKuFKdKn0X7Z6hDsArArPWfL2DTxQLSFvKoifhQjU/cy1rE6H69TQZoiDog3d01Ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780383874; c=relaxed/simple;
	bh=QiMpRer4Z1d8hC+4pAZuby7VsdzDdtAAFMJei96UwM4=;
	h=To:Subject:From:Message-Id:Date; b=LKvN5xYyFZ4zbHUWWqvkfiQOzYZStdu+cYtiXfeA/ASJN7cMN2PoqSuTS7R+Y9NfksOxSZdnsjgU+T6SQD2zwhIK4m+QuhgHmt6H55EH312YcqhcrzqOVS4XDEjaTjUuw/BJ5VwcJhekFUWK6pRQuf6UyfDhUHsgvrRxREbumvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VKiSt009; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VKiSt009"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 25079C2BCC4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 07:04:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780383874;
	bh=QiMpRer4Z1d8hC+4pAZuby7VsdzDdtAAFMJei96UwM4=;
	h=To:Subject:From:Date:From;
	b=VKiSt0091+T6OyJSjH/wjDNUZbC5kMikTnKZrRXfX4BvVWkYLlG6Bb1Zmy88RIxBs
	 mAiFNrEG3tV3CLHR974NEVrTGaCNgJyG9ebTk4r04taasBeswZH5nJ5sr2tJeHxzTZ
	 i0WCaZOinoBRrES18Gxy+yGxToEkW5MO7imb/5tYQ+Jqyrd9C6VDv3gOppImQK3ZLl
	 PE03JkKmCiOjYbUS8VS+Y9GKV+ZdshSpJf7JiGfs8kYarTd/TclHqfvrQeLQyYJ+b0
	 xiPzqgZ+mzjN5VPQpEuXyYjVavHy3B5CIsN/jjHgMEqdiQ/YT7rFLv60tqFTU8xPic
	 pVys33/5ENaNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE1BBCD6E4A
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 07:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178038387389.18508.5955183281083681405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6ac2a18d99e64f5c98e2df4ab4eb8a9398abab98ee1cc1c60e369235a9cd6bb
Date: Tue, 02 Jun 2026 07:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780383873

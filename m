Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD9940DFD7
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 14:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776609454; cv=none; b=UayVQvaIcmLWxjp7Q4Nh2QUre+GApKHBIqq5nNcYsX/u0HIea6w7RUQD9ynfyT9hW0yDpDjBZKnii7gypR+JLvyD1K4rtt5OyfwR2geYb3YyDcKo4rI1Z5097JhOr9tfpyra+bwwyNON25WbEYsTsOTmh2b+rcvn6Wau7oAh/eM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776609454; c=relaxed/simple;
	bh=8HhwAwiT3fvGsgKQBJSCPMMDNathYu42B5Es1KRYye4=;
	h=To:Subject:From:Message-Id:Date; b=aMBSZFWP2Nhb49/dE8MdSX3tUwetVfix0cS5b+9+PyJ8hfpYG3DZGZbEUJJYBnZB3CgpNmBGT8cswtInH+jUErGlFVhey3QsS4+PNlENWRqVQkRs9XxM43++6SMtA0GGMK1683G3zGr2CKqNOCHxlE3BfuJOxU8PitxO4nlRzVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iHLmy1IP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iHLmy1IP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C11B1C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 14:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776609453;
	bh=8HhwAwiT3fvGsgKQBJSCPMMDNathYu42B5Es1KRYye4=;
	h=To:Subject:From:Date:From;
	b=iHLmy1IPlrvAwd5ANpyr36refPzTZ42xOl65Qw90QMV+60VFaY317KuTK+pe6JWtU
	 SqGxns3HILrU/DJVe7YEbMuNlaJL/CdRUwmoew/ZFNUsSjgrxVcRDmgJNFcRRfHGWM
	 4ASERKbDccpP0WvxT1ybHvn8s5MqgYDt+ewbqWn/aUDnkELEWWOPX9g/l935DuCbsY
	 UIciOQ3sTwJo63XyO8RSAcjyUa+EUUmaEdZeFhEWkhMvSljFSs+AJ5IcSqd5N8cNDt
	 Ui4AULEmmzCJq6v9xhYAoiWVkUNIo5kqNRQKoI2JhFem8dDgKATvRlxalzSNPA45YM
	 WJFplPiFLHEhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC06EA719C
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 14:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177660945368.13807.12871507023705787196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c28eac237ed344083971ca86b11e5738181b396691c79c5b181425bf6e1c178
Date: Sun, 19 Apr 2026 14:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776609453

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13B7B1F542E
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757249394; cv=none; b=COhrnN0cWWkUb2Nw4XZORMmI1e6o4obxTWolt0NLflusWB9mwUI7vC+dF+1XULfd7kcMSubLFTkC2yyjxUkTkh+BPOd8Iiz0Z8CklGBiNJllEhvFJyv7ugQXojs3F+4edWG2g1vXHzW9TvOX4scJb0rM+ed0M/nmaWU7y//sOhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757249394; c=relaxed/simple;
	bh=17KFB5prLBL9V3iQoH5aFdoZTypaJkygRKmnShaYMdU=;
	h=To:Subject:From:Message-Id:Date; b=q4Unlr2s3C0Srj6uzoXzwDmKxn5h3q34+9hEU2/BruD/Zg335h4ij7zfUKiJDDCkP0lIAF5COTdc+r9CaNDzEmIktEtpns2I7DRZwJOTv4Oi8bk8gBY+cUOtNBB8gb74Jk/V746O78mxbLhlyIjASNGRiyBVwxOb2xgYwO/A8vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pzAQOjvJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pzAQOjvJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF02C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757249393;
	bh=17KFB5prLBL9V3iQoH5aFdoZTypaJkygRKmnShaYMdU=;
	h=To:Subject:From:Date:From;
	b=pzAQOjvJnULvtfrfICDa2VA5JYiXV+dbKrhQaP0z/8BRhzUAj0F8kCGNuzxc18Go/
	 BdvcMh/30Vq4riKbgdyvSB77qF+YDlCWvAjG0/PLoAKEO1xvtQkauiHtK+WghzZ7++
	 MI4bmd01OTzuFlB7zL1S2LJQ4vD6lSJXmwILRQem32awBCHeIvjov0kscjkkx4zqV3
	 L4browX5LOMPX3ffHqL8VD5oIamrNGicaBHphy9PQJU+xv2qEKO67KXrhmyvCNpHOZ
	 Q7aLgaBliknuymOqLL8e+8FicbfFUUBmU3bIkGhO5Ru37BFO16EehJTWEnL3OGwfr4
	 rhTnTH6Qlw29Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D46CA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175724939357.30600.12654681272321499709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a13c6846ab04c235d92b992daa857faf65c5a8cf7617e4660697416ebbc237b0
Date: Sun, 07 Sep 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757249393

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B7A413A272
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 08:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718698763; cv=none; b=X8C1MxUqM3NZM3W7P9XCBo8GNkouC5GTuf2B8/b9oG0qQNqCTd1ZDwTyy+bGL45+3jkXmkXRJZEFmjgSLxEBiWsEmodteY9/zTPXLep80ygCy81mmyTslxvzu2Iq+sNSgtvKaFdrDkE6/ecQMzeXj7K5f1jL/WsFxt3kxbB/Jxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718698763; c=relaxed/simple;
	bh=o74CbWzz2x7qWJ7mwx952SLzwesoX8+hTXOwfktJm9s=;
	h=To:Subject:From:Message-Id:Date; b=b4YYyxFT3myras2JZxJnAzITVv+9oAseXEDJm6YNzMvKMKxgmYnVfUJEe43KjciP03LHavTOMPEpGu/5XT/1vUq8O12fD//fMHKIsGyyVd4GsXuwWYn4ddvly3kT3GoY26SY0nEo7lK8mXaQTcIE0x5LaodNW/poM2Whuvpigak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QXMLT4KP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QXMLT4KP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3D1BC3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 08:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718698762;
	bh=o74CbWzz2x7qWJ7mwx952SLzwesoX8+hTXOwfktJm9s=;
	h=To:Subject:From:Date:From;
	b=QXMLT4KPLnuQBEZwJo2t3OMfOAP8e7OONGFIaVrCbQTMhEpdq8+dJOlEW6aLI4yT2
	 zqs2kzNAHP4c50RzlUmvkZd5sonNgyB+zWa36nL6Bvfx7jmyIuOtrdDMdwnvQPgrWk
	 0LhgD5GzOccgve+QESrvfPGcfuN0diCEkfYOEpUHgKj3CkGLY+r6yY/Ps45P22ditd
	 JOvs1K2qS5YEXm43CJMLA+EAndEbh1MxEoRHBtkLh7kexEw48iLNzhdjSCWXz+bBfC
	 HZ5cILTNXR4TtG8h/hO9VQ4uZBgX+69+crNptsy74TjGZs5XEeOGgRHBdXS22RYeHC
	 /WT9pwwtUNbtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0C04C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 08:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171869876277.11145.6680583522212703995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 384bdf3ed5d26b5bc132e85d6360520c618f8ca05d9d6740b3e7f167b93552de
Date: Tue, 18 Jun 2024 08:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718698762

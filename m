Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6DF38657E
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785183635; cv=none; b=Fg9CyVl7GozCHQx7jd0lu306NGzjM2th2QxDyh0Xm+cjI3jGgd7n74Ye9oiHNGxJhLjbmKxqw0kXlhWA7TWtu+8J/+40I4KbgeJofHx1iLOkDeHyrsGnQiAVRvIhhOoUC+hTObeYg/J85yOAC5FkECVaj1s18ASJ2CLyyGRt0LY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785183635; c=relaxed/simple;
	bh=31Ovdpbwvuf6VUW3KKgdk5o5GvELOaSmxAI/xGpIgw0=;
	h=To:Subject:From:Message-Id:Date; b=tNFKivhECvSh4KvSGNayV2IvRfrzb3hai2dCWYFEhdjH9BKvmbL+y3G/0iRUuQC3p1HERf2odhkSX/Bz8o8RYfhwm3l4rPN8zZaVJSdcqQzjl92rCJbw5Eytnnf5Uh5MlKzhVA9vy5NE/++cPQVo5ei5nYFOmSEFLBD/70nZ2K8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DLqeK0OF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DLqeK0OF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD3BDC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785183633;
	bh=31Ovdpbwvuf6VUW3KKgdk5o5GvELOaSmxAI/xGpIgw0=;
	h=To:Subject:From:Date:From;
	b=DLqeK0OFBpBfJRnZ40a7e6ivxD8PKKkvYGRw8DPPouzXajgVmbEYI7M1pMj3l5qxG
	 VEEdWSEp6D2hgso0CkcdVZsg19IQgX0J/hvph6UfXQjkder3OFSAs9UYxafGTIQChe
	 Oprz6RmHjFu8X+/mbap0RP1wl981sDxPdgdUXaB9WGvYMf614onE1DqwmvETAp6EVO
	 Xe1ganItOgwihEvrsS9mWCyZ85VyYX4jBB4iCpMDK4HB4S3qRXDAMHnVrhyIo7Z5ih
	 TQ7AALm/hUqWBRuLN65T0DMYiFYpKjw8lMfQZgzfyMKFBCnEdlMgq5A+xJg1tk96LF
	 /7/EHCxZkB1ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9701C531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178518363368.27269.15206916937352532020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8086be30ae1ddb614244e12de8b1fdb7d922512a49f31a63414384f32a6ce04
Date: Mon, 27 Jul 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785183633

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25035D520
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724897154; cv=none; b=l/oIWW9A4IHQPCDgoejM8fkTM/t01FwKT8jc7Qc8HyG/kjarc5FGIFTuMHcubjKhmPE/K4ercQrcXLA+ch8yi5Yju0s5NV7lHMAJK3COApnwidNjFc4Qw1c7MQZT71z9GfAzv3MJFhHy9wyg+tTKs31ocFurUToFoTWrqaGOJts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724897154; c=relaxed/simple;
	bh=TAXfQOQjtsS3HUEuh6cWk6bYVRVkpF2vIOJmgudolro=;
	h=To:Subject:From:Message-Id:Date; b=gNcg9wf95ZoPxhjJ0/PHnGGjyA6g7hBguAnzHVnWY0r7a4/q6bQrzFzYLP8Zshsp7YRCbs+4OjG5av4EHeQu7abxpppfVzfKxEBTQzz2oN5WU4d21yK/s3s7kGZIAaervtaaCJJz/v4ungesSHRJ8A7FA3CCpASZp+xRSvdA248=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jvSsc1g7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jvSsc1g7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B501BC4CEC0
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724897153;
	bh=TAXfQOQjtsS3HUEuh6cWk6bYVRVkpF2vIOJmgudolro=;
	h=To:Subject:From:Date:From;
	b=jvSsc1g7GHafO9x/JdSS5eSg/0Fel04KEheGhnXwVFmvSJVtlXN9ynHAzwfpXp0ro
	 mnegvJZZ8NNkZbnFqqbYYayJP9ToqywSYDhFM83nSsu1f6Knk8kYulqwIQQyrZnzJS
	 oiXMyrSA9BugC8eo9E6c6WnN6Z23gVf8fWovbsrOyl9jBjJMSuWE5BqtNJkzHkkUOL
	 ifO1pEpny2mP1csGl9/6JILP4jU07EKgXU0SflKmPsg+oUnvXRrff6HN7P/h/p+aSQ
	 p+8CGBxdveCfk/UUmsFD7uIWXSkhoK5UlIOSq4A01ntKnWeUR+VL/8v78KZkf0c0+Z
	 HnSz7mfpKrvig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A19EBC7115D
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172489715361.26394.16078835287955523732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62b06067ec7ab6b3871be3db5d015cf5b4ff76f18fde683aa2eaa44a8cd40943
Date: Thu, 29 Aug 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724897153

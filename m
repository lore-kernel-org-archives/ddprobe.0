Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D82817B418
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789180234; cv=none; b=BEkl3uMKA3IKZUPOjZtZfg7WkGwi9Bg+u98sFcHuJ8OhUw0k4M/muyCGVmihzNTzLpbSWXNydaOCwGjvUkfMDKYfACULIyALk5x89888Du+Xd6vntO4jzib/EAJNNWoN5Ua8bXszGU3rE7bQn9Av6PqM0/0fXXpNlbkKaVk/GWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789180234; c=relaxed/simple;
	bh=UYC0t5Cm49zu6k+gE2uLLD51aDFPAxkMHPioif/X9AM=;
	h=To:Subject:From:Message-Id:Date; b=X/rdf3MG7zM/3HfR+07nRE6BkuugHSPS9D1KZ4ShcooPCrQDwGM3Y9uwwMGj4fHP9/R9V65RDbg7HU6gpNElq/D+EV97l9elLY5TkN8xwhyQu2c5f4xaCKD4UGAlrGy3ii/OvRVQFkQLzetEcZ7KKCXXPWMyMJ9s06Zh5RLzorE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vi7pO/YT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vi7pO/YT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C45C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789180233;
	bh=UYC0t5Cm49zu6k+gE2uLLD51aDFPAxkMHPioif/X9AM=;
	h=To:Subject:From:Date:From;
	b=Vi7pO/YT0cF5zFqm5oytVVmoiqvxD7puBXf5TkKnieLsIVJbIO+RrQTOZICcoumbe
	 5DsVS+dpQmOrl3r/VQd1w6dSSfDuDDOUAlb2qMW4gtqNDLHyPeUXJmXcHr8aQF1S8D
	 CYrbf1gm7NHapSc5/nn0MT5tNdDvCf2EV5SS8Lt65RKX2QtPvQxbylJltB7TFwSaEy
	 SfKt3Ujqp8ThKKZWw1UQ9tZXnWt7QsfAmBY8mbd00rXRZgZraOGCoH8PYUA1fsOh8h
	 WfsSy8QN1fy6qowqnPV2fKcu8xhCXINtvjzbCmkCzhcNt4bFlKxJse8fo1oUs4USJK
	 9HTThbQDth/ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEBFCC88E50
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178918023368.2573.2819139679795130072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9c62bc66acb171a21eaa53bab01e5678511dd9e7c46b0c41eb261fb0266eeb2
Date: Sat, 12 Sep 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789180233

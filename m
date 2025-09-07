Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F57B27CB35
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757258994; cv=none; b=CyyQ+ZGnJqzkveDkyRykJt0t3BE5+zNZBusSbVv1rDSJUK9awK3HGCBH+QdS9QGGUkTOoZyPcM80hdD+kLzrFbEVoyY9J8V+mNyTBVD4F/UUaHyndUmJ2dNVuQEJV1018qbKQT9Q5B9EirFn6/jHW50a1rz9EAexHfLXxoxt9hQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757258994; c=relaxed/simple;
	bh=H/D31OX6LM3Fr1iJYlcpxvXqsWM+T/s6N8B6dfaTZNE=;
	h=To:Subject:From:Message-Id:Date; b=fobsaqIfzsOkbu0kFQqQXyrFhaVtRctUrO3UgB5PR9l5D+yikOB1dRSE3GV2Yv/F7ANlmB8oLfHaYVT7TJEAb2M+rCgPodT94NtXxPAq3mzSehy03ta+m/wOSwKJttt1NcS+2BSDzcFzvJUfK023AWcyiFwiw9pScB/PuJbh8W0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d0jDuvTx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d0jDuvTx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6112C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757258993;
	bh=H/D31OX6LM3Fr1iJYlcpxvXqsWM+T/s6N8B6dfaTZNE=;
	h=To:Subject:From:Date:From;
	b=d0jDuvTxpz+0Igf4DhYui+OGevTZUNpxTys0nCqDTT6o8+a47fCxIcV6NzXVFC0WT
	 0dbWlG92kFmBxZ4B5lMFTyWFsOPpJH0zOspMNuLuDdqldHne+q1bwmIYAOrJGcb3d5
	 MT3YB6AvUOAV34UmBupXBMRav1eTP3B6ALkRrYtBvOyWOlmNnX2M9/UOeEXuNE83l8
	 LIy5FFrAGojOhbyTX4WIlnrBB8btNr7biXRpFBK4fbDFIwfb12NBCGhy5IJ+bE+SfG
	 YtilHw6PJsy6jkJxjvyLyaQn00R3kyPpxiy0ZERoMb55QZg3Fh16Q6bAyn913jcbbc
	 93tSlsneoBt1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945B6CA101F
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175725899357.30183.17793269499562917124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eeb703673ed2998f07235b38e039f8cb3ca4c07f79839f5a2eaeeae0af007816
Date: Sun, 07 Sep 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757258993

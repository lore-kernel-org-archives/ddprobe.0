Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AC79211C
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755302994; cv=none; b=mFS2QPPyAKrji/+zuMXiCq1OTFWIUxiXjPLf3RN11qF9ahqH+3JgcPwInKchRQFlRkb/6ixfS0giS4g+CECWKOWbaVTm/iGJNEQPRFJD9f7qYzPsrCC7f1ixBBN+pc6hjAevIrc+AKZ/I3xxs86JzggumT6wG9HnPeJsJmZ/dKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755302994; c=relaxed/simple;
	bh=ti7Ew/CJLF45ofcuOqJMPRiPN2TwXLptGQ1Lh+FvDBk=;
	h=To:Subject:From:Message-Id:Date; b=RFGGbqQXeZbgRtl3J6Wo+BQwm5f11KRqFcrR2whjNjUC5qxZz8F2Zvoah+8liBviyYLp0GivYpEQNStnlH/fZgUJkfQXqiI8TJymDMG+4fnRmSEIgIQYutcK9mTWWI0YNKZpln3+SRY2aRdDOxNVGeraUfP8IZPpuI994fRxg1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=okPO+77q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="okPO+77q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13D7C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755302993;
	bh=ti7Ew/CJLF45ofcuOqJMPRiPN2TwXLptGQ1Lh+FvDBk=;
	h=To:Subject:From:Date:From;
	b=okPO+77qZ3JGeE8DgvUgF1gQhQdlj6pQfM4sWsx1FyUAknGAuTzZdO0FgGQLXQEIJ
	 4FAm+t3D8eYiOB3geTXWGskv+LwsLCI63C7CyzcrkgomGuxO033O/POHbJUSod1gcB
	 sbYFSrUeAbvbDLK3OUsk8xHbKHjN3p9XJG718p/G7B3g+5nRF6hyGQ0Rlbo7rGCbYn
	 uFdszkWCajRTVxsAEn3Q7eC0n5sgaBq1oF6ahfXGuCkLSRR1H8zDr4axKHNn1mosG+
	 75T+fWifANi/6xna7Vs0j/LSUHqrgNE4IbV5E8D7qZFRbGGx160/wLTK4WGi6rnzsW
	 8ufgS17JYQjIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F33ECA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175530299357.26128.14988157762573558406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b87ececcb0f7cf03c9c9e4b207553c98d7892d3287e704a5dc3fd1fb5cff7aee
Date: Sat, 16 Aug 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755302993

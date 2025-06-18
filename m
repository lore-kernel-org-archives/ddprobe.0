Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132FF2DBF45
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750248594; cv=none; b=B8no+ADUEOeoDhXxbzhyTc9EWrU1IciwpjbWXVoaQd4ED6yX+MN21H31RgtdWEklMw3ks7M9b5WShspfrRnSLvMf81p2TJsK958TRWI3Mkg0s6N9nN2Ix6yh/MQAYbUVrpygiZc3C2owanpiZ+mPN94ArVvmshuaTV3m0MAuxXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750248594; c=relaxed/simple;
	bh=6K4noGAoVG+gpjLdota18lh5VDJjf/oVqrLiFhuHmQM=;
	h=To:Subject:From:Message-Id:Date; b=FTMeAta49cdnicWuntbaWDlYo6T6vw7NIO413HU/vrRx2DbqmW3HkYMSSIwbpW7bWoOYTRaMrdXWgJK8p17hC3+KLNSgxVonN7Ga+bhQ/lUr6t7NxfmhncMmKlu7WjRuB46JjPdwIiUCvrU7lVHe7QCLnQjxqMhZpBTNtL/dnJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RGZR/bf3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RGZR/bf3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37EEC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750248593;
	bh=6K4noGAoVG+gpjLdota18lh5VDJjf/oVqrLiFhuHmQM=;
	h=To:Subject:From:Date:From;
	b=RGZR/bf3VdWcZ6MiN3n+Pm1Gb+5HbMJcgWg6cY3T7mf8ycWWzG0p+1WF/rYI+NpHd
	 6pjoRm9ZIuyj9ceu5ueQ8AqmK0p9dFU4iycWaPUYR0tbr0wocPef9a8PWm7KEu/MNy
	 CEf5wj12jGIlNA3mBObRRkO05sB0AphPnGXqdg7ABtxYL91g+uNGYUDYIU7gBPjgXe
	 r9tmQ9JFizfI+D+Ur7tbZM4m2mWrhGeVc62bgO5aNSOBDZxTwC0y3+ZwE3lxA3FBbP
	 BBfSnILEw8AG2/MZJmEdMcq8LFTkLOqPcMiXtpT4fofeYTOl4JtCKbXthlwqmi4tGh
	 T4dYBYiQenbEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9057BC7115A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175024859358.16032.42176792623850285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f73fffd94193f6c3f866d37b995b36a23f7093e6510990c5df240f51d2911e5
Date: Wed, 18 Jun 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750248593

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A1A62FBDF4
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760112594; cv=none; b=Kxx5E3BCTYw+VyQXl0+ndaV/1nZc1JVQ662+9SRdaUkqyXEWti/OGWFsgcRe2hlfK1wjvWcywG0ZDZtZVLRBOAYU6NNgX9wsucqppLFInjiRB8TQFIQ+KMUlY+tQlA9lVhsdjPCiwauNfWLONUbY3XP2ZAaDUvxTfPNQj2g3lJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760112594; c=relaxed/simple;
	bh=lefUOhuz64fQfWTNoZRHU6btYatZz9iTFWsOPZXzMbs=;
	h=To:Subject:From:Message-Id:Date; b=I4h7CKyd+5hvcOUPtSMmucdxbU6hiQ/+VNLarcv/X1YnDKa7cR/cv33NBgBczNNfPM1TZ6tzYX3Zl4eo+jtkARxZZLaNHjf1DOatc9JQW9J5yczTnCyeozuiZ8EZkmPZi0/DANrQY/OIfRzNDP3XhEk7mJSxtxYKwrouMJW+UbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a7D6m7dT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a7D6m7dT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A080FC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760112593;
	bh=lefUOhuz64fQfWTNoZRHU6btYatZz9iTFWsOPZXzMbs=;
	h=To:Subject:From:Date:From;
	b=a7D6m7dTV3v+MXANcwtZ/B6Pa3nf/8djiR1MJ2/KtMLY/amPTZH045x1nkfaOVwb1
	 w/+eUV3THw/R4Y1xH87zSEufbv2pezHmU2MFgVHsfbts3WheVgwih2UudYCuZNOLLL
	 OCbhzMH5FiioxUeApzoQsogT/3ETaSQq1vGGGu8upB7TBjEItoISxUAOxc3uNWrGxb
	 UfCgCNpfvY7FWlf9JKpQ+GUMO+YlScMWIVz9Tej5SbLGi65aUWiMfqPhAgNFqD69tL
	 8FlBtowwGutt8hO5qkYkGFRRJxYzUOy5DIsQj48HhjXTkcyfMhMxe97Cd5fYcI2nC+
	 hXjKBamNxKBQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92301CCA476
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176011259358.11624.9180520812827991879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93fcdeaaff18c3e18623a47f2c8a1d3402d8fd56275ea0734b61ee246eafcc3d
Date: Fri, 10 Oct 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760112593

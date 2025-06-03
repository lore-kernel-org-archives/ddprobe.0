Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6123A8821
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748923194; cv=none; b=V3Jk4MADz74bq8ZN/6BHgMORaxkiCBOQh/CzSmnny9dqmYN8/5S3wgX7h7vU38nxwzyDm9m5iVsWw/33JawW4n8C8xNUQlNdT8uaDZe1REOw4CiosLMfxUw5DVBTZ5SF8f9uzm+vtjjYKWO5H850sK0nm9YxJ2lYKaxYQJUSMWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748923194; c=relaxed/simple;
	bh=eM5lZy8LzR5YW2TtT19hgXsV50uqM6O8UVOWgi04tmc=;
	h=To:Subject:From:Message-Id:Date; b=tehdBWFTo07OWuRG1/WWPpf92tFk+MAhvI+i4QjOPyoyz4KzgDLIhx2rWeo3kf6ZMxS1Sw+8IidCUdDhHfFX445Nj+gRFVYkztngOSp9Ku+bzzHjksRa9EXJrF5XLnrZc/LumWBNYgjigCpJlzGo4hV+g+JVqw8D7TR3tN3yCGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CuLXereI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CuLXereI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B17EBC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748923193;
	bh=eM5lZy8LzR5YW2TtT19hgXsV50uqM6O8UVOWgi04tmc=;
	h=To:Subject:From:Date:From;
	b=CuLXereIJT1KtC6GCYqwHz0Hq1MwAe/cuhV7J8Uxi+7MpkqtjXyH/jDQ6GmoeIj2A
	 o8JmVE+tOmEOeqrDjPFk9QEKZu5cs61cRIf1ND2icU4QVP5zKnBMDS/zGNnQx2mJMC
	 fbGQbkRV+1ejX/SigX864Y4Yqzm93C3e4sL6MMljuRZmcqAa82hiUrwYrTESiE70oX
	 tHDxzmwWIV0Go3A7cEng9kbZAXOp+v3Q5uYiX67Q+holNJjiA1+XjTdNB4aGpj1pMs
	 vTV4caWoua5vsND5nb24KdtFIRhIRPHuN75Z64iELoWa0P7kZl3gH73BLRgkcaXm6r
	 uUEivKychrjZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9685FC5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174892319359.31811.6180952599871000748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 234c0384b1a9371a81f5c699d1ec9124a2c9f031e92458249319e1e1c6474ba2
Date: Tue, 03 Jun 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748923193

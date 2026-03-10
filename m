Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07FC63E5EF5
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 07:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773127494; cv=none; b=Raf9lLq35rDuYCGSkccnADNJ0ofvUlsV5UTrvR335JipR5icxLzJqIhhlaagl0deXMPAkdZoLNqlcEXLsWm/eTasptKNrQ5tbQG3G7VyCW/AAhZkEc+x18G4yGEmUKbK2r4L4/udQXPyqNFN5l4j6jaWN48mY1Gz0152FFx2nDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773127494; c=relaxed/simple;
	bh=zorjQgQDXVpcVM6dlFLnSCDMVBqZHxeiN+hvdtaChSk=;
	h=To:Subject:From:Message-Id:Date; b=nLNlDF3hFpT+M2UsdMIq9TsWRPEzmCDYPnAStMhTDwIY+vB7I7tmZzgFx5s3WDkphBba2tvt6v8HTGFP1FFVsmQFkx+I8DtosAsMbrGZ46BPzHIGUxGNQos6xf3BOwqgcfUhaakUUY63u4DdAJ2iauXRpb0sOKxpvP7SWWvPmug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mwo4kqmb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mwo4kqmb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1891C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 07:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773127493;
	bh=zorjQgQDXVpcVM6dlFLnSCDMVBqZHxeiN+hvdtaChSk=;
	h=To:Subject:From:Date:From;
	b=Mwo4kqmb6pQcVqKf5fnOTSpeTRbqBxSifK28PVTuyCg/eHr1KNLJtdukMy43mRbwj
	 wgHEk7XWY4rFIg0vqdvZ3AvMyUIWgQVYxXNWuCeFxDq/OuONO5YsJOyWPhwHD4Mpbe
	 rQn7T/UWwJadKvPZ+eLyM0qBMpT61pJ8RHfvtD15Y6Xx9Yogs6qWPT+EGY8rAf6ZE3
	 c/4XzdDvRQKZUOs60hX9JjQfYf9IUN2yjLG9XKb6qag2qpSHUNUQwg31XyTwwfSGAu
	 PuKyVREbA8n6bkqe+OrSM99zIJaI7bebgMJvDhp4mScosPi4d/BnLDAsEeTZY8vP/m
	 uhSaNX9C82bsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900CCFCC9D5
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 07:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177312749358.7241.11182806576450564143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 960191680d3f7dc585757f0d65fb09a141d2fd74eef9b3c09d1d4d257a7000e4
Date: Tue, 10 Mar 2026 07:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773127493

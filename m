Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D233257D
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732352754; cv=none; b=Ae1eM0tGKb3aRWKeFUjpAD8nkHNchMkvk1fjoQis3Cmpch0f5LM9LmpjZw6LlfqZyFc8EOVxDYO0xXNG9RGZQ6ZsHDertDlFFmE7zPt4FaNe5EvyJKbBTLSxxaqX5FDS6ECSaPUEGu6bgnuhB2mYakJ1lDMoy475obUxvOzFyBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732352754; c=relaxed/simple;
	bh=+wFRUIoJ5a4qSCf86s2HA++0mkJRgRqdK6E4dbLTnOA=;
	h=To:Subject:From:Message-Id:Date; b=B7MXbjZ75dRS3RUN0RnTzc+zQ6bqeDAQrARs5/SfEBIldbHFGE6letGOMZ6dNLewu5RkoFGABv1WiHvMxC6cYojbHLUpq/o4PV/74k0lAnqDNRdqeMmAiVfI4BHvgNxiQdNtvNYNDRaVUe2jSyRwdcLcApjQ7EThIYzhHHGJlp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BVy7djAe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BVy7djAe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC319C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732352753;
	bh=+wFRUIoJ5a4qSCf86s2HA++0mkJRgRqdK6E4dbLTnOA=;
	h=To:Subject:From:Date:From;
	b=BVy7djAecN/jKN4BqdzIXaSjjXJL72yXsETusT7z2irNk7Q8i82KBlxvOzqZEnz//
	 jOdmqFt/pmhWhi0EDJe2MEgP8kMdUlxkEzXf5EPT2UV5wJq/UOzQ6kF5XdVsPLA4b/
	 mFs7siMfcDL8bQn8qKyV5ExBx4ihIl4udXbx/QvCju/H1TD9iljglsNwHsuRA24aRc
	 tjvOkACATH4pAF7YoE6AwpWWNtamQX11m+ZDfhHW/K6pq/SEdLVYa48Rks+n6sFuIm
	 cdSgRfMg2YT0JNjsGDa6ZeyXmqRMMHH9h+dQAWc5UYj+IkWlLKfWZRd1KqZK/H+zBJ
	 0Ct9/2uu8wq5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95855E6ADE8
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173235275360.7563.13234819092143131492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a29f236e55f208d397cf212f269b235e76845242ee1c7bda96b9cc666a2176ff
Date: Sat, 23 Nov 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732352753

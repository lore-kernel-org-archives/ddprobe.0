Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D12639FCE
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748201994; cv=none; b=GQpI/5pEr8KKYrYOGnfYMZ22usXZ5peHNZh6hUp+901zh1H3UvKlE2zRv89AcJLPtF0YsIC9oB6RNaeIb80nBxbU8DOHbv96+d8rILrjbGhbPO5PkbsGeUP7cQArIlPRisOh1NSkraLHSPMlgX6f7U5nvRro2sgpb1GRTpdetUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748201994; c=relaxed/simple;
	bh=Cd4pjIcqB7nFC8gwpk815nT8QybVZOqKq4cJ7zo64EQ=;
	h=To:Subject:From:Message-Id:Date; b=oA8fg+0YLMadINZ70ZpWWRnlW/XsNtUPptet6pQ+JAhuuNZ5I5SsIMD8YpdT/O6unbo7DkkNv6A2PdvshV+aZu+U8hSfo6JaLTJrbKeUPDVn8V2bbSTIPQk3RkDg7ghoNfO6VeJA1QU2LbYT+RaBci9n0ucmv1R3M58nH6AL+5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rzsulJpO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rzsulJpO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F90C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748201993;
	bh=Cd4pjIcqB7nFC8gwpk815nT8QybVZOqKq4cJ7zo64EQ=;
	h=To:Subject:From:Date:From;
	b=rzsulJpO1jY1ZVPhHgO2KKCLHWb9M5VjU1ct07JPZx7deIUkw1KWdZM/1SCvIpClh
	 W3vVfTVlD7dfKYYBOumGYsEzs0DD/yugU8VkFZvGHGAHAW1PndwoTTkG4D9v/lFpfE
	 nqiDQnFeAQWKcbIecNd2H94nqiVdEh2yX1hx/XxBCKxM9UXdhlTXYNVTduIUTVhp7G
	 cu7svD7WJoXVJ357/Hhl/ViCZ/OhWNnCOnfEiaHi6mzrCDGFR7okhFwf84DhFkmZRT
	 jwjXkOua0pjHvupoCximztBnF+MpCw6tt4Xw6tGI1PGwc2JfA7thnqIgSGSC4sYB58
	 9uKyL6odKSb9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E41AC5AE59
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174820199357.18531.10898516118240550710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 006fd0004c853ed7a7baec5996eef6cbdaa73b54602bb06c3bc1c8b5a75dd740
Date: Sun, 25 May 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748201993

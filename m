Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2052B8F58
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758068994; cv=none; b=V+hEI6po/NXasixsnLgCT+1amVag6+XeAIkXd0ZxH1ORWZCLEb9L9xgDV5ZqmVwMjpfqk18vo9m6o/NssTj7jp0jaTfhcZ4uHtjNES5LFNN2+ssKLKThznw/5V3iiOYiulNz8TiyUcBh9mRq6HYtJKYAHZRdedyGjXlwvc3oh4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758068994; c=relaxed/simple;
	bh=FV+F5J+eLbqPWFfKMmZM1hMdpYhe/Dbh7dmPckf3iNw=;
	h=To:Subject:From:Message-Id:Date; b=krs42rHloGixY4ijlt/MSozItvGPBvf4h9ltN4mhYntLtXpZUmg7KAPTQMZOTnVSUyAxi+I2P4b8gqHami6xQcqWNa13eDk2qNsdJrjH7zsBrCcci7fgx+ZTRXXkde/EuvTv60N34tLpuQvCpsuSV0o3a24V+wtikNPWDmIFWvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kt2yuuPG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kt2yuuPG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25C7C4CEF9
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758068993;
	bh=FV+F5J+eLbqPWFfKMmZM1hMdpYhe/Dbh7dmPckf3iNw=;
	h=To:Subject:From:Date:From;
	b=kt2yuuPGdaFdg3GliHgl4o8XbERMxg8sqzMkVrKlOgGaNnI2sVv4AGGLI7dV2OSd3
	 jr0cH/+7zeT8YzZG5a/1sc3qJV66XdqgRl1cXGrESdx1Isk8iYX8ZGx4kHN2puXi6s
	 bc4miaumv90uI07+C93CDapSp2GLcC3pnGmjNKMRY4yieUpnqGs/Mo3QvApLojfGMY
	 hIiSwQXwAkq9Go7NUg61RNQrqcSApnhBjUsNr0k08wygVmgVxO85LBP+DnVolaVs7e
	 decN6N2ppdAJd9++DfDK885eLLw0ClAPhoR/PQkcKyQe4rSokVs+lqLlPQrc/I4XvA
	 u0xnuZFiE7TzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94665CAC598
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175806899357.22227.4731754045656462814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4371eaada704579a6bc17280dc5be2934590474f1a9279e52e4ca396e0b6046f
Date: Wed, 17 Sep 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758068993

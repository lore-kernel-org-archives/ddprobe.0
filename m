Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F07617F7
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 07:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713340163; cv=none; b=OaZ033/f90OBF70NIw0AVHha2CYOTmeku/TYpZwsygO6nxiqkzCfy1OtxgsK/H8pdKQwzu+Z33SXAVJGOqqbI81D92oG7uwk0blFX3K+lEziIIhJoWDMkTcgVpJGuQuA6ZaKx2xDT31IcFl7qsiM8pUMmMBqNM+lKObQWHYfIYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713340163; c=relaxed/simple;
	bh=WQDNnCv54Nv+TYWXsC7XlMOLix/GH23/UXO8z+XIIhw=;
	h=To:Subject:From:Message-Id:Date; b=J4Wxuo8jdWvwxjAnMNcapuYxHkU9Ezm3i1wO46eEI8zTyyaEsWPac73Cbr8XnldpQyEu5avT6hNOTBn249cIjtpyiiZLgglmSXssF5vgiuMk/XO7A2otVPQ7debFIRov3nkC0dBHkRj8mKUJBpPE9sDrjkNlecdSU0KcBhDRKv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EKdFW8is; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EKdFW8is"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E220CC072AA
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 07:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713340162;
	bh=WQDNnCv54Nv+TYWXsC7XlMOLix/GH23/UXO8z+XIIhw=;
	h=To:Subject:From:Date:From;
	b=EKdFW8isFOHc3F9BiOMdN+SpqgfcV8YLpshvhfCbZSkT7OadZjv2U139DvqBaluN9
	 pKFBLU2khdl2Qs1R3NHBvfiWj1ZJ+UxrWw3oGo9/f9K2VLbnHVDOqCjMkZX1EA4RhE
	 CV8j1LX9OWX/H5evd7KNBKKA3nu1YpgQ7KL+51FAWjsCA2GT8maLmEa6ATwpOQorok
	 oCHgDTvUd0H+sSpOqZzQJoReYH+z+DufSs4D9K/xxmdl6AQ8V+qhe2F5aevTkWw3IT
	 RPbC2XcJuaZtKb/VeiyjB7qTqybQwA6zj8VxzWsT1NCXd2cdK/Ez/vrIyYGLdpJEG1
	 TUdN4Zz3EvuKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C58C1C001CC
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 07:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171334016279.9392.7781828858605695596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33a88698d7ccbbbefbc2310cfe71ae34189077b2cf43df023040a0902e93f405
Date: Wed, 17 Apr 2024 07:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713340162

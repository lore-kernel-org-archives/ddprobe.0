Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A6CAD23
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752887994; cv=none; b=ZuQbRT+vhsB5Hae66ahl1Z8x1wrv4pjLIiTa9X77QhRXZKHOBL/HJUC1EZSBrI9slDVaZBC005tXAG6fBKFGR//hMuROsTf8N1tObMYq8ROw1n2gHWw70T2ZrBwVQDN8ACnV62CqR7BKk6ssvFQFP0vk5ueHRi/xCJhKWal/4jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752887994; c=relaxed/simple;
	bh=q/gWcNkZeUPXy2rsP6ifInlV5ajobJ0LbzSEEof8dAQ=;
	h=To:Subject:From:Message-Id:Date; b=gbv8bJiqNgTqsc/swPb6d0wPRbBdJ5Pc2dLH7hQVR9tNNpaKrdRS342SrFKEon0AUT1TgPLbqA9PeXO5jseVg9fRCNi93L5Q4gboy/RU4PihhKNaFIPp/pa7L2FHzjGxRak/GSKfVbfo9WO3sPgVz4jkZqXNcun7a/fNberH508=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WKFqcVky; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WKFqcVky"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA935C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752887993;
	bh=q/gWcNkZeUPXy2rsP6ifInlV5ajobJ0LbzSEEof8dAQ=;
	h=To:Subject:From:Date:From;
	b=WKFqcVkyxeWVXm3kSXq8mRobJB0f/Dc0thVSYFDIur4o5ZHhsd4eadlshIlX8ICRc
	 FtRnr2HXtPuygwokwk0OVZ9P2cqptsZeyl2m+8GcB/Y2eacvpSz74oP1+NDn9T8zKR
	 BiSUGK/BXJPtotz58RP++/KSCdawtAL5LHuaEFCUv+nkaW0u7G2ZYsJT4ZSj5hqJv2
	 TOXbZAOz20Yv7jq6CN2uAQRRs7zAttkh6tWnug2/ymKRLAUAQ9R12TkvvJllXUhCuN
	 6NvbhdFRjdGUeSh0NOarg5Q1o/H0x+VrWdxV3Zjm/GQWT3ML98ulUNzHSQd5tdAJE+
	 tFG62LfN7be0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F6FC83F17
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175288799358.10351.5685297818876120557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55f8e5abf202482c447d7f0880a7e5dff0c1e7b760fdb5e2848e53ff3e7c5283
Date: Sat, 19 Jul 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752887993

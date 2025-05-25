Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29FA37260D
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748172594; cv=none; b=mFKlotiRQryajPMpP8KW9AVmVp6u02ox/6hvyWuTgNn+GCmOytcNexPm5nEvY7IGxldCeh7n9N48FolD2JckgS/OdolKObrCsMbnL2twVEIRng6aJWCi2OhSShX7zeT5RCvbpKxyoQQh398uALg8N1GUjeavH7Bjp8qMeIQZyPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748172594; c=relaxed/simple;
	bh=77TSPAbwfzrpi4DLDVJJ6jIlFNIpJE6gPkuNptgFNsw=;
	h=To:Subject:From:Message-Id:Date; b=PIvCbTSiJKKY1oXh8OdFophGPNLw9Gfkc/5dUF/a2k2U9kWYsJ0Yjo/Z1QJyhzQ2/ME5DXxj2/nVKp826u67litsX+SijbNV3q2isf4Fco8GBvSRiytUbDTbf64v8cTNrJCNJmqmrOQUP2/gR8BXs0wriTaB0lElWF/zBjAXXk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KQ6C6jrC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KQ6C6jrC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DCB6C4CEEE
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748172593;
	bh=77TSPAbwfzrpi4DLDVJJ6jIlFNIpJE6gPkuNptgFNsw=;
	h=To:Subject:From:Date:From;
	b=KQ6C6jrCxEdfuB83HMVnP+P48duhZB5FSCPTWru8dYH8nvT6a7YvHhvzyfVmtzMCK
	 h4b14ag0KDM3fBaa6+S00QprkKAYruPSMKMsQgnfXvF9s7q0Z/Pc6MLJjRghYWt3ou
	 Oll/VTwVzDjhdbLDwCPsAVLGAZ5VoVqYDEr5xhDcqx4u92uFw9Z05XErLR9pSGNHUB
	 EWGpkpRJUfFNZRXT4PEic/54AADPRK3P1h5tgJKx9E3MBkz6Hyjrv8xCUfqjnk6aX4
	 P2KB5ko58NjYTGQJzlRVGO4RFlxY1jhqxTxo24STG3PX6ag3wh5H3113XRy7BonypN
	 tbdB5HzWzLSKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3CEC54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174817259357.14045.9383895083760131404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 908eaad71b72f109cfc473e8c359dde2ad80d66c4db45db9c569088ac94fc940
Date: Sun, 25 May 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748172593

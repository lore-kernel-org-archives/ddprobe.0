Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D6D262D0B
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746830396; cv=none; b=Y3I0iec47bkThTENb8S37uVcmuTrbhbMZaOgZp1HiYt/eMtJGDbR4mIF1ulvatokXlsYyaVswu6bjlCoJqQQP5q6wGlAkDZYaDM/KhCVRavnG0/DRXPCeq3WIt8MBW0nTdqrv1l1otXvRhanMTiFjrK1HrRkPYio0CKfPg7SnNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746830396; c=relaxed/simple;
	bh=8s45j4U7HiaNLYI0HNtIo61XVRHjpyRWLU2LoFMRZzI=;
	h=To:Subject:From:Message-Id:Date; b=Q2022JAQG6WvBlzNGGYYpX/Y2WvV9+a5ukRpQ8Y+6qWTyoXdMON6PpUJwYaJ7MNNuxWHVyRyaBj5j54B/j70LmdFBzfQT6HxhdkUagpf+B0XxRjRCvBoIGIACujagGTaiLAnpqIXhEe2EIgzq9FSHA5lfabj7QshqrwysMyAPys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jjkMqkUB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jjkMqkUB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D367C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746830393;
	bh=8s45j4U7HiaNLYI0HNtIo61XVRHjpyRWLU2LoFMRZzI=;
	h=To:Subject:From:Date:From;
	b=jjkMqkUBXyVSjk8uQY6qHdDP2ii7DhZvOYk4vEPgBAudJgpscLeiSCc4xiQSb1RQh
	 HVTrRzRS7CGLR5wQ36Do1npU7lNJdPx7TUCCjkRqenRQbotCpMX9iuH080nHFoBfgK
	 kr3a96Rl/6ls7OPUosI9tMlrpSQ1s7L7nJzEbFx4PQCNyx52xNUIKukTb+Fgc+ekRJ
	 8Gy90FIV4YxDdJd3F0K6OPmC9PPQdMBS2WBhZ/Ncfc9qJRCJj5Vlrhgz/Iv8xtFx6D
	 4RxcJ7lsy+iFnSyUII3HmnZW9DC4CSQcLUNAJHL0prbXTLeROAry2dAqJUXHmC21r/
	 LmstSnhlxhPGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6FAC3ABC9
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174683039357.18027.15178753763639664157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c3e60a3d3d44f7208f07ad868ab325f586b8646ebe96a1a7d16be0345074289
Date: Fri, 09 May 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746830393

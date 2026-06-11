Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C444136358
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 00:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781138794; cv=none; b=tCZtAeE2DnGF+tWNPidqY8+g3A9Du/4AdntQ8qd4uvDB5GCxXNKtkCrF+se67LDdG7YCii1HmAEM+Siogym6opjPFd++vS8m4nmnsJFsu4UwJYkCFSLSSv767usHqS89spMkwWAfkHy21BVRzRkbqd8C48qClYimDIEo+rO4iFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781138794; c=relaxed/simple;
	bh=o3+btoqqWdJiMOS7iZhPM72Kw3ULogRQedmabUaQ4wg=;
	h=To:Subject:From:Message-Id:Date; b=e6tS+v1NQPSBijQjHppTODb5ZKsTAFvOMK7xEfwDy0uvn9arc04jK+twawEzzzpnjhxmCtzFTygnmbD+QNaO/EamTDT4xkWJgMXnU8xQygnwir2D0GYA//vQPh7ubKJoebgCQX4T9Pz/GcGPIjfadKrj0Y9YGOsJ9NyFCmQ3bn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JFjWdKrc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JFjWdKrc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEB39C19425
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 00:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781138793;
	bh=o3+btoqqWdJiMOS7iZhPM72Kw3ULogRQedmabUaQ4wg=;
	h=To:Subject:From:Date:From;
	b=JFjWdKrcUe5AaniD1ec/hkeZiUKL76vf979bQcJ1jhzyaD2OfcDXMScD3Kc9aDJJQ
	 u9QIRspf3vGx505No4um/Ee4Ltmhqmq0aHZN4XS6hSaMxi44Ws6lmQdDPkNyVrmy5+
	 zx77Ndc9VGX8XXl+zg9fKQuQwBnllj7tiSp/WLshFQGUiIat0BKMcgJvMPBDfph/Qs
	 47PqmDMdIJj+DSTvW94vyhGrS0RaqOxnUYA4m7ahCdlgY302hmdkwJdjt/zvlioC7Q
	 vpjyiyDE82KQOmNsKxf5SaJtGMXqXMNa+//QPbOa0Wg7GgtbV+gaxgE7MreB6WxOGB
	 zhFrSAYwDalfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC523CD98C6
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 00:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178113879369.25434.5858944087193057172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d252c0e04b1182a5d75b02b7e2cb395be6e5141a693b0b0003f150479c234e5f
Date: Thu, 11 Jun 2026 00:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781138793

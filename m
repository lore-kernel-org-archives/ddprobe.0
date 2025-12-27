Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32952339A8
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 17:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766856834; cv=none; b=j2yH2km7jcIbeC0dU1EO+283D1q3GSWxBRoK+XEJ20OILPakdod6SnWUOa1A1qQsFDm/Ej3q8/BMMBpeUZ0DyRW2KkdIaf625i/3aYUT2VjSBD1ci87S7Jm+ldOxJcXU0lehKNxU3WRyND4wSjs8NtLasAy1PIZECoo1Nbm1ln0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766856834; c=relaxed/simple;
	bh=tFyXu99hWc/povVOSzRusAaljLaMFnpmGqYwSSmZM+8=;
	h=To:Subject:From:Message-Id:Date; b=GkUyJlCL9FZMTupi40spimt6bQikN9ihZ9orYf0U/bjVlhXmUFH/pFBcWBfJtU1nXf+4aZ/JE0//vG5FPIKfzarZZ/sncfu4w9OMJIg3FUz6Nikok2e8N/2Xtdk5XbblwQlx3hggmo8yhSss/11Sz18GtvSZ1vxlm+xvO7RclwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S+r3GISy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S+r3GISy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD470C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766856833;
	bh=tFyXu99hWc/povVOSzRusAaljLaMFnpmGqYwSSmZM+8=;
	h=To:Subject:From:Date:From;
	b=S+r3GISyMPxo7xA/F3I6gh+39vSrDXe+pZvtFFITnE8BWBybPzobOFo0RyE5cQJa5
	 yU7p0jmQ1HepR1Zl5SznQ0OlmSmYIKq64Q8OqdmJUuzG//NisuWJobM3Ujx5Ovp/f3
	 6kPmRHAp+au1hvw9GV/XqmD1L2HGKordHB6nGLV0gbYa8shtoYIx5gjUbY982vnp15
	 xhzIULr4/r3r5gEZNjUEHbTrAIXPzLMs/uhBQW3WLP+p00U0Ru5vyLo/ab1ghPg+9v
	 MX8xyO0XdmdtkoH/38Pk88bP+k+BIK9nPyEQIU3RDwEfyXn1Pern/W1QG19QGS4KCR
	 ewBygCVief+bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99CF7E92715
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 17:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176685683359.4867.3879049856845128120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 248be48d4d41966ad1d39b05459e9ba50a0dc6d4d862e8723db9f40b307a1d40
Date: Sat, 27 Dec 2025 17:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766856833

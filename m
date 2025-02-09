Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4210A243378
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739104554; cv=none; b=tbD84nT1uKqaYwir1z6+i063xWiZRNMJs39cTgu7AK0KzN4aEcgCAobgm8owMsqI5YDRPP5gQfXQKcdSRrFvikkHuhTmJaajO1IvkDzsTsLNaMgGqMQHq29KpxhSLLB7+NBmWzT75idvjU/Al18StZZvhdy2alw3k0Lhn/LSufU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739104554; c=relaxed/simple;
	bh=vDpkQfWqetvwVVJs2MMZptyqi5BckSGPXGwzhmYboM8=;
	h=To:Subject:From:Message-Id:Date; b=emL5XCtJzgu25eqDp0KHLVniUhbace1+WjJegBrJXiq2LPr7x4bLPbV7bMb0CrmQkWK+5Bu9fSPEMcjPIvi4rlfTgX0EN6NMug9Ua3f+TRLJEOi2GnVFvHZmUIH1WL1/C/q+J1c3162Ap7e5etN6340nBM6S4l72pTsHcIf90I4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Afq7ql9c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Afq7ql9c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B02C2C4CEE6
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739104553;
	bh=vDpkQfWqetvwVVJs2MMZptyqi5BckSGPXGwzhmYboM8=;
	h=To:Subject:From:Date:From;
	b=Afq7ql9cTE7up8un3D0/qtltUeE64BmaQOLj2OqWEIltdAErt4hw6EFqiXhjOfoG0
	 bemlywz+E0tFaT8PHj5fwO7TLAybjFPGqHdgWIJwWLN2HnuUhIxDHkBXsR6ZxtekJZ
	 E4iPONsRtDgvVNHv7xF+9OuHumd1sbIPtJPwiW404vSmXvYEPi5/ImYFjk/epSieLz
	 e1RQvmVlkFlarY0Tmt1EF/Rt7q6iCGGqjYyOLfNyviizOGAACuGTs9CCPiGh44KM7O
	 6wR8KUSCSAHHrdUH5qH/I7/5B7faOMFiGI5ZGtmc3HZoda8lATGAvNZ42LlzfaLbdG
	 XbNVMsFnkL+Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B444C0219E
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173910455361.10177.16730704599856979931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9a4cf2dc622b08c192f3e901c4a73b70757f697c8b564208e86f9c3c5da0b32
Date: Sun, 09 Feb 2025 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739104553

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4498F19993B
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744451394; cv=none; b=Z8LH0f0JbX4iz1Eh5JCWw0w3LX89KO4+D9uTeHYCX/ski8nTmV2oTOgmtL+a0HVxOgTW58K7jBDztCF0JjhFE4HPdAtmpsV2G68W04uZ1ScHVH8CNc1N+NeHEGHfVgFkUuP/+EAlvubN5zKWpXJa2dsMHgghF3Rw8tQqOZnlAFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744451394; c=relaxed/simple;
	bh=NpBVHVU/87TR3OmEeUkLV2lb9PLlgR2fAdOhRQMOzjk=;
	h=To:Subject:From:Message-Id:Date; b=G4Yh520QrsHfM7H+TUGPnndSv8aXJ3PPCy1ltBjPoW+4Zb80mhDrrf2k3lzKiaWn6PjupiHCXZIoYZCA8IbHMwF5Xtu9XcxIluHqUvjeieTYO4WjIF51mz9t3L3EjHZbb8tCXJfwFg8P/URDvH9GcKA2KrlghpMTviLJhcPnN6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eudseM8U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eudseM8U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF383C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744451393;
	bh=NpBVHVU/87TR3OmEeUkLV2lb9PLlgR2fAdOhRQMOzjk=;
	h=To:Subject:From:Date:From;
	b=eudseM8UibB5Do3yevOipHdFo5HLpuC5X6sy4WkO4XC3dl5bzlLzcQN2+fNCX5L69
	 7tg0+FBwKwiKKgop5wcXsQn5dt5pPpPBXfvdiSUdLViYWAboe/MBEMNcAwLCOyUqOJ
	 r1Ah+eACGWNjevF2ljccfGxB2xfWi5Om0N5w+CID6JPV24q/UDzjnBkwUJKxOXaCOK
	 peyCzykdADKT75xA45nUE3ejTmzc9r2ouq0nqN5M/6d86k6LzXSzZaVesg2pUqf+vx
	 D6l5LRSSHmtsVngiHsDp7qGO02UNypUGFJMLSh269OzTfzfcDNV8pJC+0qfHtlxv0D
	 0mCSkzZkXYQkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985DFC369A1
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174445139360.14599.6318472071109548749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93a066aa3f6076c18d63610d901d60593b528dbe536120f237957fa7772b388d
Date: Sat, 12 Apr 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744451393

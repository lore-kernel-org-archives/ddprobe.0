Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2817F3C1F
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736754354; cv=none; b=oLmlktipW6Pi0szuKbK+32MT4qQPp98AoyyPL8UOef5EQ5oiI+Jx7IrxbEYxnkFUN+PitdsM6/evaWEQqA8xpr5d+turjOzUJEKNjhxxiYHgT2oOrAvxI8i0pFh852VTdhTNvPki5QE6brrgbDcgKfrexrI/XCnczO6fXV6ZXw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736754354; c=relaxed/simple;
	bh=CcB0/rTDLYus0LfZDmL5TYv4wtvDS5swB3UBvMgRj9U=;
	h=To:Subject:From:Message-Id:Date; b=kSv7YC/f4i5bgZ2P5g8G9FQvAyYp06srC5EJw9zelq4cE/a52s4tETXaOdrxfcvA3OM+yVVcw4qJgYvmrAoNnFpTTuwwt5nlFMYDAqp14C1HJBTKy8I9mdawylVnh/KMPl4glCKbZprQeN7ckHOCAfwOfOdBiO7cIf8/2ea/FLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iODUMgO9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iODUMgO9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64BDC4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736754353;
	bh=CcB0/rTDLYus0LfZDmL5TYv4wtvDS5swB3UBvMgRj9U=;
	h=To:Subject:From:Date:From;
	b=iODUMgO9fMm4UM2qzLQMwJBGNR3pJG4vCXvHKvUCK0llel/RbxaWwJUQPJvMp0mSw
	 Ypbx0OxvWIBRs4qoY3V74hHS/rw+48rP6arx5WIAQSA31MpIdEh8Ct362VbUu1/NAc
	 NhknrJCsAsVT6cctSe8HmmECXu96wHsj5Wor33g6ydmSUVkEOGbc4gI3mkvFNgju2S
	 owa/vmejc2BLaEFi0zMyvxI+2CqOnFbw0p68msrVq0yHQOyVEpMvztDlov9oA8J/xq
	 rj7ToEWS3LHG726RKmf/p3RsnWPUgWIaTFdM5k2ciYpfOMMA13T49DPuHWO7TmwklA
	 rvmzF7+1g4KEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969B1E7719E
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173675435358.32070.341061605601839634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7049413767565ac6fc8634c5ce5d6c0cd3a4638d6a293eae51c30eef17a33500
Date: Mon, 13 Jan 2025 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736754353

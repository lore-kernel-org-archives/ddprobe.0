Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E311F239B
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751365794; cv=none; b=U8qazmNhe6nx4ygYRGb2bppMc9b8UCOVMOMg3LcxsvQGN+9IHvkeH3fZt6pCfL4kSS5MpUIgQlpHu66vcQaCW/G079tpxbDz14iuRy4XrVn70rJ8h6EUjUk8GmouNyluyk4VHArzPOv2/R+5W2VUZtdYQ+d7MKrMOggnimYArns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751365794; c=relaxed/simple;
	bh=kEoSIbhVLuw8XrAz5rPoq1tWmH+AB3LvQjGsCj50xyE=;
	h=To:Subject:From:Message-Id:Date; b=GGGD6geK20kuxSF9aaDVqsl+wNzywTEnhv57uik4/XOl3ZTp9nsso5fKQOJ/jQF81eFfncpZ3PA1ybetoI2XTd9jw5sBaH4cLGRKzNu9klJoIA+U/5oT2C6NEIb3exGoRqZ6ty5FUwYQMjL6dvNhhbhbjBtVdYbvLmU+K7mSPfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KwqLXO17; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KwqLXO17"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0950C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751365793;
	bh=kEoSIbhVLuw8XrAz5rPoq1tWmH+AB3LvQjGsCj50xyE=;
	h=To:Subject:From:Date:From;
	b=KwqLXO179ZlZNQ+cxaoig92q1wATdhk0A8CkivmQv8Ld/GpmZJV9pNPd/6U4e4PGH
	 WFDhI2ecbQAqHjZtMCUP/5TEUQu4iV07WP5yNBukgOa8MPEn4Mg6hBiK686KpN66sj
	 yYmL013SS7xsIw1zHoUPIlOKTsk15I3ny3OyFt4uJ1mzynK1N2/u/xn8ZWrnLRvmY6
	 i5wyViaz1k4ywnY5sZ3rGiBxC19GnHgJfr0QHDzNIYLFOmWFRrJimvVHWxEvEUo7/c
	 1yGNCSyovA5g6TQK2lWjsTDCWAFjH5cl+vf4yQ0ZrBVfHdFjH8SMKx/DdBIX2JJC42
	 8ZFCo9MAiFR/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC28C8302F
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175136579357.3300.9754527913655801857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec4acd5ca7d721cef3766f4bd841eb0b856251c9fde5d76591254b706c17ae8e
Date: Tue, 01 Jul 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751365793

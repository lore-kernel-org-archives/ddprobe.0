Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E5054418EC
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788610834; cv=none; b=jDYstYHVG5//tZyl+N/ulWGHf3lpKuSYdBJQqCvS5hPZxcpl3dcB4uM63+Y4TQSPFurBzxiU+wcjuHR5rnjVaawpR/Rz1lLVWVWjYM+k+U56yWHipt0sXubdQj/86yxJz3sUF8dp6xDRoFsseAcAKqN8+5kyt9D6bTTR/Wp/aQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788610834; c=relaxed/simple;
	bh=P35LSA36kbDkaBIJkNud4OGMcbSDKVblhd5JGfZpanI=;
	h=To:Subject:From:Message-Id:Date; b=UKLWBQ7XcntUpYWzr8svtW2YXQ8wMs3x12dYUn6uHerCQf+nfShBDD9FCDR1W3IiboCaQI9kAfvVXb4je5xB42HDRQDjtvRvF7g7hY7A4fpUF7AxR+sJ0PW+PPk6vrnkGuMZN0vXlzsVWJORLEDYDfdVOalS73XpXQPLV+zEDtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ew6hQBfa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ew6hQBfa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDE8FC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788610833;
	bh=P35LSA36kbDkaBIJkNud4OGMcbSDKVblhd5JGfZpanI=;
	h=To:Subject:From:Date:From;
	b=ew6hQBfaACfffLzUe7Ghif56WfdKSmhAkRrvflQ+lswAz8DjRUfv58pXo+AfEtUlT
	 PI97+IxDA3MKinDgUNDDmQ/lw8ehc0c7IPwL+PT9s7JJGQSmAYDXA0qa6yaawoc71m
	 mo0uDjtBRrvIvkkAqqXl8PP3GrYzUMif7d2QkAxXIw3bxe1IrkYAO5tnGreax6crWb
	 0PEkLgBcRTgN9+uFKqihCi9/V26uoXi7jK/kkli9M8+cyW4LaeD38frQVpjCMv6RAg
	 32lwR3H/r6huruKTCHpAXEF6VyGgOEjyLIc94Lw3nZqyX+i+jfSVNaGRtgUjm4Htuw
	 7DrzENYOxusdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC689C624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178861083369.10380.15460309401064326086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ae030b1a5fdd7060e4c2854d50ebc26f5775399e9a7332fef9cfd27acf06629
Date: Sat, 05 Sep 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788610833

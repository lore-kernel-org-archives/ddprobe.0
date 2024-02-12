Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 032263A8CF
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 14:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707748097; cv=none; b=hCJGRl8geYHaFKqqh7WKH2Wt/tnjsb+LTXssFjG4HbPAdGUH0ZITA4UdPiar6qO8nw52POMXOszBkeqDy+LD66RRmeLdy0pQLZFOwYAzoMP8EJx0OhKdJY/+o2krt+ExFq9J9zbpUlyDCeXKwiH7+vHH+U4KjA51MVNO8zvjh6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707748097; c=relaxed/simple;
	bh=xPGSqbJfat8gYCRR9DHYeziLgwIx5PEPV3bWjvPNOZA=;
	h=To:Subject:From:Message-Id:Date; b=L/WatMib+NKQeknk2Fatl6FjPvQzFi4CxTVeL/emVRVo1cTOBPG20PijytoLPs2l4yjOXkNhZL46WJwHBYf7lHu1PzUvnoyUzS9MHteZa0sQ/8ZZsTHvyvOaJIEW+0eAcT0AmRrj8OK5Z0jbGikZzE6SJlP9Xn7gBIwX7lQrffw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hh4YocFz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hh4YocFz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7401BC43390
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 14:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707748096;
	bh=xPGSqbJfat8gYCRR9DHYeziLgwIx5PEPV3bWjvPNOZA=;
	h=To:Subject:From:Date:From;
	b=hh4YocFzLcJjFwCjZ+pDoy89rGx8aS8fCxIwUmA96xQBLM3qYcbDNLuzBDKeqlLl4
	 pjEaAh7hA9xekf3MZw5WYKb/Iy5EeLZGEq641NdMuaIQMuMrimtlBCFgBYFV3XPt0/
	 sGeikOE6yMzWTXv1+nlSTTL7Wx7tmRPFflyk+ZOGC7OAPZkjM9rEJ2ES8X9xLbZBqC
	 VkZpSebKdo3bFvjYxsXCFTBzEND7oxComapYl5YSLkJ6IUJHVAy8cdW57hc5iwLssR
	 q6F5B3lfJnxf53uXLPRZrRGCwnJ/2FPy3SbcIzVfWUeYJZKSatqS8hylIcYecOfReL
	 lF8u0C/sRUXHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BE83C48297
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 14:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170774809636.5365.3614949277485086418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc0b379d589ca9035496dcdd0b38abe2aa0cff7bb7675f85ec5672e49b54b91e
Date: Mon, 12 Feb 2024 14:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707748096

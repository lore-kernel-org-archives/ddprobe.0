Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD27EAF9
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759735194; cv=none; b=cCX4sw4RPfYZOUJJ/WNSLk8Qdy7xpAsxtVIhy5uLZktdZ/UhdGlYNz/ySYDJqrrzk2fhNGhzJ1kml/wCeaer845LscWtvmjd8JTjo39Fk4+O2odAKQGhvbGdC58cOQ1P8wIArmnN8EChdlaX92rRZ5y9SexTDLcavu+/gV03nJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759735194; c=relaxed/simple;
	bh=1wfsRovEWsTo6ne+kFDYkd+yBXOoMze/awGoWuBcBTg=;
	h=To:Subject:From:Message-Id:Date; b=s2w/6Ci+5xRPn6t1VdKtnjFWEEpbU3aURVp1XajUN5jPj/f8H08j3AxkKrClzR1HUPRbtvZdQojUY1NBV5DoqT40vaiD0wF00cegu8V0B4JkyXRKnIzzU2z80GA6W37CzKywlInQOh4pI89EhcYXnoMVUwfgJXFouLjm6j8s7sw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y5hHRXcD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y5hHRXcD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19F3C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759735193;
	bh=1wfsRovEWsTo6ne+kFDYkd+yBXOoMze/awGoWuBcBTg=;
	h=To:Subject:From:Date:From;
	b=Y5hHRXcDEzy8NjO1g4w3cM+e1dFJcSorAWN5XELnlaDWTXyXahhveg1AEPVKEA6Ok
	 LMj3sdQkYhOPpeCEKqocNqCy7HnPW5ds5ZfDUaRw6N5I7AQSCfS0SFgvT4SBfc+W0q
	 Yd3tQFVdi7GDqrC9QQciq8vINE79OxY6d2fbvp9dZkcx38sJ1+eo2r23xR30au6Z4O
	 rq62E8vGhNDRUj8GMbNmAodsR+Hg9LCQJdghqaodXxcStND4zLylyTOGLE/+DxlkjF
	 ZrnUY26yzCyNqNkvZLA/36ApRAOrZ5vz47KEHZUw5KhFMQDXYjC/rPzCphRt+GsIQl
	 GEn0s3je5IP1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD9BCCA470
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175973519358.12042.1724867824492447610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edb2e2a474c698f05da9ce7aaab2ff679660773944b3c6d33fc33e8ea0959926
Date: Mon, 06 Oct 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759735193

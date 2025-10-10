Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F611F37DA
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760113194; cv=none; b=TgFmciW8AAfD5tZkm9rANMNJsga1iJbNoUE76ZnWZgtu66+DRpB1w99q3Oa7HvLssuwcx4cWeB9ehmI8UmwFhe9fhz4DjHe/GkDHg4ZklL03br9rJjT/NvvL2cNBu8bRgR+vZFJ8hg5z6IG9jUstrFY2KqwhLpZH9/QzPLEtYuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760113194; c=relaxed/simple;
	bh=HJyskp4bdQDPQRxlEx/FwX0uz309KCZwrGFFOefcFKc=;
	h=To:Subject:From:Message-Id:Date; b=NR2sSm41D49aMjJDf+MM7mE7GsuC79HeYZXZck5DGuymFZbV6FRU09S9LVtJ/mWR6L3y4uT0YGsteYcFGqhubE9fHK3wHK+s0OA1UXqHeABeDwgIH0rHFcFmfVQgmobt9WOw3ilK5zYZfBYUB/2I6aNpJsB5vyBSyncHSfEc1Js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HdPaxX5D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HdPaxX5D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20DFC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760113193;
	bh=HJyskp4bdQDPQRxlEx/FwX0uz309KCZwrGFFOefcFKc=;
	h=To:Subject:From:Date:From;
	b=HdPaxX5DNB3MNhxUkHAQPmyiexoEbLpuBm5E/vt0zXF/jH/5i7KCJCxwE7tiRZuVo
	 PuKPIoG1zBV9F/4H6H84Uh6uIjA2JC147HZBzTd3Y/rJ77LnRLrZLA2ooUfQVkDweT
	 P7y7/Th2zpBtAJpNp+fwWviKVn75yn1x76tOl6MvqUq4NOYJdNXQwos4SfNXWCxAJ9
	 eobqRG/hA8YzlXs0tjaMKQV72SrSTAFD3Pn0U1AIYjo6KLwRPyIIRUlHTMbiSH/y+u
	 UfxG03LyVL87AaUInmEqUnGE9wcp+mhJuLrwM0C7DvKdzFlZRNZSsSa1QtgpSgqegD
	 rVesRQ79x7QoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901A5CCD185
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176011319358.12253.14263120028925705926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e9ab7d4d4499deb04cb68ada71d6ad591bd5e1e822ebb0810424bad625e6601
Date: Fri, 10 Oct 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760113193

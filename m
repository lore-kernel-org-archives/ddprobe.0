Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAA1127F4F5
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 21:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772832293; cv=none; b=nv0Eg9YkXjTbqv50mRAasfeCC9bbv406tK28GKuyEZm0BTqvWlorl8Hz6uYdNOzxwqqUHTy/WjeiaOe0+K1eG/FyPSbRhS7+phc9Zix1I6R2nDYvPxf53HVKk6e/58kb/f2WnuXTVV4TKbMMpz8bdV76Kq/e5qfdhgxIToBt1wY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772832293; c=relaxed/simple;
	bh=RAxVUH93nCAJxFk0oNjT9//GDItqMJqNz2Dfz0XOSzE=;
	h=To:Subject:From:Message-Id:Date; b=FzqALSuhEQAN2GcwI5+0M0+6OfFxDtTLsNrwIizhEe7s8EebjN0bea0B/TfXA5dmw9fMuzaPSYjRyCUoOnpRLfmuLwMAoaZqMPoGG1DRDCPNBZYQKqgWpqKTcbtLjKYcUz6UVahMaOBnG1hGD1uzE/gNLUPjW46BV6BKEou9X4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qnen3v2J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qnen3v2J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E365C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 21:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772832293;
	bh=RAxVUH93nCAJxFk0oNjT9//GDItqMJqNz2Dfz0XOSzE=;
	h=To:Subject:From:Date:From;
	b=Qnen3v2JDuRE5yzepdX7Z0+kXiV+aI5ys34ZZrNGORU5QL3HlIXgexAkBWpYYf43f
	 btaq84ffKA60mD324fN4nyeQB1d/NuMxvL4EM64/+pZFHnQJxjlwsARZy4PzZ8XqmQ
	 E9geYj0/8bGL1zRtxTkfD0jQ+cb/JiEE0FfTqjKfLcn0usCQfsXZR1bJ7fxiEAbMF8
	 V+btnLlcRQdxhHLRJwnFyAeR+T9eYGLx1Gmcx20JiLIxpgbD6ksJ2m7I8RB3wBu4g+
	 hNJLkednBFBMXjqHrbpoZhqIT46v4yRmQFCF0qr3HQdAkaQY83SafB/7pyjWJrvpkm
	 GXSFgBbjqklSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECFEFCC076
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 21:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177283229357.14876.5391214419526456701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ab2e0b732ac078335fc37803adb8dda4b4746168d3dbcce9631061b2e3a6172
Date: Fri, 06 Mar 2026 21:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772832293

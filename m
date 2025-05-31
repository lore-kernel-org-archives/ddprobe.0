Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37CB67DA82
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748717994; cv=none; b=dk9g0JhZdt+rzIWeOiYutUkmU0VsPGvgKkLl4/QoFfyu1a3A+XlrHyQ8wzIUBpVq5JA9MPlvEHysA4DEbgwfWn+VR6fAr4/pvaMFdiomRYTv12QXLNjeE0LiJwpTZLDK3jrfcbYM3Bvsvhs5y8wz1WyvWUOgh1F9Ly4kycnfW6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748717994; c=relaxed/simple;
	bh=6cEsxlkBk21WxhnXnY3zACb94XFIn1pg26Dm5U8fYd8=;
	h=To:Subject:From:Message-Id:Date; b=P9BTuIA8TZ4rTY3Z7seEKBR2WWG/AEZyT5/PlED1xqn5EjH9jTeNdndFvSDWg6DAHc3Tvc5gjnj6Wy8Vr03l4YyVoFXn7IJ1guvHUGb77YFqHhgc18vg9qSmY9onoVabIJyw/Wmk0K7SJS08rj3BwbUmuStGMewthdYr9y/kLR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CEiKiU8i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CEiKiU8i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A13C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748717993;
	bh=6cEsxlkBk21WxhnXnY3zACb94XFIn1pg26Dm5U8fYd8=;
	h=To:Subject:From:Date:From;
	b=CEiKiU8idJ+ypIN3kLHT4XffrAFgAcfhtkWrLsd7sxWF6B/JbaziANiB3KGgYk/XL
	 vkfYcOIzuwbXOpbD51bEMCotNAxGVOP8FwWZNbXQpPBem9q+Ys6HaS79qNWPfVp1cr
	 kow0+8jFLJOY0q6ky/KNN8ctK0jOgMGm/Eu7kwBXuQCxfl4+EZqaQuEK83s4/5cxfy
	 ymNCy5G+dZ8lUITeY2+hdazLhjDiXrP+nN6H1zpabR80Lgjy99xUnbfZYDVc2IJeVJ
	 kuHJXnb4LqeqtlERgs9DhhCfDut6b4tYWtmFafcJqifmaYW6caG3bKTOH4YK4+tdOx
	 MPGXTI3r+U5fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922D9C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174871799357.17265.2646266715751990762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06af1381568b9bdb1acbd834ca2bad088cb406e616b411ca70b1b7d5630abbe1
Date: Sat, 31 May 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748717993

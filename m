Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1939525B1FC
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752517194; cv=none; b=WFXWn3qBy/RFnXN9JoUTCxKo60/I3rMryCzRqeLPVHNsU6C0eE3VKQsNJT15RmXYwLg/JLSZDixs6mNE2riIu8A05FmuSn0sO25yDnEphdTZB0/IHmUrS+Mji4KLowJ9MLc2KJcHsOzIktW/8N124JPxfW5WhzTMAaLv8DioQzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752517194; c=relaxed/simple;
	bh=ZyjNjNPKjlxl7mgLwuLdWepQVOJH0N+zVupoDOZFPkc=;
	h=To:Subject:From:Message-Id:Date; b=lYc1G5hjdCHLiytjXijY0J3Yer1NBsjp98I8/pTKoJByh0SQ3FiqFq05Zjr7N3a2bNkNAtMffPjP5oyP8pXtVu0IMbartBakaZ43cRgL1Boc/NyQ57nTHFycXHKAET+MezLJ/f9kaxZmDV+SFpkU5eebkBrajjD3Brz/U4s2+ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M6YrEtEj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M6YrEtEj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A346EC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752517193;
	bh=ZyjNjNPKjlxl7mgLwuLdWepQVOJH0N+zVupoDOZFPkc=;
	h=To:Subject:From:Date:From;
	b=M6YrEtEjg1ssWs7Hu3U11RffqsMTdQVvV2nR/leIjg2fclJbLmAUWG0WTf7peee70
	 WEFg1WWWOk7EM3EiCuIUZrNfaqnM74Jk2RalK45I9WlrMLP0t/1abT7fers25KHfSK
	 WWSll2GgUF3i0eoBAldo5YpJqvqw957M47xXcYviD93+FH7gFJgDDo4v+CDrFIUNwk
	 chnC7cu5mBD4RG+5pAjZ1E7Uwt/bt7mFMOEKLY12Q70aKQYMyfCp1NuLaJ4MpEFOZG
	 uQ+De7/b0ljI3zKQEN3OBmaczwvuz/pC5uP4gqL2n8YtEDh9Y66/y5JFzXr21pTJa4
	 j48zOxk4sTivg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F768C83F17
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175251719357.20213.8492319244967995462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78d2d954b44e65278cc268aab110e4a1ae0cf3630c9c37c4b37a1bece8e15df0
Date: Mon, 14 Jul 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752517193

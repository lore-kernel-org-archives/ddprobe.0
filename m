Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C7B18801A
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743029994; cv=none; b=Cxb1NonkRAe2zHLTkvMh1HEAVclTwzC5GsUohIrWDpyfAywHa5/fNUL8/y0LgnwZ6iIDISqBeL5cWs6FxNMMXDzCtknucMFtKhGFExkNlo8V/DaHM7cAp66IiHvus2JwzB7b1OqDAp8PdYsqdt/E2xadu0j33HPwvxREDryT7aQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743029994; c=relaxed/simple;
	bh=h79C6GTo4iulLzqKXDcj8QFmoCnp8Zv1qj8lxDWHdFc=;
	h=To:Subject:From:Message-Id:Date; b=F9qcdLr99kasM2F+d02pW2PQ+xidLoJO0AGl/YJC4wIxPDh11lIrADk8CW7Tcef76WvW5LTlxog1fJb243SBn99SJkdJ1JsjVr/0/LvKxCRXiFzEuKgnAsHBpjLwv49DLf+O/EELJfZUwumtSu9MgcBSqVPandZ/dRaLanW9Sm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OPAe8X+w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OPAe8X+w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8DA5C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743029993;
	bh=h79C6GTo4iulLzqKXDcj8QFmoCnp8Zv1qj8lxDWHdFc=;
	h=To:Subject:From:Date:From;
	b=OPAe8X+wPf0eyUCu5Y7pl7NI/eEk09HwR0VFSxT/nGJPFYF5hX7tbFWtRSRj8dYAy
	 5KfsEygDy1sQNxUXTvRZmCFj6nfSHIeZudg0t0RnEz9G6EoDOvT/qwymyC9om8uAFZ
	 p7XghrfiS1x2ful9T22dLR0g94cOY+X/SzZII/6xXpGdIN/O9Q7vBZpAyB8TM1Nad6
	 P/qI10ENpCYEF92obVLn90QbvDvRtKP6UpzvGsLOHHqherUmMkJWlIo2l7eI3TykQi
	 m3cSz+p9GmTORCxyOzfDiaERm98ZNUSsREwBsyUg0LoRJ/t15czFE2ZDOe8cplTsny
	 To82PZV9X97ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A65C9C36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174302999366.3970.2342111554122123638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cb0b340891205e85f7f9589c0d5ae57349ef6640a9afde63b86a0c4daf152e1
Date: Wed, 26 Mar 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743029993

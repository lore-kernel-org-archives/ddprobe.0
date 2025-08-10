Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B64A2AEFD
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754792994; cv=none; b=gYLr9Bc6J3rPsnsvLrBkjTD4fOLOTvg2LVyOv2CjKXhLwqJXmn6hwhodrhRda4G0GqWTP9kfsm9emAUYKvRl0+WSPqyLnDgUkPg1x6/4B/I4Bto8v6Q7/uQD+V6J9mdphhr0CJRFb7hpIxxcr86qXW9Rw7d0L04kTAmscq426Zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754792994; c=relaxed/simple;
	bh=jXYpzA70wc+XAFLyG5HznnJHEl/7vN5UGaS7JYhffyY=;
	h=To:Subject:From:Message-Id:Date; b=ivGzWgJXy0/xtbIfbp9+Sz9wnH9A2h/oxFtZueyZkMEs+4adi9hTTmLqYgz6OL/3fBs/hDBR9SqrFxbdXx/AJ1bmyhhIdcbqinY6V7L4TlTAFfQId3DhbSx8l6em4gZ0b6ULmXy7UQa9z0gZltkZmyWTzjkjhN2cW+fq9e7OKM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R4RTMyZH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R4RTMyZH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31C5C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754792993;
	bh=jXYpzA70wc+XAFLyG5HznnJHEl/7vN5UGaS7JYhffyY=;
	h=To:Subject:From:Date:From;
	b=R4RTMyZHb9qbktwu/Wxr/phPc45jOHUSm9oTHdclckIIO6GKwOWiU9DC3WxNhUG7X
	 eKdDGtkhk/OYhm4eZLq+W4M8mTa6TMVNFF90TirMWNNNlibBMEKRKeBczLRd5MBk0f
	 gc7NeOolxTwsuIAREyVUuGpczisU6OA2hrdtS09pA1kj9Kiyz7MbYywqpcXFyWK6LW
	 JKD4SBfwiZ2HiFYINOC754bW9ecefs7Sx+GuBQu5wQxfy0dlezltD1knJzhAJeuPde
	 8S6NlR0yhgKDKnw7J8FOMlH+V4CPlZO+pKz3GTjP5veE0Vrt8sg1tgjxob5Rl45S/B
	 8LRhyTiZud/VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910EAC87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175479299357.19977.11646862449123795342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 944087404a169b0013ebec56c1a79b88a8bcff3cbedc0f84c3fe4926dacb4c1c
Date: Sun, 10 Aug 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754792993

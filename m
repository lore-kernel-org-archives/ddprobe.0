Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A18C2582
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733012154; cv=none; b=WdvRrNTqdPRbK6EhpCz7OCQrY6ZzBhUG/aoB8ZXKYNz9uRGKeBTe5K+UnwRceNjvtCWYfI9TQ7ea4WoVPDqoaZx+sCXmnPI0sDWkHANpJk3kkq9vANjYBGPSwlUd21s5Rj/1RU5BtQqnhRMGMvlnWOyQ6tcSjpIvcyFMC2l+ODg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733012154; c=relaxed/simple;
	bh=MCyw9XyhXndL0JI0hK0DPBD5xtmt5dqmpPfS2Mb0+qo=;
	h=To:Subject:From:Message-Id:Date; b=NRwQ66Hh0h06ofpIDKqjo+Cj4OXc5lPVnGru6U9dNBNppXwRqfi2gQfuV0du9rpSIu/FPSfxfS0rWnjzU8kdp/Rgacn0Fe0h26bP48OVs4HNrtaIzYFnAGdPm1/zeW4TRAgUh0otiD6OhEQDwSBgB8Hm+xtusVk10uM65gboBSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=solX2FaS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="solX2FaS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55E1C4CECC
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733012153;
	bh=MCyw9XyhXndL0JI0hK0DPBD5xtmt5dqmpPfS2Mb0+qo=;
	h=To:Subject:From:Date:From;
	b=solX2FaSpX069wVQY2v7ctsDZC27Q/iIDqaOn1+S4PCyE1ioVAlraNYbGssiC1pwq
	 X8GjSGAmpueVszyF+YtHXadm+5b5QexEWUaPZ8ML94zG+upugpMDusO0I1OjOSQ2OF
	 9S7iwTLtvbogmT9ASLXNZuLzwgvMOpbmgb1UzeA6D2F02nszrtmePwsk3uhjKlz/6z
	 f9EMUgGeZb+JqitsBMCiwt8vKNqN2TgoCgRd38s6Uf+MxdjuFbKj1xuaJAvzAc2flf
	 5l32pMDKdrgI7c+GXrz1h6oOXV0ywhOi66bgeYNogXMxJofkWWcY3Aie/X6GqDkBvc
	 beoAhIxVSUIiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EA2D7361B
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173301215357.30044.7475941169501030145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c02337da5cb1efaf0c35b1d405505b8d9846f5bff2539dc3af0d181107b67498
Date: Sun, 01 Dec 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733012153

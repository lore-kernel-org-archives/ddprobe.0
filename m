Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 161DD2701DC
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752633594; cv=none; b=kIzwRSUht6NFZVulaBOVHhejd+0sPNUssb8glrdM4PU4IIV+PDZzm4DR0wMf72Mfdp6r2gVvut0Id9koW1Lg+IaTTzLErlGWbEMyOZVN+DKbZsKy1zIUoxI5ORxoG3cwMv4d5u8P3V+aJFBjK6S4ad9bvs1mCmgKAHu5zXNr2RY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752633594; c=relaxed/simple;
	bh=KpfvayG/s9wLLLz+OlmBl0IoJwxXsENlcqEmm4HudJ8=;
	h=To:Subject:From:Message-Id:Date; b=Qj87xjEyaqymFpi76Ts5lHbc9Q69EQ0WbX/Khz4p+ZzTptbCgrg/1uhXnfcoJBUGS0lIXRV/EfsVu5ss5h4bYozP/Y6LVaYcUqEIMqU2uqCBO8EnFjJM/I9pMAlsptHoPB98AZeW9UfQvgezyu8Km4D8jZQSu9JBxMTgFA5nJqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g/00KZJW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g/00KZJW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85FBC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752633593;
	bh=KpfvayG/s9wLLLz+OlmBl0IoJwxXsENlcqEmm4HudJ8=;
	h=To:Subject:From:Date:From;
	b=g/00KZJW3upvH+ysH/aexn5yxc//i6VcmOhihzF3ievuyBQ92ZLyMZiNm+S062618
	 YXGeRU8A2sVn6JnonK8DjD+SitX3MP3OaK8NP1WPjf8xS0ljPeUuU5ZwdcthC6gTEx
	 CjwjaQpGk5zUbsllaij9Keq2T86iHcJSAJPN2x37IM1aOsMkBj9GNFGcQrdwRMljAK
	 hmrZM3rEy/7t97OaFn8lY9J1hEXNt1tMwCr7+U2I/OBRe4oA21zSRKfYcXEcHquTrp
	 xmXWP5CIWS8vifioQU2wM7VsWEewMtB28khJLFjRPxBn5w4QCUBKQteUfuyCOl7Z7t
	 Qt5G2w6xr4D4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902E7C83F27
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175263359358.28104.4748127881582814044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d477e57e9d8bc405e39529da517491d0cd4563089d9946169599b666b7a5566
Date: Wed, 16 Jul 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752633593

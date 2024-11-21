Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AFB76F06B
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732216554; cv=none; b=BTq58uWWNOlC6Aekjf7Ihgh/SxHGY0Kbx2EK+aB581w8mrTDeJrt5lWEgpP/PIO+Xi1IK/l5WD5qIJlvxIfV7HXOgspqEAVE6HTzN2dWGzBTNr+S0mx5Vt8/ardeN97xgBK4S0eA0iGQlYWsoz5V2zjnkgJeIrUFFmR4fsEO5MM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732216554; c=relaxed/simple;
	bh=Ps8Gh1GoJ+NMmevT/Xoogt6QZhtfLQvFJDwYrWzsCCw=;
	h=To:Subject:From:Message-Id:Date; b=ZaKgrCjWLifZmIuwcjB8cZZhMfBwxTrWmlBmJEY5iUTQpjd3H9kWEydRJfM31YWFdv7ub3V+xNC4ic7U3QLr89ZZ1FDmRANL0TMh3f6gIRraKFVaPuantoVVti9lRJNDmOsCHpZkV0QWRCh3O+XpqqkoyPjc5GpKTkuiQ6TIRqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bKLZFOQU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bKLZFOQU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFD43C4CECC
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732216553;
	bh=Ps8Gh1GoJ+NMmevT/Xoogt6QZhtfLQvFJDwYrWzsCCw=;
	h=To:Subject:From:Date:From;
	b=bKLZFOQUEREP6+uHSWRZYeLNUrs6IrilsebAQRGgxb0zDwzt7Mfv/gj8rb6upYNGd
	 YSHIu28tjhIUK9kLgUehALXCAsCqhfZ9PYQI2tunnVjzGlBohALnd7oCmvAGc55WaR
	 xVJSTzbJ94a1TvHTIzSmQ16ZlioLGXLHaTgMZQdsmBXqX09Vdwfz1am88oY6u4B8+c
	 FRWUZcIwnc7Jt2H4tun2kT2PQsyjur2Ujaqz31djzJtVniG6F+Frq1IKC5D5pmjUXG
	 ujkeh4mda1MmIOeuIkQ5NYkjvSnMRFVARZpdEMOwK4kUdUAXJ0b+kciXIv0V0NWE78
	 HwrXVYM/kabXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B69E64006
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173221655358.29052.3243971279504782417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 368f3d79dfcfaac096fcf8cc28c5e31d62fcd4ec3e95ba90377caba76722899c
Date: Thu, 21 Nov 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732216553

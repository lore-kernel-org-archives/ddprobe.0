Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 477DA3C1405
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 18:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783536514; cv=none; b=YZNkopuRzSOUKIgL6rdgrRYe5RyG3SuFloWUu4iGQ/f5uaC/2ee40SKGmNUPyx1VAFXs9gMY85mrjJuJr/9PfU3yMtheyMHdmunLL8UuTu94I/o0rASSsEP3XRY9XlnX+dRZQDsr/2QVk7Oj4hGYa0wNgX4p6IeVmXuZsSlt7h0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783536514; c=relaxed/simple;
	bh=p38OYKGTR9Tbs2765+WVsXQaGudjO+2+jkU1b0B2Me8=;
	h=To:Subject:From:Message-Id:Date; b=WqPekq6zoOioqzJ/kZ4ZUSP83sMRCiYf1LOC05rSgqNn8AZbX6ANsVI0a4sbkC2GeluGmS7hkCC+SY/8kes8FYcuyA/P9rBKdg/dRh17/FjTbjIHHrHO1NkhC3fhNrD0AqId+yKoPTYwUD6Jqd9n0XZv/ZGyDSU6UXDLBrHkTiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R256PUke; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R256PUke"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB9F7C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 18:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783536513;
	bh=p38OYKGTR9Tbs2765+WVsXQaGudjO+2+jkU1b0B2Me8=;
	h=To:Subject:From:Date:From;
	b=R256PUke1Qjftlatp3Br06+DSc9BTFPNu7J+DRG2keljss1X0zCxEYHMke1Tv/44I
	 tCq2lZBylM769tjS2fncW3PcuSzE7682CY5keubJZH9Yszu3bx55FoE9yaODn7CDMb
	 UtMxvsHLRx20mldfRS5vbbRghlShSG8cYEyd9p8o8rxHJXlKOrUS7jYn8ccFhN9SgZ
	 uV0Kja1QcV0fXTzhTwhTGbuulD545NIyvs0EQfX6dMcJdUgQSSMjYlKDr7hnlvG4VD
	 kCwtSSJFyEdKPQJifJ1R0vF5aUeKhvD890PwJ0KtuhIEg3zr1bP/ttC71+PuhdXVw8
	 PeNNBZHEHzlrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A805EC43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 18:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178353651368.11241.2880798564667745240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b7ad1219878fe5ade7065eeb4f9ef38bbcd67a6fcbfba997e60624060387716
Date: Wed, 08 Jul 2026 18:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783536513

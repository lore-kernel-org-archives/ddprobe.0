Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5DAA93D
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755389995; cv=none; b=OFj6DQNtEiPYOCCNm2YzWUl7MFRh6BWTNk+qSGHWzk+oQKGdpncepWHe0Ss1x2Ril0xXKZX89EZ/eaOQb42ENbnuPXpFetRdoh9oGsT4gKXlGKKz1RLwQgHLkjL0v05gn6bRSzKka3qis7EwPi+XFoG043Qi3mtiBmZf+uX3VaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755389995; c=relaxed/simple;
	bh=fnrruV9dssJZANwHydNZhXNK5n+ppWVueroa32gkrYg=;
	h=To:Subject:From:Message-Id:Date; b=b20cGZ0k51zKe6R7AY1s4hunsz3U92aX/DjCgTbgcVqijn/2y0TMRL50BEgT+RcOgKHmww3YuZB9y9eZqqy9DhrjH/aKI3VYayElHIAj/ocA7kINAgsyvRSozlKafX368CjBI2qL/X/Nyb7jGyGNXyqFuElEOIrO+CY/eUWgCAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vDg/R0bW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vDg/R0bW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46E6C4CEEF
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755389993;
	bh=fnrruV9dssJZANwHydNZhXNK5n+ppWVueroa32gkrYg=;
	h=To:Subject:From:Date:From;
	b=vDg/R0bWQuXFt4iomPONPXBxiD+YtS4jt8eiApaYypzHZ9dQH2xdNzzVPi/Ohb6by
	 pLTEqClnaI18IVY/KF2XoTEMoMypaukOaeUHiNv6U14wZlw8yUpv5kkmrm4iiyO79Z
	 ZpjbbfsVD/3PClQkjb/Gy7BZevERyubjThWAE2XDCZyIQTKu7fSrf76bgemhxG7Ni2
	 nUG+UqjAjWTv7hxIzl+spWD87t/6OjYjqM9SLPKlCyrrePJn1rdil5qY0PhPDxt3BC
	 RNJQ48gNqT7ZwQ2SsScianqu9WJG/1py+h92rtUnO6Gcu22wyg6LTfwvJFRcAQMpcW
	 uofItllfHPWQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EC8CA0EE6
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175538999358.6861.16249722049950682538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 522ad7ee33e729b8d6eadef80568c00a84e2ff57e3004ae9ceeafe1d392f6199
Date: Sun, 17 Aug 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755389993

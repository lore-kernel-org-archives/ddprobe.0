Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 374811C5F32
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736808354; cv=none; b=R2GcHk3kNf8BzTuNOQ2PxrfhDeHS6aSA9jfp1ELGssTMkm/BsiBwjGwEWa9vpnA+q9Fi53wxYNygmSASV/ZYLhew3U2zjQYkVLcZEWMJm5fGyhrA9iZrpAuSpzoeg6eboiOBnAW5X4pEikXe7AVwhw+79wIo+ODcYoT2Ft7loB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736808354; c=relaxed/simple;
	bh=dY0v8+fNwdam7q8kXxMxC9qqEccnK7XL5LBiOdU8XAU=;
	h=To:Subject:From:Message-Id:Date; b=VsxIOrDLoyTEP+DOcs+KNGlC415KBOgEduJfloqBcbTbrP6EJ6z6X/oPcQmN6k7j1ydGoPlMGU6ITwuUrRCzA41vynE2X7WmB70rEMAFA79bi58xA1UJQHpkaqce/Ef3varCszAJQfr29XfrzWPgnAovr4Ul64ZKSFVheTfgv4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M86/YDx2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M86/YDx2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF829C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736808353;
	bh=dY0v8+fNwdam7q8kXxMxC9qqEccnK7XL5LBiOdU8XAU=;
	h=To:Subject:From:Date:From;
	b=M86/YDx21HVdchAi6xuK+KEy1iP1rEwTdz1dv3ShGn9NgpEYe5xbR08rVJuk6sYYK
	 Wwdmxy/muVB8SalfFSZe1PyzKsiYqvs9JXaM65tt8cQh3u+8UtHQ/QpGrRrSZW9qWB
	 XjLJSjUY9ErfSe3OS2PilcFvr7D1siBGB+3FmPvpmtKo6rHbdaFq7m9FSI6cbwbd3m
	 Sfa8cX9hAe4sSVIPc1gHg7CX+b1ZmgRPV1YIr9HA04nC3MhLRah5vgbqw5rSxCuG1L
	 nxJdE6KyYaue4RiUJRTJhzj/N830hQIXdwTTFd6MVIuVWQhJEsiYYVm4zrysCmeDrb
	 qK3jb4LXb6dDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BBF3C02180
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173680835362.14146.17501651749170915363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eb43430e3b3a4186c8c2a6d4fe7f9922ef2703914e57bd859b4403c52f4e65e
Date: Mon, 13 Jan 2025 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736808353

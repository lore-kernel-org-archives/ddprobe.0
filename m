Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BDE93BFE5A
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 06:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779775354; cv=none; b=DsMM6l9C+y0frNEyDHpf3XWGCKBZ0F+L13dM3C5TLgRuc2J4az9m96z8T4kw5aVMb1WYKm7la7dOS7+lJYID7fc3yjP2OJgtYcsfBscN9InLTwGcbOJl6HlxP04rK0qzp2B9ltJ5EszLGDIT5A0oQDeIBb604e7/8xeFv52i6pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779775354; c=relaxed/simple;
	bh=MdlE7iRTh15V6AHfIZEkeIf2akPi04X6jWF1hbn5xHA=;
	h=To:Subject:From:Message-Id:Date; b=lQWhp6uLIwM0PoaQ7kmaSwe9pKpLiz+ccjcJbL7aN53/ats8mrA2R8DO4I729IvNN3ZBBCmbpnDD5oTD4oBr7JY3ZSEcWTkbtYC+8duMq+URH8pOibGeeYR/AJL9de1riXVOic5MVwATKBJf0MqwsaYs5x/DvVHSNqUusWe6q/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aYlOBdrF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aYlOBdrF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7F91C2BCC9
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 06:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779775353;
	bh=MdlE7iRTh15V6AHfIZEkeIf2akPi04X6jWF1hbn5xHA=;
	h=To:Subject:From:Date:From;
	b=aYlOBdrFS9qE7WcCvGrH6yD1Qti3RZwt5rCmzoLeLndbeaH6vlCl5+YKj107VlxjC
	 PVkIfMrFwkC4k039wVVINNL0LRC5v5ISG7VnzEQ/9amMAaZR+7QXad34Uy3YdpWbX9
	 lLaz2R2plI9W29H9Loua1giRYsCjQK9UjQFl+bszjLh2u7rVYWeeZiirJ+knValHEK
	 52ikClBRpDwFuKdJwppaf8OCbnyzAzqnypcOTdAuqMkAF1u9EqcCGyUsJNIQr9ZfBq
	 lIWTfOeQOWMki/K77LquVjlHVWel1yW1wGzDZZmsVc47ESILeq/Q5/fKVfFak4guKO
	 YgXdpw09rymjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAD0CD5BB4
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 06:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177977535369.7252.9548013657977515413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c339a3bf4e679640dae77faf4ba48d892cced17b837da3930fddf0a76e1702c
Date: Tue, 26 May 2026 06:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779775353

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08C9B79CD
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 18:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771784094; cv=none; b=WTnpXV5PSt9CxPDUZUyH1KRn9XRfXq93KGEPh+z3UlOnr4TOocJrk3wXLHxhusTYpZ+4d6EQYirBWDV9ORgpX4bP9jUsZgduS1E7F3QLe3yd7CCf3hTVrVQ0fHiCCYecREiQeJ/TB1xGR3t8OEAQau9GgtXLR1ZCqo+Sphc+ig0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771784094; c=relaxed/simple;
	bh=v9gIexTj9QZ4odwRufXHSBFKRS5MGRD6SU/leBmSyHs=;
	h=To:Subject:From:Message-Id:Date; b=UhcUHbKpgMh0rGIFirfPacqohmNBbqSKB1Ec6fKfiQJ9O60qOax0sqfTAfCxy9aXxye7NkaFMG96LKbWJd6nmuHBr59UDTsQGkQIwURxobakXqmNViHmtKdCBh6VCrVp73uCZYaoI4kO3GQMxFOeTDz6ae6GjLgsyYWryVNtNCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mVJkeyab; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mVJkeyab"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD65C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 18:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771784093;
	bh=v9gIexTj9QZ4odwRufXHSBFKRS5MGRD6SU/leBmSyHs=;
	h=To:Subject:From:Date:From;
	b=mVJkeyabdmlveEnT0Eu+h7w6oi93J8EBdqn33sp/oYk38NzrMuk3gBsNIV9wRbJoT
	 zdTwV8PTe/W999Oiyu+yF6/89sW53X4KmHgQfZth3iuATRzUyfm3Yrf8eotVVljigt
	 MMp3SnMiJahE/CcWFOCD8JkjhsFb/RlcDMwhNhFOpY5RcbiD583JmWK/AGTl5T1X32
	 jqpOGunNBd1YG2ku7hcNM6bCvyNtcQt72aXSFxc0w759B36wfG7IDET2ph2nkkSBmw
	 ARJSKzKMsuiHYSrJb+S5OwY+35SJM8XerSS0sEkwWCoKpc/XHKJ/EqHOG4+3tvG6Xm
	 vtHZyKvsLQZmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903B7C624DB
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 18:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177178409358.31789.10071158548465480365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 880c8f7dbcc829f35d9f1418f512d103448fe094ed6b56c3bebd303d56a84a56
Date: Sun, 22 Feb 2026 18:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771784093

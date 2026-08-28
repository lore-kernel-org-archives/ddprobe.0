Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A581299929
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787945434; cv=none; b=aiQwiwU/1a2PY5dFAzNwlHXTSLwd6dxj9g+bLQABDoYKKTwr0ZCtRYPy5nqtFiqGvOgCLHdc3vxdPrBecIWn/FMKHHu6jo0lF26NUCiMrs+uASs07ESRSDkLulHptFMl1rYxfDsZiGHCk2rFcaHUdLlPJTeY3oCcgOcP94xtejk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787945434; c=relaxed/simple;
	bh=GIwbU3PixlEJ7ceHj3tFE4T8D0DenzQxMDWqwKsXxKA=;
	h=To:Subject:From:Message-Id:Date; b=dQucZvfwzLvvSvxDEkaYUb1MmnF42WnFvwcirXhluSXb71I3eUYm2oV+SdMg/5H5fRS4WmACJkVeUXDczUTBaP80IizAy32XeXyf9R+HOFmQ6cEszoFHlU10sfAM4dSn91cq9UkoNXL7+owSAHLL2plwyABoX4eZyYXDzotNqiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WyBb+aIw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WyBb+aIw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C56C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787945433;
	bh=GIwbU3PixlEJ7ceHj3tFE4T8D0DenzQxMDWqwKsXxKA=;
	h=To:Subject:From:Date:From;
	b=WyBb+aIwBvpa0lI0Elksm9RCISJ/g+b/3rVBn5E/PpDs4uU3/Au1p69FiwDlsJ76p
	 C4OaMOm19gHtXVjEkRm5h0Lkz7CX/sPKoLtQk9aawxkQ2/vGR1kNmYb/zBrihQgu4/
	 PJKSPkvIdH+XRrxLtoqn4ihfn+54KqXXeG9zkyHE1PfcByKTwFYNNrm2gKUzlm1pNn
	 xBlk6sJEjMaFwuNDcowysBDZogVHQnTQcffU/ZT08dnH9TCR0z6trbdFYA619CCnco
	 EXrC9g2yTc0MSZ8B1G3Mtos+KLrO4MWVqoUkNqoZLDOrP+VnqQ+2lKBzvud9beJmkI
	 lTOaZYh3KLRXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD1BC61DBD
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178794543369.9837.4306962864004032863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f01a225d43413f720db9c31fc65a7178e661cde0fc09756869642d417b0e1ac
Date: Fri, 28 Aug 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787945433

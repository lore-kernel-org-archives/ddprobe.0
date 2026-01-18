Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E5871ACEDF
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 16:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768754634; cv=none; b=aRw2e3FSV00El0Bmx55UVL/ZTmWcZhs+uyeMKaWuprl+d9pt6lu+9zYIpMJ+r70J3G4dCYJbFIwrNO8QsBtMoJsYKRbd0QwG22DXyJ3VxcHjyw6tmK6vu9j///D8p9IhsP9mws56u01bRQpP2wDasGtiuBBkZ+M0tArT/T9DaHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768754634; c=relaxed/simple;
	bh=Vo3LZWKb1VBRaaJHxCyzuRuLwiS2tnGWoklbOAz/xPY=;
	h=To:Subject:From:Message-Id:Date; b=I1LX8bkGwvPp1SZ1YruCDeeWk1CiMw8seKnZKr/livktmrbYThDynPSN5Ogs8zFydhUw1IcDil+fgv9mxxGGOC+hZO1D/IkQ/QFuhA6se1Q38b29RwR1UkY8ZR1e/4IDUVVwSzayg9oUkNULZl2C7TLJsU3I5YT3Vv0ke6fEALI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OUQJiVnS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OUQJiVnS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E68C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768754633;
	bh=Vo3LZWKb1VBRaaJHxCyzuRuLwiS2tnGWoklbOAz/xPY=;
	h=To:Subject:From:Date:From;
	b=OUQJiVnSbJlNsu0qzt9SnNb3vpVHhVGBNZCgJZSoy5e9+NmMNkZw9bkOSZ3KyOP22
	 6hu+cH//vWRfSqjW/qQLh8oMSF3IgH47CbT1PfWD6aTZusU+nQ5c8BkVBjugh+NCP8
	 pXDFao9PxVtu0eYYRWGJUOtP2G+EWZvdpB55SuyS62K9qYxweFanmtKedp1/CQ0arA
	 EP8vLyL5MoxU66DqaKNBnJ0MaG0mAHzZG5CNWDtkONl23DDxBgZ48JbuRANUWTbreL
	 Dfzx/XodlXoJn2YcwpvFqGD/PUDNQgYNPq0/szagchzHhY/ZmoHy1mX0pF5nF/x6Ot
	 WxcGHEg09QaFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956EFD4A5F4
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 16:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176875463358.11938.2165032089498184842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3d6f0610a5bcc4d2e98a4d4a57bad00fbf5d65f1fa2474a91a8d90b907b6927
Date: Sun, 18 Jan 2026 16:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768754633

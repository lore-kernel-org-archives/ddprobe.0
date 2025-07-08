Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27DFF33993
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752016195; cv=none; b=kclpUyQSHKmnqs0Aungdu9VAI3MzkBSgUHjD89nKRo3Pu+Y3n5FNkRieVIsL7zNjDOsipbRyOvpBuij1KZ4CtpbyXgyMOv+YvzKC+sWescKfwoOcSDOxqJnSsbuJ1vdxdmZi0fNyfOfus01SQ92VUpilibvrOBBwOUoV6/6w+S8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752016195; c=relaxed/simple;
	bh=JwoYVQtLdNqURCW0i5F+WCh2ny9XAHmsOY2tk3JT17U=;
	h=To:Subject:From:Message-Id:Date; b=S7DuveseZ89TVeKMYd0iy9jv1+fk9R1kyVS3gSCPkBAAvvFenbWLViqsPWDOEB2yQ4XYU4VbfASfbrUu2TQBTY0ngoihqMBY6k7AuYIghDboAX7wgXfZ2dAnTWDYPOPimunoZYM4zVU70zXbhKaJUa71ncAU3xHWVUSRpP/+VS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=td18FCun; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="td18FCun"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31FBC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752016193;
	bh=JwoYVQtLdNqURCW0i5F+WCh2ny9XAHmsOY2tk3JT17U=;
	h=To:Subject:From:Date:From;
	b=td18FCun42WIKhQ6hWxXZo+KrUio707sXXLa4oefRzp8V/qSeAjSaCwvPCxN75Yig
	 dbvhV4k9asK54mzMO4qeKdAIz1PUWMINNOlTUmm3LGbDhhOZSJaQgph1ByHvUU4MUR
	 Kj3oLHF0zq0qApFi2a52ogenpFXYeve3xWD5WkW6onuT5jM2iYmcgkY0yJgEclPm1D
	 2dlXTi53ODSYfHA5XV9V7DSTjahamTuc+2DXxUwA0ZqkcXFNJ42h8pI6fsFBlPtpgS
	 RWomjXVAbDSLh5C7p0SMPAubsZwIElm9nVfwWH8hrb4K20VY4ApAHcBHzvTWh5LiD1
	 o4tPc+Xq9UJ2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C45C8303C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175201619358.10847.5158937453619223609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fb005c858dd413241e62c5db7ace7d8a8b50f4dfcbc7e83d1e701a592e5dcef
Date: Tue, 08 Jul 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752016193

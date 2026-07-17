Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69331AD24
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 23:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784329714; cv=none; b=GTUZjIz0ao2j/Zz9KCPjXDiOyJKJIeanSLN3RmIP+1Pn6JQxNfQokWJr3bfht8S8S8pQ8CrU22ukokQpxkp6UbSVUhgY6IJT9MY8Ix1Vz9XbaFbOSBwRFHntMye++q4EK1sdD/dJRs0oZ8wzPSQh1c26grOrYXwGJDHjVGfQK3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784329714; c=relaxed/simple;
	bh=1d1T4CPMM86ixGsgI/z6TZwW5NGSA9/YM+yMae4iAUY=;
	h=To:Subject:From:Message-Id:Date; b=Nngy36RzEvVyOJukCe/ju3q90FhuNgv8A4sH88AiErXGt3umW1ZWp55l72JMSnEsYzZ4eNgK/wqtOoEg/JBo+UaIJ54UHmFiVLrdm8mrx3gs/dvuzAXNPU8MMkokaVkqviQTXaImJSBctmsJH+aQ/AbJwwA+eMTokmeRk75M4sU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mNRFjPzD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mNRFjPzD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E04AAC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 23:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784329713;
	bh=1d1T4CPMM86ixGsgI/z6TZwW5NGSA9/YM+yMae4iAUY=;
	h=To:Subject:From:Date:From;
	b=mNRFjPzD89BL3wvXAFnwwA/bS8F/OONjIUMJ69JChsH52J2ebFX7BeL1CU8P81/h1
	 2+Qph8f784O4/bHutSjcoZwJGey5FlY6HpJPDeQf404fLAsMNMHEje9kIb9z5/gdiN
	 n7O/V1sxplGPasX7TPE/m9ROXe8gadyaabXfQry8ML6ZpVsMBQlv7o7vflsTrmqCT7
	 +Tx6G6zJyx1AvRJjG8S2BMkWjATSxEyujcBJlqxXWCmMkYjdCGcdQJJ6PM7yWY/Kwr
	 zfBEvv/iG2qAPIr9rxOEk/i4kWml7DhgCgfNu7sOhaeGTemcSPNAMhcwnNRG3JE/9e
	 KcAcX1ATXxGxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B98E0C44516
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 23:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178432971371.16302.6671310272546169812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24584a5013a8844435fa4e95cdc2748fab1ef145d3837610d2f8c8013f12776c
Date: Fri, 17 Jul 2026 23:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784329713

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8E41253F39
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 09:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765618973; cv=none; b=IDobuXSS4+wasYz9qAumeOSI8r2DHSJKW3bRbZ4m8pbN3x9hRsM5Gojun9kBMI9QqpIbephpA9FkW1iserToRL3fMxhZ7S19OiDEvCVG4uBMqj81pV2H1Uo3MvL1Y/YRDWjC1RIvVPZBQPJlguWuA4CoQ90SrTi3sj059+S11Yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765618973; c=relaxed/simple;
	bh=xXCdv6hIwddfF9fds9v4VTnNwcKA2+ZYDBN3BXSd51E=;
	h=To:Subject:From:Message-Id:Date; b=FnD9MxkuvesuT3GSoByxPCHRMyNrttgbLTb948kiU6kS5a8WTkLQF25+zO38wr4slq4Ue0fhp02RGrNFDCC1EO2KsOL8xWVfOA83QvC4cB81gt2lfrIk1IE7dMVo1H9rhbE3NJU0o7BrNKBMUTor45aKGz5C7i2fSjuUaDEj8vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mYA0HT9H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mYA0HT9H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9918C4CEFB
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 09:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765618973;
	bh=xXCdv6hIwddfF9fds9v4VTnNwcKA2+ZYDBN3BXSd51E=;
	h=To:Subject:From:Date:From;
	b=mYA0HT9HnoDWpGmUSpIM7UvQrGJqwrhRsnLY+TALybFEu//Dbui4YSUNvdma4cJEu
	 MYvoABgejtoIJMd0mrXxb8y7Tb0vrPZkRoU53811yE/zfBR+ubNL8DuEeCU4yql9hn
	 Sl1dGu4HQYuNiYoUI5xoJjvtnCR2R4fPoIGovYsFKPFEB2RoQUw/jrr9oU+ZKdW0bx
	 gR9VnXbKvXZC2i/vLJfWcvebtefa4mrpLBaYo2spKgRVROsSvTcsKLvXPi8cYqOta3
	 NS9RS00IC+/+AgCINzWqVgbUgWkAT50mAxRHC3GCDhiUkS16BBsSO4dv0Xq6prE/7u
	 QboFuAKgUccXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D26D59F7A
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 09:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176561897358.4927.8956472116994568857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7aff2cbc16d24ed489809c5a7f953406721ed36dffea33004df2a6faeb33344
Date: Sat, 13 Dec 2025 09:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765618973

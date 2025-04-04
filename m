Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 488B522157E
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743795594; cv=none; b=RLWQeVzSpuGA2M1eYUejfQ1pbpDLTA3mnG8a4URhobxDSh7rkqSIsbIkCMwctti7Sx1BsHIrG/pHBqViaMxAh27SSIGWFLltyElj5SWIrSLjDwP+p0kjbVEmD56kq8WyAia9xl1dCIICOjAVhsn1r02JdkM1f8B7bkVVL2KxJuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743795594; c=relaxed/simple;
	bh=wAwTNq/M/vZ95SIsYVt8alYSF2nM0B5VHm5VaoVNxfQ=;
	h=To:Subject:From:Message-Id:Date; b=RU0jDeP+Qx6R1JebzaCt5RbO5s+N3wE5+O3SCP0JpYPHvvnc0WKXEYMKZZOnIB+C3etYMKo+W5okR/84W3AZ9kvkbb3tMrmYIJ2kuLbeG3l3LphQf+S4VYprxf47EH0DYbyDZprJTj74lrntz1hoI/BkJ2f7+6L3nWT6gyXU1WY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L1XrKuGR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L1XrKuGR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC07BC4CEE9
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743795593;
	bh=wAwTNq/M/vZ95SIsYVt8alYSF2nM0B5VHm5VaoVNxfQ=;
	h=To:Subject:From:Date:From;
	b=L1XrKuGRiME9X5W7PjqRpE3Gu3lDSCjTFhzuFPe1Hyi7VW4NCNQAKiTOx9muMZOk4
	 uVJ1q3Dn79Mx8mqU5IPrH64c/EAYXvk7YMYw8hZ2RVIZEaafQMCHkz6XXfi4LkQ22y
	 //X6FP+sNfCQFqULhlX9jmzFgeQ48tm1DKef0mP44q8XG1sBwu2XemxjkU8BF7GqEA
	 LeRN1wl6ot3MsKqvGudrPWwjzl2Iof8OQIzY29L2YcOGHne4QkKfVlVX5qqqUs9GX9
	 KpEn1WgtdOGSoRUWBiNdm5r85woSviigdNiz+czi06ag4Pg1Ma5W5eEveGpn73BYeO
	 ykfk/xsxHBqmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98DDEC36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174379559361.983.13561254006180016049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f0fbc1fe0dec5c00fd0f538e594c8eaf9235251020c9891db89b72281d7dfad
Date: Fri, 04 Apr 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743795593

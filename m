Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343F03C0B
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735349754; cv=none; b=rp7QNd74xjxj75ER76NFinX9lmhqO9KGDxey10aW6iBL6bR8zbrM+Y6X5voQWANpwASlQC/JtW+Vc75tvQWMWhk/bBZHqwtEiAA9QXzEsivy89TQSMPHWIfFe8t6mEL/imtaHtW8sqle4kxAcoObIAP5xzFw8oy0ehvc1iCuNWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735349754; c=relaxed/simple;
	bh=39A88nJgyEs9Erb0TM3uR4cS2i6kz4N0U3tiHoSB6UM=;
	h=To:Subject:From:Message-Id:Date; b=KpZmaI9vTX7Mmj+fHAGhy9d7xZYD6VovtNKTIbcbwodXjgQd8Bxg0RHyjzIqCr7RaRQmsV9owtlDQgxjwt2pmjDKPZqBfm51L888/Dvt0RuUqw3ugY9tZBFl15ztkJISi0f+eC599iGEQJ1Ak52XMcDwPGp9rmFJqik2yS0Xdmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D48ZICJP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D48ZICJP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4B83C4CED0
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735349753;
	bh=39A88nJgyEs9Erb0TM3uR4cS2i6kz4N0U3tiHoSB6UM=;
	h=To:Subject:From:Date:From;
	b=D48ZICJPNHcnpfqy+mla1VVowMW8tOunVuM3kKKgbp2eDM/Cn6bBc4MYR6zqqntdN
	 dt4KACPXdZKMgNEHpf+xcObc8EUUxtISVlpctjMhlTi6zaEYGqpJ7+zltRY9Gd+dRk
	 ZtN0Uz6n/WaxpOPcU1ctjFsZ6b9+2wWAKi5XUN0+25l5cuwNSA2PPiWRdXu40yhkPB
	 U4wPDMcmLJxNV8na5l9n1iGBO54FKyyMO1Ool0LQovYp3U9CnsSsiBGAVI2pAGBFIk
	 tvSA1H+f3HP7PecwyE71ML1Wp7ePUUDHpHB9kGuAiTN+fqm1aEa15VZJEOPRxZgpUy
	 kXUdManbKHFQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D183E7718B
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173534975359.7224.9122745697155734051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e31eefee53beb8a5ed07020b4e8ac40122766cb0cb5be27ead1b4d441d2d4b8
Date: Sat, 28 Dec 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735349753

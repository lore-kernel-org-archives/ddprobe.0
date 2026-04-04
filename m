Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16AE529AAEA
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 19:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775331934; cv=none; b=e3ItLu26z+qUyZumiMeHBiNG3Bc22aq0zaz9OesSGP4ad82+ptE7r4EFVGWeJKFQRC0OATKWLC0MVOGErMpUYag82p+qTtqE+iiEIKwRmp8iJA85loCirlPT+hqGw5B+sS0REHNGUPRMAHnoTyKmQ5VhHPaii8BI30+oLtUnwNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775331934; c=relaxed/simple;
	bh=sPYLn/8WPYKDq/TAz/eC2nVdckbdeiJWDtFgeg/wZTk=;
	h=To:Subject:From:Message-Id:Date; b=DPQ7lriAdYpWVYQH9st4YOoq/AKz5Xjm9KNWIo5lmTHZilrj2Dpj9egndvWtZGF0g7fd8OyO2t4yG8mvRpborqYUl4ErHqUB0pJ/KZKKQRpP8PQfZ/h9yIC0dn+XYQAZzF8cf1H8XiEtiQgQQrg9Rge5Fhv2vGytwP+xoJj1tAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ot5Czlse; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ot5Czlse"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C243EC19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 19:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775331933;
	bh=sPYLn/8WPYKDq/TAz/eC2nVdckbdeiJWDtFgeg/wZTk=;
	h=To:Subject:From:Date:From;
	b=ot5CzlsePc5M3wzdlBPi7qQ8aQ6adO0rcOguPLuo9iYbevAo/Og1R91gq3RPKJIyx
	 9S9TxlXWdp7RQnurSGwPweP9Ut7HHCVOXihIhMn1tmK30hJq5cBzqhrQl6a728CEZz
	 9fHAWoy1pnQAjOHk/Hv9Uzv/sq33zD9Ny//HtOvtdaaIR34/H/SkDfajBdEvzUXc8k
	 wl0D60qkTC261f38FGMPbT4nuGf9AGUmKbIAyj4MKQawkhbJ1bcOKG4UjeXQZfLrpS
	 QIsPFRY4mybgjyXhirdYHt2Ed6qXn5wFOcURNASKKmqVcSJCXiT+hrGD+WVVHYtr50
	 BDS42dDy75HNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF4BE63FF6
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 19:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177533193369.21717.10391237323056704696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e4a1b64fd5646ec392a0a6670f3b05bb1a6ac8db354aeb6da16872092809c09
Date: Sat, 04 Apr 2026 19:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775331933

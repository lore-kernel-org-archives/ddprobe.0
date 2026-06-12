Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FFED30FC27
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 19:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781292994; cv=none; b=kuorWbBKtfMcIMhdHCT+CC7/ESgCLcSS02rxjQ2IG6cDgA1hCsViRCT+NNchzDUtSj/Ja5Ydkaui/MynjYg1Q5Ut5tt/QR2iugnDPwR+VKIhyQ8C9oidvNP37RueCabVU+AQrATOjeKyERl6Gi8WhZ791XAslPYjOtuWO531+kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781292994; c=relaxed/simple;
	bh=m/s5kW0q05GAHMaqnEJITc4tinVGFKXr3p6+KHC3A8A=;
	h=To:Subject:From:Message-Id:Date; b=Q5sZJxe8mgTfMFa/Urd8MM3KAG10qX89O5Xhzz1jR8ZVFcSlIhW1CqhWKrwt3v/OjDTNFmcHfXcuYKIA6EhIqJnkIa199GTjIa7DofQhki5fFJfM2K0SKcKkcugPW781I+fWQfPQh1Zq2rGMXqXi1sNi+wT9ki2osghxeu9rS2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UjctSzv/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UjctSzv/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0DCFC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 19:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781292993;
	bh=m/s5kW0q05GAHMaqnEJITc4tinVGFKXr3p6+KHC3A8A=;
	h=To:Subject:From:Date:From;
	b=UjctSzv/f9HEFhficgC9UGNgLtxsQolcVR6PxJvafYIXplXTmJW1mZaSx+56rGS2p
	 j3KDDA++p1jGxCFFdbm6o5nsmXXYQZjUgHQ/KlngdwRN54HDOFpa721qVZfRu7IR1g
	 3y1wIayKjlpnaCcnHSg3MSirskRFqer8DiWvt6GNeL5zbQvnaYMuUAqcNZG6XWC0Xp
	 xhigko0CvYTtSe10wsiidjRA7EsQFQatLHOMvk6OggvrtFtgUhA9EXlqCUjA6GcHnf
	 KA5xuArseLi6+yQ8OtVS+/4lVqsBa9UVaEuWDoAYvJbmCMFReWHbncaSmCPsZrrYEn
	 rkX4qGcP2Hdmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8065CD98CE
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 19:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178129299368.10724.1784977010217524035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f6c3d2861e5b0fc5f5ed4fbe1b08ead3e8a24f32cf93707ac15d4717b07512b
Date: Fri, 12 Jun 2026 19:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781292993

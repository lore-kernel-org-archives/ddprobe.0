Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60D592EBDE9
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792294834; cv=none; b=iInpLF0IEHmN4wDNeW+FSrQBD3vxZRLyFO5PLTFtJKm05A6atbnH6fD8GasS58SeFXsRWr0MftANvucoTokf0MhiuIYXiFNY368/G81Y4kQbQYRdwNbglzKDHJORlIqXcgEQntYHtHW6PIdM8Gaq8gJLm1kSxREViM0cA3Ui+Fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792294834; c=relaxed/simple;
	bh=MKmEwoLvM3wBR53PpeoIpUp1WxRk1dlXl/ietJyIm4s=;
	h=To:Subject:From:Message-Id:Date; b=X4zoeZAN2xT3UyScre3qT5W5S9cgBuiz2AJKKb4KAq/ZPvV4C6bjU920QD1LRjo0NeF35atatlp8AWFAdPejk/2ZueW2PlEIatP80EawHH/K/Zg0bOeJjQ873UL7OCAx136CWMal0tUd495URwvhAxyGnCIXQN0CFLXGRfMV2Bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qGlqnGk8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qGlqnGk8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F54C2BCFC
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792294833;
	bh=MKmEwoLvM3wBR53PpeoIpUp1WxRk1dlXl/ietJyIm4s=;
	h=To:Subject:From:Date:From;
	b=qGlqnGk8Cx48Ok6iIw5FxweS4nk/DXw8TeVCW/Xy1jc4UjoCi6nhe3s6nUfOKGJOh
	 K/l0CzN1kr8pQzRGXMgvj4PdXB4s1zEcPUzaPIv3KcoRTdebYzdOpVyJ3IN67YK7wc
	 Ou3RSKyH6TB0Z5n9tHD5X7ZY4tl8mTO6f+STTfUK5mbx1oCIXM732ZpmfYvZg7d8vK
	 rkEcKR7J6VOzGp1d/+h7xyn6tysXFLdnnTOE32lITWZJfeaCU3xozeM1q6fWNSqQAT
	 /ji1E2BxlCX5I9m9ZxvkWU1eph75AfSoDn4VGE+9ckrjjjui23cQ7rsDbxCyZFFuZl
	 UcfhzYmffEJTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B36F1CCA490
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179229483369.8532.7756874230106770246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d73117bca24226856039f04fa1a72f912946bc5c244d99f6fb75365e0937257
Date: Sun, 18 Oct 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792294833

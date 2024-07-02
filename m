Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 480AC747F
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 06:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719900323; cv=none; b=SmO6onhnnpMAG37RC4m06uUZmkRWW5P9x/pjnseb4tvFfTUcE6hM0gTpbm+IVfK2U/vOns+446z5qYwxwE2LA0j7CmAZckAJX3pL6xa0wZ/CFvKYfDneIJs3UBUIY/Nn9ZyZMMmkoi9RP3PGYDKc4A6JJIk7fqGaHo9HI37fw4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719900323; c=relaxed/simple;
	bh=5NgxKD2Ta8Pat9xpE0UyU1EoLZS5prr9m6mpeqzmcXU=;
	h=To:Subject:From:Message-Id:Date; b=s65o+g7j6LuTKuTWQHtyesSQrQQC0hjsHcyR3Me3VHiy/J933c9i9H6g1zGVy2F0M+GjFsrQj6DgHhAn+wAWYD2C1B4q9ZO3/DTJLH3jIC7L5cXS80sBJuY0Qm+n+KfgY7dZAcf3g17jmNotCoC1bd+oriulGbIQUA37oNPdOUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e04NAilT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e04NAilT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAD86C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 06:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719900322;
	bh=5NgxKD2Ta8Pat9xpE0UyU1EoLZS5prr9m6mpeqzmcXU=;
	h=To:Subject:From:Date:From;
	b=e04NAilT6v372O3R9lv/rinWZue8NFULlSbYYWL8tfAILRO4vekmSud33qpnxCHkW
	 y3IuzsvxHDKaq6ms5X0Z+TwqH03/soVUZ8HQ+dH8NgpJcdpD/WWpkm9r1TvMrhHt/m
	 ceVcHFxSAXxz5tjMXguvk/NT0fdbbCnhHrXjnCrh1XEpy9NKcVOjvFxwXCVjfndO8G
	 bTPnDOobyXusJ0wMAMEaC1XxV19h3tRjmEMj+Uov4eaETOLJptotDD3+UuzEg3Ldom
	 aqdkiBZ8lvoFyPGuq6Y12MOFM1VK4X05V2eMQRiHNHgDcWfm+uzpCa7dBbf1R3NC5H
	 oks1Mr8ELT4zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5A66C3064D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 06:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171990032277.14786.13355924908529904335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98f5dc3ea90ed88c4959575c3284654d73d0c4681a841ac2ef428731537d095f
Date: Tue, 02 Jul 2024 06:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719900322

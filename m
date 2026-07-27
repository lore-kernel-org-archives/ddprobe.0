Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6A083C060B
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785145234; cv=none; b=fDv7kdjNzD8d0SfKdomrfRotkJ7yIyZLvBCHkkvEmBk8tAzX55wMHPB7Ui2QyVU+IJHlZzkQzxL+uPWHox9++kphGARgELOXst51xx8fltVIAwA6ozO0M9CmxJDYQLST1zNl2CZDix0FueKKta7M55g5EGpdqlm/orqJuTes9UE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785145234; c=relaxed/simple;
	bh=FIlHf8la9dTO5gKyp9LzuYQ87M8aRiUHUx9g6Vtcqos=;
	h=To:Subject:From:Message-Id:Date; b=p2Pmc+YPwqzg6mGYqv8I3mRpNoCn3nljNcgkRDOyFruWJ7t8jL+YhKpvexkSFiXp3Xsvfbw70j5Tkf+00umfkEVl0my5KGP6MlArLcyOJPj7zAT7kPF1KtFB3OU2zIVjksIKjuEBBG0OE1bzPpZqKe+EIhCoGgK26Uo5i+lZI+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XVqc1eDn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XVqc1eDn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD373C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785145233;
	bh=FIlHf8la9dTO5gKyp9LzuYQ87M8aRiUHUx9g6Vtcqos=;
	h=To:Subject:From:Date:From;
	b=XVqc1eDnMiVnCqt6QUARCuPM2KqFO906SDeUdH0xtFRPvYBL2drtZlGmzFjlyTqMb
	 aQZilNjCTLri6XIu4ogn5nZTvdwvndnfS7EbV/JHujuGINulZbhQ6ehCWric4vQ4UK
	 eKQu3BO2tsvqq7qGkID+5eDsY623AqRjiiZZveqcTtiarOTlty0gOtKHEo7iO3ha0E
	 AlzE422F4YR90O84/bRH3oW40vOYQ2lcpuuDx3L/52HfZvWYqLxPh5BiOy5CKDpvIw
	 gd7HPBDuEHmaxg/oeeSPhZPiJ0mgd/3fSH0GGaaBgdBzmZ/8wnEao/032/stVkhuJF
	 ahIfn+UINn8Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96A7C531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178514523368.21297.17047620371595648544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8d0b198207a7e5d47a98df6bb490687fdeb865beed8e0e4676df587c023badc
Date: Mon, 27 Jul 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785145233

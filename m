Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31AA21798C
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723306554; cv=none; b=uU8NT39HTNokeq1IRULJ+NaIuHIKsRiE9UjiUf7Xj/EZqNSFodjw1N5WWo26fuurUCLbynP6Pf+E1sH+e8i8CGmObgZYIqpiuTAJuR5+1StTPDgCoQo2+Pfy0AH8qxR4MpD0T3afVX8/dL1HK5FP2Kjwu4nlbJTuWwWFoWgWP2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723306554; c=relaxed/simple;
	bh=FiKf7aQiXPwirXfGOXHudHSlktRjirHJETA1127zwbQ=;
	h=To:Subject:From:Message-Id:Date; b=GvvryWY7QM5lEd1inBDdvqAd+VhUDfCVJb448D0s9zNBP3hjLFVz08d8iVkJXn8bQmbO5OPWebbBC9JF7hL3FgHMfnV5fBK1EgcDuVNsRUS/IumTNPtDxZN2QtbmO3j87r1RG61jmB4rNfS8AUDrbwcTxTJ330KikNhbo98rAeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a8BaXG1p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a8BaXG1p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA350C32781
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723306553;
	bh=FiKf7aQiXPwirXfGOXHudHSlktRjirHJETA1127zwbQ=;
	h=To:Subject:From:Date:From;
	b=a8BaXG1pKahQCh/v5G8w2KlD5xByi2M40TQv8Gx5Je02rJA8892lzsR5HffaJ9zkK
	 aEKoogIWtkknmUIrATFZ+htWw0XAbVw7CeTZR1oyriBZYOUIdOJDOmIFXgmYm7Bk95
	 vL2BsvC1ZZslXHOiwFBbvU3SMe62RAdYwK3B3hT5Dfc+T6NI64Yh4yTeeHQST7mypy
	 hkkaKvxVKWECE+/w4rytJLogsLlqFWvvCLHh6gOwQeToiACC2GkzEe6fcTKiJm3WUQ
	 8yGAxx7udSEkgS9k60ci4ixUZkkJjjLhgvmeZcIw+JUuNe1WujG/syqGngYlKnJA60
	 TwXziqaI2/2SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D5BC3DA7F
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172330655358.18928.1272358343452282570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaf3302e157500f83bce6b2adc0da299a883b5afd6295f7dc4c92cda9cc25a1e
Date: Sat, 10 Aug 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723306553

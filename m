Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4185C19ADA4
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 01:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783129114; cv=none; b=ix7ArWPG8v0fNQxYtYIshrlr7yVJoyE6sAmkZ69S2ImauJ3qqstcH4VM8J2kj6j/5NaBDAt0HpfaY+eVCxNIcdiK0USCrtNyFGStl2cahfNePLDUNHjmNCvpczf10Gn9F20OAvQ5iEIpmQfJQPpwNI5XUwIEqfMK9tl0VmLk70o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783129114; c=relaxed/simple;
	bh=5qZUv5wOilifz8LeZsOb26dZpXaqj8sPh2ENyPbKiOQ=;
	h=To:Subject:From:Message-Id:Date; b=j0LVcrrXM3QNZTG/H4QHzPCXejY8pzdh2PKURZH7BJIUFAg5+/p2WMyUJhI78Pas8Ro5cbngw6eQQlZv7/31TgWyfpq6pKp4TIwDvlLBPq/B7NNOm2N9KnROQa2rhNqQxPSrJpbg3Zmg6AjG41RU5044/SplkecjVYA24vAKcho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HL2FNEV8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HL2FNEV8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E67C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 01:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783129113;
	bh=5qZUv5wOilifz8LeZsOb26dZpXaqj8sPh2ENyPbKiOQ=;
	h=To:Subject:From:Date:From;
	b=HL2FNEV8Rjuv3ZatDokgbTI2sVMjm6/tfB103cajqi1yWFQ7Jz+3U4j44uBz7//Yt
	 GQf3NyL7YaaHECodZ5+HxWuHU3tPzMZ1Dag/NmqJhCJrXRX7J7vcE7vuOPwTMLFA/E
	 1jpzfeFAK6UTMp/QaxEehOhJgMIm7wsfv3opAk9MeUW4xU2OAigGiPHsWEbPePKFb3
	 0S59pxPCOqg2M+vI/2jEFavjbpw37dYluux+YqQ7w91gjH8Mtd8OGNa49zsmJNUHID
	 GP8bm7S8QLOPUITbn85Oirg1Cd3ZeeGpgbytmNeYaLLlrhtfjzg5mgOOzZVd4V7Dkc
	 AQbqS5FFkhP4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB52BC43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 01:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178312911368.15368.14313355826828665110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bacbb3564751f2cd199c31b5e093a23119db86ce9bdf5939db47ad75564b6495
Date: Sat, 04 Jul 2026 01:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783129113

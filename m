Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4637118C910
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 16:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740499734; cv=none; b=mOb32kfi9vBVQJBjHwAPxxkutOls2YODI62nhTnp7gP2d3JG4/QsInpp38dBIN6Xksift1hooFwKZvOgT4ZkFfeipzZngnVEIQJn0tlBtaGYzpxNjyrtg6+07uc9Ah0Mv76tcxMc6cXFmCYc9AlL+HbJRw4lT9SdLgmjOTdIUDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740499734; c=relaxed/simple;
	bh=SP+/CEm60LrJrg7vbn6YtiqQs1ONMviPSeyF/bFSUwI=;
	h=To:Subject:From:Message-Id:Date; b=bet9qwzDM1iSjtoI2qbr2Ja4poWO4mrVEY72KVcUbIGRFOAUlYSmRr1hIeCm9Re1islZ/gLhjyxfa8+pCG5EEq92s7VuU4SLsuucZ9qwRgEh4Ma6xIR3ZdB41U30bKp1FQ6zf+gRMUZ4Qf8ZG7NgqYCCxXhMveZFFwG9xjS+9ec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BHcv68zB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BHcv68zB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB248C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 16:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740499733;
	bh=SP+/CEm60LrJrg7vbn6YtiqQs1ONMviPSeyF/bFSUwI=;
	h=To:Subject:From:Date:From;
	b=BHcv68zBc+68vHnPkHa1e6wi/HsVncwq7RNLyttxobjHJSooFaSo4YNmrOvY/4eFm
	 taCgMfqZHhuL0aGSwOSulQCvOKsr+EaEPacWm5dbUSV0nfbbCV0FeP0rezq3HTDsOX
	 wdGcHWld0Yz9JMjholtyEgK+xzJODQsRy+24rY8uj7UTKiOPs7vAG+g6G4Wj7FcUnP
	 IJITjOyQAR2AiWaPrefcwsBb9bnO6GXHXLjL9kUGTP9KShS75jS98TPYTTCFqX+O4C
	 kwYUJvUNW1nsWtVaB9UyCiHjRtTSl6OogprXJHH9G1isZ6rGmbnFqORUBgmjjQgPbI
	 wuf6Hqlv62Gqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969FCC021BB
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 16:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174049973360.22074.18190762146847260479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2873d35c9a80af156a4925a1390ecc355e4a8f8987fd55677bd6fd12e3314bd4
Date: Tue, 25 Feb 2025 16:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740499733

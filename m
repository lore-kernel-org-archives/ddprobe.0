Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C8801DD9AC
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 03:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767410634; cv=none; b=HDdVjRNDzKjcFOzAsek96oX5eP1+yKhvwwIN3z8GrIgseXgUvYlUqpUEExRfU1PyPrLyiKAlh5vM6kYFochT1Sgy3Ihh65Ps+vV3cXZa3nG/ZJRFfTJvDpOEViFg0qe2TVaOSTKMGsZviF9L37/qI63Z617jK7XM8iUDbJ5ULcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767410634; c=relaxed/simple;
	bh=nHQO7jlddXarZtRU7UW/cQXojFFIDg9II4gFi95DEnk=;
	h=To:Subject:From:Message-Id:Date; b=Nv0wZpMisnTluhQe6TPCN+nlxCLfl1TQUjBFh/8Zp1HX0GyyKBM9jjNOg8TZQuyQFjODyai6eGolYYYjgRRt1UTfwgGxxHK/oJHtl9SC5d/06F/oS8OoUSIRxjv9Bf0QQRxas/hrKENnkfNvKQhcb9RQUn7E4F8qa9fF2GLDnKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CqmbujEy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CqmbujEy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A255AC116D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 03:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767410633;
	bh=nHQO7jlddXarZtRU7UW/cQXojFFIDg9II4gFi95DEnk=;
	h=To:Subject:From:Date:From;
	b=CqmbujEyOSyQ/0Wh79D0gwi830GAR024DrBJyqrpawgvv+Ue+wiTZErhLki02clZI
	 9b4e/iDQ0DickdRnpjwvRMqYLdRoWdMxU8oRISLDePomRmpiYUP2+w/RkbUSPxDqqd
	 WdkaYP+qWMYJepx9mTitv7J+QdVouc+qjUF9SrGDxfDKkNzGCvJwsC7/c4vv1bC/d6
	 o2jNlqcI41jbuLKJ920QHWt3ta7UjOPQT2oCzVptSU0jwPMKGpK5R4/6TxZ7ynipO7
	 mCwG1x6eooT/WzlM8Pz9cf25a3JxtS0JrvVFphqIzRrNP+iL27heHY76g6n2ZkV2J6
	 gvoE56Z8/50ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E78DFC6165
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 03:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176741063357.27830.7502228721181733753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4770a83f798caaeea623789dfc6b49bf2a049ebc44ccfdf74ade0fafbad5777f
Date: Sat, 03 Jan 2026 03:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767410633

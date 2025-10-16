Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F271304BBA
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760601594; cv=none; b=ujzItjtEnp5sC63S/6c02dJJ4kqByzcOGQ3s2FDXMGU1c2vSBQvUG7TKCmJbJoXCA7/9DSmzYfq8AE8Wh2fFz9L0bWrED8sagWxleWo7Mh0SAo5jSdHd+QP0lmED2uVzQrIlwNd2rawK9HRVWa3pivGE9NRGaS4SwnF44c6F04E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760601594; c=relaxed/simple;
	bh=6gM4vVa7H7w3RWupw1lHVaJmM4x083LOvu1FzbK5Ptc=;
	h=To:Subject:From:Message-Id:Date; b=Zu/vEBGJkRh8CbhevVKsvez3jRgn6EG1SkTpHcbe8Cm8XPwODJtFCqKeRH7SwfQ1/JOtSwhFk0ee/3W33G8H2RFcUC64lGvGzLcc9X/lo/nLg67eBhGLGb1etMjmOn0nGWgn+0lOF3V1rKeZhHGUjuF4lCnZ4tbhC9U1NlMP4IQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k7Pp2rTv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k7Pp2rTv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DBBC116C6
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760601593;
	bh=6gM4vVa7H7w3RWupw1lHVaJmM4x083LOvu1FzbK5Ptc=;
	h=To:Subject:From:Date:From;
	b=k7Pp2rTvS0NdnjKPlm4Zd9XH3OOKYunwTdvxcGF6H2+3Q+CkIiLlNAkbWczptBXDb
	 ePQjjZWGYslnKM7lLifLKozMDpoAvkSTbIXwZBnbmx26chfoF9X8qk8uSed+zC+3Mu
	 4LHUR8zgIbLbJb6LZo2IgBicyFZKYxpYLxZ85WJ2EUZ6bOQYd/sieMo+/Y3iu7pMoc
	 J4PCAx8A7q4tmJoet7qbg1t0dI+oMkQHIMspJaWUsuwEfSfX6a8ZMRTW3dSGzkk3X4
	 0XXlScIv/FTDzMFDaBfMHmpDuKWYbUBBCWKoYfgfSVUKQFFRvgNb2pFJydQGGMnYF5
	 YJy1+dWr9TNlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9247CCCD19A
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176060159358.30954.10516788485708098447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cefddbf250c539ab45729b2688535e3195c5a1fc5dc08711928b39ff604364d
Date: Thu, 16 Oct 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760601593

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E12A21E098
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 23:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780182274; cv=none; b=XPFhXPvLG/BZPWvpJ4DvcYo+ypmTlTgQYvAjyDtFYoGg+MchvggOhEGZMLBMLWqFhMdLIsGfHF441E7v3r2GUJcQh3iG1nXAJ8hrZXqaKJ5zS+xzct9z0BJ2j3tAHOfl6zn1Odh9ZPKrCmoP0sGmCEShxeYe4oSDyxsbYttaCOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780182274; c=relaxed/simple;
	bh=TWEHI4fMpca4tivFbM2wpWYQw8Yi98R6WgM7IZu5a+k=;
	h=To:Subject:From:Message-Id:Date; b=JrpjeQVlty/9xvsl1l9UdRTi3XMMbxlTWnKreMT190jHvJ8RqbXS6UuW/h38i3FUX6liSbzV3Lt9dhwSknE6F0zzo1FSw99l45IzvSTvtGLRdr5tzq1g7/HLHV/YhMxWcuo74SU7WTXC+mxau1B/a1xK6Dgdsvk4W/Jj6tRWRDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oAKH6Xbn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oAKH6Xbn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C896DC19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 23:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780182273;
	bh=TWEHI4fMpca4tivFbM2wpWYQw8Yi98R6WgM7IZu5a+k=;
	h=To:Subject:From:Date:From;
	b=oAKH6XbnUKgm1gNOuQQD5YQh9Piux7cuCN2jZZutYGdK6oooXJYyJNJQI3+kSWpF5
	 MveXThi+q+GxNlNlxoFfc9MEW/xtPELqlpZMZQc6bc3Ny4WPwCecJmkmSgBqeDr8Bv
	 CoEfVe/bmKD56UZspQSORUEEkD8UEU9FpiaURtaTDvzOHBTsmcgxx+83nBRreMTTeB
	 veuA/oTELv3tqAkJUOcIzsdESbjkaLVUiDO2UKKPztxb45RW0t8lCdTy0RQvduiLKj
	 wjZbcHpUNk34RViBxliBATys+B/0aNt8+vpGI7q8YWUev5J/t0wil+7meBFCVTqEud
	 8za7ZVDjcEbTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0343CD6E52
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 23:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178018227371.12708.1587407728473242185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a42d327044d1293c22ab01397fa171a1174d0a5bb3301a5688a7cf693cf3d80
Date: Sat, 30 May 2026 23:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780182273

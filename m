Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D0CC34B1A7
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785405634; cv=none; b=kvsuAxe7pERdw2Ai5P2dCV8e+NQs9v8JYBxrM6pwfj1pmnRzvJ4kgWIcROZzSQRpqH0GnefT38Wj8lJNhEaesP6ZSEZXLVTlobGKJTnXoZOq37eVyZ94wlkIET/L1SaU4/u+ytCev6FMO93JUHa8IfV1shUeddxkJA8A9gP1r04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785405634; c=relaxed/simple;
	bh=i7RDBDxcVxdpyYNJknsjza/rD3R/0VM8tsyxGJigbto=;
	h=To:Subject:From:Message-Id:Date; b=UbgUTydR1LGCrKtYwTOecyw2Iz6tkBg/NlkyRa660BVDvEFgPyTf6dEmrE1314cqoQUyCZJXrbcaGAs4vCvUcYPTy7iyBpIOP3O1AmN34FNufAhTeKETX4FWmoisJrt88WuCfLkyUu5fSFZRLtnm4OaS9KoB5pWjw75GWocSxB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YRVcX5zY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YRVcX5zY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC5FDC19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785405633;
	bh=i7RDBDxcVxdpyYNJknsjza/rD3R/0VM8tsyxGJigbto=;
	h=To:Subject:From:Date:From;
	b=YRVcX5zYhb7fsDzqQWP3dWXgD7k2GZvSmUUOvChbQs8Z3FNvyPyF/JQpoTDgrQSMH
	 jHcdmRpWDeqpfkbNRoEj+IKulvFkiyeK/utbnxes+rM7Se1YtXmeRSTU4RweJNo5pN
	 mnQeJRFi+InYDmK5yXIefo27BYQsisKhp4lWZRXZeGQAVv2kQu5vVkU5xAiN1GrZFk
	 vB5rK1luK5m+RKkPehN+3cb1iJHFdMlAhV9Mzo3WZFuexAi6hFgNOBkisvhC13lkvs
	 8E84qlmOwtSa/J2HZzxj/+maNlH+6+zJDcyZo82JY5Eb3EvN4Lan6cc3qrI04x2vAu
	 GJIJwrQWlFLKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A87B1C54FDF
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178540563368.27467.12074449680997938013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b30ad64cfc944befbde40fc9f1ca1d6872b5402288f235e8314a03b187bcb970
Date: Thu, 30 Jul 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785405633

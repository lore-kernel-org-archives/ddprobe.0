Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 114361C282
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 21:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707254297; cv=none; b=WriM0WygWu2R1hP0El3E4bcrm5AvnC9ypjUtZyIyd/eGIyKSf+Ao1OB8BgPrCucWrmg+zfqfimhoOb+vKlgz1b6smmuKOG+/LrDx24In9WUoBhHV7R+KKUEOiHrN/69A7Tvwh2idq+cInFFH2ddGGlhwNmz4SSWuv+pcJOTu3hY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707254297; c=relaxed/simple;
	bh=xK1xBPUDsTd0I2lpnpfccpOraguGwV5Voxb3jvoqhe8=;
	h=To:Subject:From:Message-Id:Date; b=pq7RBy2ETQNtjl87tI5WOBTxtfbtQPjVPPiidcuIztRa2ffPc4095JFUkXtVK38DKUiwvuSNnYyLNDTtG5q7FrplG6kSzYHGre8qxB0+GOeOqVUEfRtU/i1kr+IbGp1E0YDdF70oeK3Qkv3weiTYUpSNYN/YWQ1GjNDXap969CA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=brNXgysc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="brNXgysc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89B75C433C7
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 21:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707254296;
	bh=xK1xBPUDsTd0I2lpnpfccpOraguGwV5Voxb3jvoqhe8=;
	h=To:Subject:From:Date:From;
	b=brNXgyscGSiFi3VakFKDl65HjU7gcQLyC6m6RY/sKUlgbsKKZMKqqTgSzrs+YwLgG
	 yvZO6e2riCtBfBHBj6ApkuHOWNtXtLInKq0iEPaP3KACHxf7Y5F7YRGYcauHLWJ4BX
	 EuQwRqv5ktcncNJqKuYUEanFWFyJ2Clae3/6D/oaneHnB9VLoLnLTXXEWXDSx5TvaI
	 sv39ngVxmPWGIjqSJukb6vtDDlFuhEqM5noAQdn47aHG91AyPOIa8ryTbx54XZg8wO
	 cTl5Tus4OQX008jiAj/8lkSrdpTeH8JO2gRRgpT6pk72sa0cAHY9UIYsErEf6BWEUp
	 wbvcZzeZjZFKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DC98C48297
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 21:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170725429643.14173.7172449295142105843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a945dcc14f299c1665c03ece3c930a6b65b7d6325130456210253f36652f585
Date: Tue, 06 Feb 2024 21:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707254296

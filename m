Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 313F125A355
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753351194; cv=none; b=MKKYIffhCG2rgIynXLvDpcwu/kZGaSjLi36c/3E+7r+Po4WFR0q2gAzZgMmA1RYCqh7fMHo+zojxsne+QlcjuvqqsA69UbKkEX8T+imn6MH88hIOtuW8D395FlgZvEgaQKSVbrFZgwYxip/aWOOG0+AGR0nw0AUvsHl8GKpAamA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753351194; c=relaxed/simple;
	bh=Ci9byyU8phaifBdFONJ8mIze5UPv+eq7WSya0qNgvN0=;
	h=To:Subject:From:Message-Id:Date; b=T968k6GX2jrOS1C1MmeRStb+CiAGWUrS6z9Z1pHkTsAFy8vdX2iHvYyWi8OZdjm89yg73ooSrmLPBsJ6vhkbuxLiYYWrGaDaFQiXfY/dE9DBfDsvF6F6xGlkl/T1OM7BLKQsdEf6dXLKWiRoRRPIBnQhxWoDcvsbPVbs8WHZEvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AmwhTRev; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AmwhTRev"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03CCC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753351193;
	bh=Ci9byyU8phaifBdFONJ8mIze5UPv+eq7WSya0qNgvN0=;
	h=To:Subject:From:Date:From;
	b=AmwhTRevTlZIMOTEeX4Zq2NjYkwd7FTMIMKI3d/YAgNgHe9JAykqFrYIv7XmcnQ/N
	 jC43puasvVgoq8UbRaByYpPiNBQ9itZ1izq8XMY9DSMQcKmQSsf/HFZPQT4yfLVjiL
	 bhKjbKZAENp141TUklwd4EObseaYN3PlP6EVunVwHMyTHxWUaV/NIpegvwpnsT3CA2
	 7qxV0y2Tb2gsEE65EMzrE+qJDKnWRY01z80BlmwKKQOAlVIRsU+acC962Qv0y6b2z6
	 MLNNkFTmrrfiy5PKh8NY+47tGyfb4bkkKcUKocF45z2irbJYlCN64OwePs8QFpm0A0
	 sVXhDjGdKPI+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9152CC83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175335119358.27108.18025687577938694146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69ea430fe0c173ee86e3951daec41d1199aa62e15c4f37ff61f5ae26742dce88
Date: Thu, 24 Jul 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753351193

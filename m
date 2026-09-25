Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE53357D18
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790321434; cv=none; b=sAQwh5d4FuiKseoFr1Wv7Qx6ONiTK6qQWB02xFGSMeucU1MLed+CTZ1a6BoGKKiBtux9ojLvgQLwlv/0MADnOJPLryTg/pHP4OT7IhyFvEF4hPoKHO/I+PRSMkJWYG5RKyFkN/syewInVkfYhoC5/upHeaBv3vj6Q9i7Ok5r3KM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790321434; c=relaxed/simple;
	bh=mPgrJg1HMqeLViFJNbpFEeU/RroHfvKqMxU/Q2jUtQY=;
	h=To:Subject:From:Message-Id:Date; b=hAvGjsSizARXBh37+OzuEKZXAUzED92eT2i39dmlC6p0cEq9y2nWkwECbCtFGu573vJFshd6xmfRcQiviueG7r0HXzbIzOLXCXM+jtYHPLShKd4tQMGEI4TRGVIX68xKSlTZrppMhat8RHwUStcizSTxO0Zpv5Ofjg3H/ythvBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OVg7XREd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OVg7XREd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3270C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790321433;
	bh=mPgrJg1HMqeLViFJNbpFEeU/RroHfvKqMxU/Q2jUtQY=;
	h=To:Subject:From:Date:From;
	b=OVg7XREdXqpgXLQXnRnHv3dY+h0Upa3Pot8eVjOlKV940DISFRqyGe1OJmXNtZZvi
	 lW3vs19PnIYwGYp6v1DuGvFyhZ+kkuVe5C+MyKksPa+C9HkYzWwhTDXY9ysy0LZNuz
	 bT6Z109cSyHVU8kZzYGzlEsbO2/eZWEgtP1ft9WQw8TIJNN4q/b3tk6eRjqNxpFqzH
	 ek4YVwkC+prYQPOz/4h2FHCJQlGPI/i9567eUd4/9Xxm6SRPksgPVRLFvGIdPGaIae
	 wEtfkWUAqxDECW9iwVwrVmuI8NTIUIbPfF49ClTogMkq3MPVgVJW+mkjoH9bVc+Yj3
	 49h3kyIKPqlpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE710C9830D
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179032143370.22211.16388318821179030972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d9f71c7437c7436f1c5a481a1b423885c7f51fc18157e35d722a5707dcf92b3
Date: Fri, 25 Sep 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790321433

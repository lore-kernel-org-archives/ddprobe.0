Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209EE3358C6
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 18:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777833454; cv=none; b=ijhjmPbJ4sXP20U7kPgNRAGSBXnaJkMEz5IxLJiV0I+4Yqdr6AmTSFf+M8TAnrAImc5HEnqCaXGoC/VOVb1aGeVFc57ymCF6lwg5fgq6duGKNevIR06J3l9W+eVUQBbTDBdiAn9cg0frMVbAzGlrxJmbZ8XM14EOJNa8M+F62j4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777833454; c=relaxed/simple;
	bh=/lDu0W4JwMZqa+pgpjZrOma3GavTgG+YMdAfVsUkRmg=;
	h=To:Subject:From:Message-Id:Date; b=E2b4KmmWmIQAIXOntoUL71H0umXehBKIh8/WyuA77Ek4sfu9SihkKqcx4k4VNDaHtuZdAtDEecqL2b1A0v5Z0/dX91XO0iVks6X7AOj5QIRFvc+jOEs8N8QCT2nqFxA2VC7W3tf1MYv1sBedH5x33Xo0WGQ+VL2tImLQc4ij63o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GgTO1bye; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GgTO1bye"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD4F8C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 18:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777833453;
	bh=/lDu0W4JwMZqa+pgpjZrOma3GavTgG+YMdAfVsUkRmg=;
	h=To:Subject:From:Date:From;
	b=GgTO1byefjGG0tQbeIrAmQtogpXzKFKZlqr1uF2BOBpyfhAQMeaqa4waxyjJItzw1
	 8PJIHvmuiYLrgUV9d+9Zbhf1YdaNIcdsktrWdYMTiVjqlbspg2pI2WwwHsZiHik8Jg
	 yLq37UVn4QcItSwT00ANDZTQMl+1MsP+jU1ofRV9vs1i6cFBeKnPONecPZ3CLkbqwS
	 E3Y96lTtIOlcT3PESdE9ZWfl+YMgAJgJByE85hXoM6fBX0jjje2ag/xi7TtjNrsOtq
	 pmlrJK/6MjSoGkERTcFucYPGUTRp73x4EBb9HUc4OczHVtTQ4MD5D9cLo1PaWfajLi
	 jic8mSY6lD+4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA926CD3424
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 18:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177783345368.31451.1697811468278126123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c9180d95c389ff6f027675ce3a4f24afe5f690d1c5d1d3c042323cd8b9e7575
Date: Sun, 03 May 2026 18:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777833453

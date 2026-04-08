Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189772F84F
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 11:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775648734; cv=none; b=ecPe2LIEeQsqD7DldE3eyCvXo14GGEVO3GbMOG+rNEptyYH9yYLX7mCHANrC7IG67Nr1CqDQjxyYaxiC9DI2p9LjxQ7+EPExmVIfpo/Xjei7XaXhaagDlaQJcRiNS4ctv+O0hBb9EcWiPdN/B7b2+Rro8pp2DQTh7H+/R5h5kcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775648734; c=relaxed/simple;
	bh=7CcalvpfpJIVbsq456RKXasarOM6jeXtMUpfG3/jcR8=;
	h=To:Subject:From:Message-Id:Date; b=keNOqzqMhqOGVBLp+3tP/wjIIllMOMKXGIa/8tb/+ag5fp/bdAVl1Lf7f89ijdVJqHjtxslGqZUuY5eddLtga8opm6XZRsfTNYtozmpqjG36ymIYaOlrsVxM36nKrRQTbTkxLVg9uPTtWg2zNGl+mbnvL7el+CHpvUIkXs5yCPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sT0bFCBe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sT0bFCBe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAA9DC19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 11:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775648733;
	bh=7CcalvpfpJIVbsq456RKXasarOM6jeXtMUpfG3/jcR8=;
	h=To:Subject:From:Date:From;
	b=sT0bFCBeTuxvNr8TSuoPyAyC/hOC5CShCdBCSzgjoiClCjZQt7oMhyITC9ErXLHTx
	 V29dJj0Jkk9IckwGWzTF+K3JL8sqJntX9ZkYLzmMjSwzJ5vw6XJWHkqhXAdOB9t12d
	 pDaZBoUF74Z6QLV4Vq5w7QDu2aXVo057H46/+KsiPOwomj9aG3OX+AtFanBLyko4iz
	 +gJp1gWvns41IXxSfGinTIZNy1+eDYRE6cIRhuJMr93TmhlJbYVW6uhuvrTFznj94D
	 C5+Hl2bS7pXd/Yiy6WwSEpVlPRCuPpDSFADfmAUu1AHx1ifPB62HOvgeJBPUeuYoCe
	 RImbrp0zDzRtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2A71073C9F
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 11:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177564873369.13158.16488397211318250613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 118847a289a4313f3d075449d2273f215ea040be8997c512797a22e1eb7fa156
Date: Wed, 08 Apr 2026 11:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775648733

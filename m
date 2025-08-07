Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 213D52248B3
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754561394; cv=none; b=SA4D2t/N2zt0gyToQHP0aH/K5sQZCuLzsZ+B2rIquyDY3VFqF7LX94xpaRNwf2o8e847pXLR7wZDMa8T7lqOpXfzKc/zqjnieqqfQC4zM5wv0j0oIrtwbj2cB9j4eG//6sRMv0qr8G5A4siHY/wliwM4Ufr0XmFTQDqiWV3IHdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754561394; c=relaxed/simple;
	bh=XgwWqR/bPuZZhYHUyzwCNBwULBi9O15X1B/uVIWCLMo=;
	h=To:Subject:From:Message-Id:Date; b=j9nOJwt178dFKdfdAVbqztKYjeFPO2HHnRN0mMSrETTN6Un4BMh47Fi3k3KLS0AOJ4X+fI8o1LEzSam/u3Z/pLaUmK8mpHzOJs/2Cf/YTA0JRlthC77dVubPFlSVdH044nNaZ8RB+5tMZrPSWV3nnAqlxfpXCTiB/w7FhuehFCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bZuDrarh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bZuDrarh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDD2C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754561393;
	bh=XgwWqR/bPuZZhYHUyzwCNBwULBi9O15X1B/uVIWCLMo=;
	h=To:Subject:From:Date:From;
	b=bZuDrarhW3L76BR7+CWiS0Y5G8cFTGHUQutcH1OeIip73sXTJCZZxMuP4OWzVQTq8
	 UTE28/IZKYlBKVVRSw6aSxl1276Nk5DR50JTmy68eUOUQnqR5RCX1txCkLyfj+mh3M
	 bIDpljU0FSBFUgpO7HLhr8WYNe22YFLeqV+L1kP71OJJet/tRk9plfz9o5jHEfNKYs
	 e+4jiZM9NfznlZawtOjy9rKRKy554/0SWFD/PbgBMr6SzcG4oJBSHyAK0/VgLNdwtp
	 sw0Kxq3J2X3RbDn37oCS40VhakDeqg8HQI3wsEJRbbPLISUuAMyLEB0UWinZFj/SWi
	 0KrdlVA0wIijg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F880C87FCF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175456139358.29938.17432863691301684457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b625ee7c0f1c1ade2cceff09d57d3c85ad55c9890d7923adad4ea892a0db964f
Date: Thu, 07 Aug 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754561393

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F71F14286
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738805754; cv=none; b=u5AnvtO4qimQ9Tu9+Ddj56un7z4bZC76PD+4IfS7kfD7z3Z8/BhiLeoiljSfhfOcF7VMVw3uVmhh3C52NHGCg7zwdCPokaW+aNwML+qp12Hev5eOfc+Whj+fGpCRHcPqRfKUzknsATTySYC4rmFnDqeyuvxAbT23Ng+EVQP3A1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738805754; c=relaxed/simple;
	bh=0kAlABjasjZV81et4NMdK0JkP2XAFXcGunLUb2EO9GI=;
	h=To:Subject:From:Message-Id:Date; b=Y4b8A/A2plw6H0kkqe5cqBRMf2xEdAbubluuUyiX4PhFgccNZ+YhmAFnrSJEmjb1AA3qWXwGx1+iFKvOlRELepxsQmBoSBL/g5Z9pzXPtll1O/oHWpXe7xwVxh2Y2ml4u44HTnqILNiEZ5omFKDIyHTvuXkyQyKgAdJDIwgiGy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bIVzki+w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bIVzki+w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B104BC4CED1
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738805753;
	bh=0kAlABjasjZV81et4NMdK0JkP2XAFXcGunLUb2EO9GI=;
	h=To:Subject:From:Date:From;
	b=bIVzki+wdxGW7GrxApRveNqzcKTH2lkc4oVVB4CBrOG3+8zxq/MTatloJ667mZmGy
	 XI6u2O+DKZCHyyYRQeBs2Z88q0lNl2jzIff4cS2Ed0psKYBrLXorG6XsB0OQ8kAyg8
	 o5VKnWYOitTrp1KTnyfofSJoEVIf8WtvEqVy6OBqRHVVgrTrz9je+KAEWBleNVkITq
	 hQtOHr2/FhiBrLtF1zmcUxvq0d+Zbia0n/Ok7REp41iMGvYejeZXgcL11ebk9Da0CD
	 1Btl8MFrVEagHjDPUDe4h6s/FKXen290sj7k1B0zkbstgY+MF71AEk6qdl6SS5/v9x
	 V+JZOG+KPtj5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99973C02194
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173880575361.16856.7590271602336817984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 713ef683217918d232be00c6e42096b1f8a75dc6a97a806fb64680b480ac85ce
Date: Thu, 06 Feb 2025 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738805753

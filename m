Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DDDE213254
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760583594; cv=none; b=JMtzPfUpnelVePBrJz/eS0gWRXBIUid112swLtyYJuDW1DCV5mv/98gX/E7C2LjZkvQ2E068PNfBsJZDXUty+JwnMYP3gAmQ6Jy7tDWPmtVnXdwgl7tLG46fagoswe1787hiv63OR9u5f/ecIiZZ4wN6tnXCPsD4j7tB7SDRxhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760583594; c=relaxed/simple;
	bh=PWhUIpaA3JfijSuNwDD7mMKCvxzv4FpTDJu6itIv+zk=;
	h=To:Subject:From:Message-Id:Date; b=Z4woryaXksokGV6FqqwRjfF8H7eMZZxUBP9sk6g2aKKpojfoLnL3YMpJykwf95JEflhOE/8/14VkzW4zZaDJVQpsIzyz4FTL7NszQHwPjeBcj2U3zrlMCnsqMq4UzEsEBuz4xT6v7lhO8yRtKb6GlOOwne88hcPsd8F8RS3B+s8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hPJBNuCH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hPJBNuCH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD9CC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760583593;
	bh=PWhUIpaA3JfijSuNwDD7mMKCvxzv4FpTDJu6itIv+zk=;
	h=To:Subject:From:Date:From;
	b=hPJBNuCHwM3CQH38tyh2r1zVhpFXGaKLMDcQHGXwJyyv5joTnFV+P0o1hx2w3UMbY
	 rKB2L2vvH845jehT7O4Y2K3okCKd1pNHeEs5g1MW5bWXk9wb4wsvWLEHgk6M0ZNNt6
	 Pdw4YjTbfbVTBe1Dcc9Q2/41EFOTMOJSBU8NQw7nXlB7pFNBujUORtJIc8ievNgCWF
	 if6ijs07An6N6vDp9CKexYrrmGpH6Rx9J1jX+8phL44DM3O5B8nL9AvO7I9/Upi6G0
	 r6ptm4MuNKTOepdWXgW+3v3Y+ljaHuxMhARzFxRNdW5unqfsvt574N4nxayEXDUuyt
	 ZK4eNnPbexanA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 994FCCCD199
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176058359362.23457.2932037774893461950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44c5f0062d945b5a7355683c36305bca9d0d7c7e76f3f163fa387182890791fd
Date: Thu, 16 Oct 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760583593

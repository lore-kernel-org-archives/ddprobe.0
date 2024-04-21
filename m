Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69A4B38C
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 01:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713664223; cv=none; b=EF8BFU7TGnG3i8uZ3Lc9k+Zi51BUZNR4sucajwcV1t5K1dFtibyHchsBGDPwdGqGyAXbr23TQvJlj7eOZF04DyDvx9Q6xJlHMCBTF6YhEKSY8WhSYyiqgdBeRLAst4MdBGHjN59tWFxHU8Pyiv9zP1ICEyJMteITxME+3Gd9iCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713664223; c=relaxed/simple;
	bh=hysxz/C9EX1aabheHwswD0t3zcQKgwTHMSsZaL7UZik=;
	h=To:Subject:From:Message-Id:Date; b=a/h8KRTUDQ6AwLNWW39a3qcb1hEKzeptv0wcTmNqAZ7hkRFNWmQrjj2Kj2mINBjlKKTM91IzhlzoPLo3plH+eG6IKBKGRIbK+tUp29mkKSB3eCGuhLEQnP/AdrqlwHhCrUdp1g/+1yqNDuI02Levm44oKfkM8R9dd4pQ3M/dWgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tu0kGW0N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tu0kGW0N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB984C072AA
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 01:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713664222;
	bh=hysxz/C9EX1aabheHwswD0t3zcQKgwTHMSsZaL7UZik=;
	h=To:Subject:From:Date:From;
	b=tu0kGW0N6EgFgf+sRnMGoW5NNw354lNY9aqH0kp4daY0kXiSnQONavUZqozQYcIM1
	 aQdWb1Yb23TjqH7BMtTyYYfhfZzc2FlrfeizyCkM3vPg2Nr0GZI33OR718nexvOOO3
	 JnhACTOmTPcUQxqQ6EahRiWD6cRvbCJRS4g5AUJjGxBM6TZr7hsxzhNQaoyRzcgqyW
	 6ucnWH4hrnenApC1XjeMsc6tB9dqAr5PPKyfpIZjeokG3oeoGgoPlOVZERbjvFcyDa
	 YoonqyelB8w41trQkiyXhPuWvKW1bSPi7ywWWoJoGeLHtipuxPMJV1XLuGQtP82V4h
	 bcDfNIxRZ72Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C263BC4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 01:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171366422277.31150.15686053895455757188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc11db301549faf3f45c9d15f17f36c87e13f82f97fbe55d6b6f5fa1bbd317d7
Date: Sun, 21 Apr 2024 01:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713664222

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268FF14E2C2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736592954; cv=none; b=RwnRiuD8IiS6gNJAliT+/5berpzLc1TXRsWLeVy2B29pJZY9yo9tvPvq2ohQskoFYMMKJZ39kbQiqsnpPH1pk5XiR4XN709oHngbTVP186gQ2IuOEHwFqdyiEKj+brCG7nhWKBOHPZKvWhvySVXQdHf/dw8Vm9yNpVBNjENryYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736592954; c=relaxed/simple;
	bh=jzXYqmMTZXhP35FrjkUyhR74Qnt+StgH49J5/QUyWrc=;
	h=To:Subject:From:Message-Id:Date; b=alzc4T3ZmVN0H6F5O/CfSSCqpD6Yby+Ua2ZhBvwQNbkYFEEhxR5fftz53L0ToWqqXYpX3rKC14pdi2SA5hHAPlXJAZ/OAj2BgSJO4yPSlvFAh6PPcEJ8w/yUEegrpFyc/USjNXk1zbllx6OsWFQCLTDZlH3ssz5Ljm4kAbmfEvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PJRRLvvf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PJRRLvvf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C56C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736592953;
	bh=jzXYqmMTZXhP35FrjkUyhR74Qnt+StgH49J5/QUyWrc=;
	h=To:Subject:From:Date:From;
	b=PJRRLvvfskcwGmlI6EAR8Wy4CN7rEpIpLoVfzhAsDISGJPRfvXZNpULy3ysi12tcv
	 7NWhQ0gEdXLsiAkQchfPhdiQK2puvALliE1cnCS7pPr4fLixOB6u67plgrPjY4Qd0B
	 GF3ZJQTCUx+IJYi7RYePNO3PYVYAmCfOcL1kuWaOzU8xiDZtah4UnSuL/TOeqlTzmo
	 MEFYzxccQDdCiHRNP/Z0SrjRW3ofylef/4vN/d5WBn68DhcnjADg7rHMZQckS/wKWG
	 c7aHeHrgrSawM7bRg10S1A8L9P5JRYAD1M8KPeRkoow/ulctQQCnAZV2pOLVdxSmtF
	 kqECkAlSInkdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E21E7719C
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173659295359.13590.6429942206613585423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89bb3c631164ae68fa12bb54cb4c14b02c0066aace1d5335174c6e13924098f1
Date: Sat, 11 Jan 2025 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736592953

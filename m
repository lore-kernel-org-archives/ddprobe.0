Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231F41C287
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 20:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707251897; cv=none; b=Mx4liPie/dRB2maMjqpJ1/gySAp5RD9PcRzAvr4VRlhWPDvej7SLzZ6i9lSZihLJO1nR4CIAach0PkS4Cj7uZyMNytUnz9h3A0CHEJ4J3BVcImBnwRG2rczyq8LeIhXqiTTsJV8L7SefzBZhmgYB18nryxB9mve5VxFytaRbldQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707251897; c=relaxed/simple;
	bh=sLFKZbrAptxxRmhumLlNK/NOsRe42/KukaoOSKW0cYg=;
	h=To:Subject:From:Message-Id:Date; b=diqADFdKAdp4VW/odYTNKtTwBdujEvTrw/neniBjYUci1hdV8GFieiNCplJRwf4iU4HgdQ4PmHozV23IDRQRhtrJK6T9V8oGLDnhHgh7ItgDoaGvQshKSdapidBt1mz9qK/J4DV9zGGJPKtZuYg84EPIBHEZa94yQBlhc7HKX88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R3gdya/T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R3gdya/T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 843CEC433C7
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 20:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707251896;
	bh=sLFKZbrAptxxRmhumLlNK/NOsRe42/KukaoOSKW0cYg=;
	h=To:Subject:From:Date:From;
	b=R3gdya/TmCohY7X+1s5mXLi/vuh4Q4jSV7lsrSpOe3/BuaFVYYZi8xKU/sdNMJrU+
	 qjk8qilcm0zZ/mCnpq8CREyM8DmRwUeb984BYbWoRiKXfNf1dZ1iMHln5qSJ1CuYLP
	 McuBexwCI05iaghti+rlfJaqusPScBRpvyNn5w82F+0wsKm948Q0QD5HD92MRiMvTl
	 wTpXNeMAWlWHtyQN7KO9DvWr/iXtbubrXXVU6Kt79MhXV3cR1DtMLXtbg/GfJ94Sad
	 m5YupK/d84b+4mnAbwjtdzMnWDAW27RxlCSPyXsmDic0v0hxCkpnIjmEZp7NoW4S3m
	 Bfm2cqD0/ZzMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67C92C48297
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 20:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170725189641.25503.13486740093541591589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ac245e29c17b9b4b19af1341a9436ac074c19a82f3ed990296d1785dddbe563
Date: Tue, 06 Feb 2024 20:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707251896

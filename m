Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13368202997
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751920194; cv=none; b=DMpmfcvRTLUTwqDkurBOjRu5YPwFYmrIJ9cOugSqEchMSupQaD3Dvb5BQeV1JL1JzlMx+edTmitj7gVtCPH6szWPROEv1tvcedlvC7BsMmOhuZgpzAOKOEcnqdGFtZJ56qhyfR7/TTmd++6arnrYItQceIs9TytBt1Qpn2bdVII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751920194; c=relaxed/simple;
	bh=OLfwM3cOPbsdsQneHbmixsX4TUxqf0kOPP0HVi6WBXM=;
	h=To:Subject:From:Message-Id:Date; b=YSEsSBrN32/o6S3Y1ljQ+GTcMgWBMM6Xrg88bTBKOTO8X2opARYrUov6bz6O18PzDLxpL0M7l6Pf6BZRtRJ7BTy+D0EuD+fi2OjZdWEzG5jlhZFM4lGJLpfJ6aCYCj7O2Dsxr9QqYlt63GAjc5fRfxg+21K1lFwBVkc0x1SQA6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UmGTnD5n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UmGTnD5n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DF5C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751920193;
	bh=OLfwM3cOPbsdsQneHbmixsX4TUxqf0kOPP0HVi6WBXM=;
	h=To:Subject:From:Date:From;
	b=UmGTnD5nfsYSwKtsf4GOjMWSJjYD2WmtOztwqwxKW8Fc/Spxi0uh4d1Asx9lspGPe
	 mVYHaW56VAsEWsj1eKTYzpOMTfHPOgG2RwZteJkZZ5hsTXrTCqXJhenXJJ+qtzgYnF
	 DKq1Ld3+u8i/w/mTu0or5k1WkV30IMK3gRHY/6NAI5DEnQ9Gp29zvQBdqyC0Gi43V2
	 Kz/Mmanxuk4bu7DLjNoeB4faAmXeygM/dVIWBuOFz6Sw64Ja77TI2QBJbni5cMSyo0
	 OnBWsoJhj0se9eRZs1X88vj5A8FSKJodLZMjWEY8xDnwCS+o/xuCTGWFmglzR3qa8Z
	 IWFGFvD26vVpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D14C8303C
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175192019360.704.12995337387205397622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27917870fbc614ae50778c2289f7bd038edd9d28a4f88813ab5750fd434a1226
Date: Mon, 07 Jul 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751920193

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479DA377003
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 15:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783526314; cv=none; b=rlBnmf0HhtZCbt8XPdwMchNa+TfRWnkdsAijflCt4NdCbC0K4yw863oOqE2YHDfgYMpxm9Ej9j0pv29xPQ/GXNJUQfQQVJieOGEmpN6xw/EWbq+zJqaBwYFaJnz/q8dEJK4qevF5QVZYSvKDPI6CUABWEH4Kwe9hs+j4iSkvSaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783526314; c=relaxed/simple;
	bh=bOngIPzEC5ad6yya4L8GUDx2d3zeIsmxIQ1ON+tyb4Y=;
	h=To:Subject:From:Message-Id:Date; b=VeBk3G6wYimDXVl1m0x95zYyQpHwLr/kAY/Irunkj/mTdaKGrHfv7g6DcXOr2kVWg9oASgQDxVQY8QBaPTIqUKqi+A3VobRKfK2HDBN8r6Pw40MnX5S9CSfhqenlAxwvdL3GPZq54KRFxgpmoWnyeonYjsYQil5f8gzCK9XpJfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PQHRmJdH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PQHRmJdH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D43FFC2BCB7
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 15:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783526313;
	bh=bOngIPzEC5ad6yya4L8GUDx2d3zeIsmxIQ1ON+tyb4Y=;
	h=To:Subject:From:Date:From;
	b=PQHRmJdHtlhDPMq1Z9+HP2JR4zAUdgtDLkeV1p0ngRMWosxRRHT/Q828Ml4DfEZxm
	 ZsQYPO9ZaUbnZZfGSIqsTwfhykOppK1RNR7M9Y962MXCI7WDOIwfan2o3y3MQ7YVuU
	 xwHHbiTGSTWDXqxJP4bJ775IrXp2g6q8pSvlrjSw4lfZ4sWEhoMviXl5Wk7SH6Nnk0
	 uNTg2ylo1iVKSZlsNj8x251jzdgQwEIncKdGA7q2qHUTJ7z3z+oSHae+JzZy4hPZ+s
	 45JQ/DTgcvx32hskzwWjBRhBNVAsq+ojxB/wU3bDdQbIoDJjbJSpdyXa75hiol4Y+i
	 ULWoV8pMV/4lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0213C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 15:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178352631371.16116.8920045682439938822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ad1b5ef94bd972ba5d54eea8a173148aba8409b6d47d0608e8a4f27c0b7479d
Date: Wed, 08 Jul 2026 15:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783526313

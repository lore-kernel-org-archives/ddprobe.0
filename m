Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4163FB647
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 03:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715917343; cv=none; b=D5+EZJ8Zcum2H1+hwsb0+s2sASYP3OegGrvdURDrt/LriBxu7LUeaL3B9PZU5aC8F0ME93pFGGiau69La3tjVua1zKpphzCN9oM6sm2H/WnSo09n69Lhak6E/JIZDK6h3G1hOwXK0QnqDf6J06brBRsZKYvr7Uz/d5Ny4pXokIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715917343; c=relaxed/simple;
	bh=N08Ky+1JY1/mv8SGRofgb53YyKuSQSQgKfGkwdjNOpo=;
	h=To:Subject:From:Message-Id:Date; b=LcbVhGaS53ekR37UQIU72Xi/ELD6dZbCYNCl5ZDw+1yt+ZdXXm9US2mtz19SPVzOk3NpoGwkm9J9mm6skzwF9ZX9YOFnYbkd96WTrvvPJXSRcf3JIre4VAQwpTaqnb4iEMeFCIU0cDlRxUP6C9FrUpPpCOf0YpcycoV1VUXMZpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NLc068ot; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NLc068ot"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D247BC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 03:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715917342;
	bh=N08Ky+1JY1/mv8SGRofgb53YyKuSQSQgKfGkwdjNOpo=;
	h=To:Subject:From:Date:From;
	b=NLc068otF3mWJPRd7RTx4Pni9fPQPkYBL8W/r4cJCrHMscTh/YlQ/QW8GnYa5tH3X
	 Kau77H5csJkzX7TclQ/Kzg/cqjpBkMUqqs05kEuMMwfEKNaF+srpgJPlOSdk2R3Hmf
	 iYfUKfhEgE7D2Sxl9yCmnDskQg90AISpo7zCXMgANwLs+2p7Sx+Wt6ZWmodY8pKAVJ
	 4YCRxHYI2y059Yb0cG2jmImV/iGcuvZCIbWheQ8a16j928YxrAipzp0Cj7WryyVuyB
	 x7pmqoxk0SuPk09Zm4pCBLC7mUsJZr+DMXuvu4GahZnhleyfctRizTx/G5Cr7wVbW7
	 ssTXt3txI/rQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD0B6C25B77
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 03:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171591734276.1524.8494282755305583762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 048cb35e52d6f842a7435cfb8df451210aac62564ca7e3373cf796d427be57ac
Date: Fri, 17 May 2024 03:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715917342

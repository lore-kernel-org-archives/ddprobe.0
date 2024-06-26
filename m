Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6664115B0FC
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 07:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719388403; cv=none; b=Ma5mq4WEr8RbP64WYvGkkb0bWa4aCorTunWGdcEO2gMMOddHembwlE0hAoOPHBJAl8MvVrthLPMjZD5bTQgkaPBkhx1/iNjLCDzT6RHuPM3t5I1knhsbpal3G2VhFtJgkTDRGiwcuh12b/9LDAIJ6PlOlBFWKXIXUbQ+ycXo9io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719388403; c=relaxed/simple;
	bh=fy0AjPlyeEVY1v/XUvRqCKj7TMgfwaFoiYCxCoGWAvs=;
	h=To:Subject:From:Message-Id:Date; b=n3xvOhl6lhou/9Fk62+kddVqg8KW6ylEuPQMs11RVbStTSbMNmrStU5sti8ybAvIRzrN3eH9XwTsEpSIVSiw/Wqi/sq6R9RnuY3TZUK7fxmxeQHlAckJ+W3oXjRu3JfAdc9hDUTX8SLBGE9THlHrtd+8GyXzHu4KICezwFyPQ1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dtNfr6vV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dtNfr6vV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBB22C4AF10
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 07:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719388402;
	bh=fy0AjPlyeEVY1v/XUvRqCKj7TMgfwaFoiYCxCoGWAvs=;
	h=To:Subject:From:Date:From;
	b=dtNfr6vV6S+BZ3J23CWpQP/B4XL/PE7sffQkhPiD4laSraAyTfjuXPG/iBEHP7U+/
	 Y8RCiqLlTx7f7GKlA0c6yj7UZ/zuaIWNytaSRdgL87rkKUtbAB9Li8aDXk/hPQuCnZ
	 fRbkpJtbjhiMgi3xfULoqNgmG+Lrs3aDg4JFdQia+0RomkgPhJslgN11ZfE9h+aXW7
	 PG4JdCLjbVOKqCHFfgWq1PCTLAxBQHccGDTn5Xmr75dunvdaANv62PwqF6erRzaYu5
	 YSoeuN7uGGSiDnusMfGn9fZZOTpuTG5u8IF1yhW77kvg5RN/SwioPBhozAc70FiN1g
	 MVq3YscNTV8wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6B46C30653
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 07:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171938840280.25238.14704575167845289643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed3cf08ad66df019c80bb1272fec5c641a5280e40122135952cb5d5d8ecc7f85
Date: Wed, 26 Jun 2024 07:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719388402

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 640D831ED68
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787395834; cv=none; b=U2ftKfE9LDdCBCc8IvOTS44/fZRCKVRA1WTgo4+OCBWYVs2EWbok+pkk2/nIp3Fn+nHgVXRQdYQ3Ep3SYxKjMG3xMDZI/WDZQNITBoz58B7lh7IP88bEJk3cs95LlPsixKKLdg2sZ3Yt7IghBUn1ueOU6hVIWNEril++AjDDKWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787395834; c=relaxed/simple;
	bh=0wDvEkd5v69VGEooKujlt36Xdtf2CBr/lgEEnDZieE0=;
	h=To:Subject:From:Message-Id:Date; b=KxB3xBHUt0SY0m39MK79oEKsfcsBDkddH98hd7LGX2stbUtbQ2tLEYWhpYTIk3c0liR0vvCeFPIi1o09Yc4Prwj77bOeKCOUxGiUit5SLsbBhzAInvWeZntILKPri/NyU0VbrG7JOCnCe6iF+BBo38aio03GRwwAGn08HV4IkNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P2fBy+Fa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P2fBy+Fa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAF94C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787395833;
	bh=0wDvEkd5v69VGEooKujlt36Xdtf2CBr/lgEEnDZieE0=;
	h=To:Subject:From:Date:From;
	b=P2fBy+FaabXpothhFDgwMl0jvZhl34pafDZ2OSVM9p/fBY8jyjZXFSQuq/H2NYWOu
	 FDO5lUzw9CXbY+QYhOtfNRrA0GLQu+3RGbZIjDYzmdBHinAiGFPcjC+wJ5MOv+vzDn
	 owMTe+u57h7AEsA8y+oY6Cfvly+Ta4v8iJtvfcSYJ0QnMKmKi2vGkJXfG2thRhynwQ
	 kKPiC7iJklLRFmHO48USdmnr+1Jh36KG3ukyAQ2IkTArzGzqKeplxtjLv0bFvlnoFK
	 A0+9dKiLreSdJy4CcmC/9H0Lq42rqqzQwsrWVM2PPc1jMGO9f+e68LxRMme59iZjcO
	 6l3qEnod+/2DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B116CC5B572
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178739583368.17213.5629878620962562549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dc26d95536ebc72604bfcecf24d2844b2d9e0be8231803447d2bd4e37120629
Date: Sat, 22 Aug 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787395833

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2299C1EA84
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 00:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771977894; cv=none; b=J2ugUElOgf6fm4FSSKyd8IUJUji+a06dvoNBuVUo98ksFLcxkpgxorbAp8xbinlUlVkIQT8Tlysnui8xvIMHNF1wOEzymhyi6VW9S/pWttMNb0J/lGd/4m8YSrwsIeEWPIpDOW6LHUIxHw82ZdCyFXrIp4y3aopbN1IFuBhti3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771977894; c=relaxed/simple;
	bh=witcMMk7wnjlMbJkuYwSJkTKKg15yodXel7Ip8qFB4M=;
	h=To:Subject:From:Message-Id:Date; b=YFcW/487EMWwdavRMax+Gy/nd+tvdL0j4OWCocrZEUr7umE2YpvbLbUtAHW3/9aEPJhlBFP7slhqn53Q+kq3TGHyBkU4ce8EtCRTRLjH8BynwPQCipumCKfcQ2JfYxTGb/biY2jclX/XJKLRVYsFeceIWGteAtMQM4Tos+88z2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uneygLeH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uneygLeH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE818C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 00:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771977893;
	bh=witcMMk7wnjlMbJkuYwSJkTKKg15yodXel7Ip8qFB4M=;
	h=To:Subject:From:Date:From;
	b=uneygLeHuNtz0arCGfvZleWJiTxDlHlpWjqZeOk7egPf8r560R1ZaUMYVzJwtoJZC
	 DQ00aX6kdUOw9+3YY2COt7p2N902XKP0QIx8MEsKt/PGwqCFjuVfLCVpC5oHORb4Uo
	 r8s1tWG2Hh1xz1CRRi9ycZd7osiGrVEFczBO/i0ZjOLtiC4LhxZfIMEE1L0R1EPwY1
	 Y1khI+OOxwPyZ3cBu4T8DtVlVeMktScdloF2uXmcXLxKz15hDghacCXmLWinOyyFvs
	 33MvcV7iGTAXkE+nVtPK3NVq7cX5B0L9pANeZ1SslzANucGqwwKFm2wUAFT72Wc4Ha
	 Ux5aGWmz0ifiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F529F55425
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 00:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177197789364.22239.10209071692391683312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1b11cc8ed2c9cdc31fe1e54e681897905d7f4e11298fd4fe2e5f880eec19b89
Date: Wed, 25 Feb 2026 00:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771977893

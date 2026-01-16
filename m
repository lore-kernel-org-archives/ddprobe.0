Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E7D36D503
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768562634; cv=none; b=qOyVNqWe7H9t2HWL1WWfjbkzV06hpebIwqNTwZtzEmLAsm475nv41iN/YISBGzKZ52r4uaGchI4cDxm5hIagDicbyGeuttjTNUoHq33CyTnljN+4Iq3CUtWu4ylkg4Z6/mQImaembOhMHAEXy/3E7njthUD6oSo3ElprMb32wrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768562634; c=relaxed/simple;
	bh=bQUEBdnq58D4LNToeRxQHsJ2ECKwzj48LGuHuMqX+xQ=;
	h=To:Subject:From:Message-Id:Date; b=KJVYjbCwYn8wZs8DKJxpUFPLELj8YFvUP6jCNgsLyyDNR7C4kp64CARho+h6teoHPOvtcfrfZ888yrtTAdlZ01afG+4uWANbOBUpgtXAKUwxm8sw870BZ43z8sUO4sNQABAwkhRuCzEwnwDvziAKXOJ65q8Bodyzdnc9p1MMJ7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tjSJc51F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tjSJc51F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB3EC19421
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768562633;
	bh=bQUEBdnq58D4LNToeRxQHsJ2ECKwzj48LGuHuMqX+xQ=;
	h=To:Subject:From:Date:From;
	b=tjSJc51FzvMGnszBVa6M2YScTn+Ow4Tl/NKD4ocPPoHuk60DbOc9rjVs6Lm5k8o4/
	 3njyxZ4xskvvqI9uUiJO3CSGH21CSSkJDjoG8sQrdOXIQ/kAqDRmuQXt4Nd4+jebQJ
	 4r8VhD580A5G+6dlJjOs4bEF0dUPZBCv19WUEbJIfVTk3ezZ6Wi1vnp7yB3dAHdcSY
	 J9xD3/HMpaoVVmvP86v8AGsvsCcNTu8MsXM7UWP9xNOsXBJI6u//lGQLwgCFnUHAZh
	 i46KrslLHIuwuBMNRBjKDSyRBtxqqpsBnmeuZgX5UXgU8Q1POn0XJ7hiXqE7kbiPD+
	 sa4Vqex0ys+lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCD9D47CD6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 11:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176856263357.20011.13324527894958096982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebebbd5b09f52ec23a1e6a43ca21ab4eb9eb28ac22b84e91b48bd220aa85de02
Date: Fri, 16 Jan 2026 11:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768562633

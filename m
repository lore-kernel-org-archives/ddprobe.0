Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367AF3B52FF
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791524434; cv=none; b=G+HwlUXG0aJDNfwGQSbanMZwyCppKaAN5rxHPsnbck5+e8/ftP/oTE4iCheUm501oueJdleoKgc7zjeiWTshp5tCt5+8cbAaT+4bu811XL0aGgG4i3glOQmiwIfUh2djSFcbySA8t9glVrWxfY91w07w8va5EtybJdKo+BDaLJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791524434; c=relaxed/simple;
	bh=wc8EBHZVZC2V7Y1ZpclkJDNTBOXDWFGQVTQYDmLLksE=;
	h=To:Subject:From:Message-Id:Date; b=mTr4XoK4R4mLB9Xde0D+axDqx31SCgOhGkyoKSs6RZU2EjfevCMvayTJtVJ9Ff6kFKGR+9eCqn54yPF2Wk4NtmowvDG6Zl8g9yI9GPLJb6h2RCi4Ggu7UdklozWdiLmWUZ4FsoGZABgZvQ2X6hJwXyEvTzL5/dpfmRMyhZogw2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Syhyc6Lg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Syhyc6Lg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D41A7C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791524433;
	bh=wc8EBHZVZC2V7Y1ZpclkJDNTBOXDWFGQVTQYDmLLksE=;
	h=To:Subject:From:Date:From;
	b=Syhyc6Lg0ENOBSv6ZKDleBRGTVHxVJN3L9YZr1Xe0o6MtaiYOLPmsOk4o6q/9boXh
	 Jlso9lfDNDZyJoxWCLxqVxN1khW1tWNKSjzNd05aVB8QkgcmTHxGPmRcJ8rTwwGn1J
	 iSOUArnaN1e9Nyv5K8lvqhak5baCrrUpJ894Rko4ItVKAOPknKzvKyEkHw9fgLEflU
	 SxeSqFUzlU5ER/o1wYD54b5rUIMha0BpDjyKTodWddCcyy0A6EXVFF68l1CFUvo1I3
	 CTQwBTdWYtDax6jmISVTtiHxGsqbcXr+RPrVr0jxV47FP0tX+A0QaKHddCBQXb6SMb
	 btn3UTom+U+CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B26DBCA6015
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179152443369.19068.2067284294445873618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbbb703cabc76dad25f9dce0c0db2296de7fc8033c32c79993ad859b18267501
Date: Fri, 09 Oct 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791524433

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC7F274FFD
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744981195; cv=none; b=CfDuP/XkkIz2P3wTJOpWYrmRJid+P/ydBxARhT436+q6lrPJWEjGVDnowuXPz3txqagUEifFkGgfPVdy+KtWjiZf2ZFw2pgrVloiWdHQ8kFwsBjEHrE8loPY+B6s7L8QlFX1j5tEByyIR/7RKK++ksJO+9CXrTNOnOnvEsN1kUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744981195; c=relaxed/simple;
	bh=1GMXB0BmzSESMkNmvm8aRhedltaEd0AGBrWdvFcvKm4=;
	h=To:Subject:From:Message-Id:Date; b=mmSflACx9LxUpJGYYaCXl1Bk2G2XlDnssfLpU/0lpn5scBCxRCnu4eWMrsV+MRqTLmIUl8tnugL7H5HyVxsPL499Y01vPBJxrpvRFlJQhQqvJeFZj9nfHzl+DPRG3X3i1Uid4MrV7HXtIEt+GVzWrEbjcRO9lDLBYWYAPpb+adY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WDRpxzrP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WDRpxzrP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C3E7C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744981193;
	bh=1GMXB0BmzSESMkNmvm8aRhedltaEd0AGBrWdvFcvKm4=;
	h=To:Subject:From:Date:From;
	b=WDRpxzrPRyfoOSAnJSm2d2CWQwos6fjuHnZBahXqi8diciABtEumDTX7im/QDeKu/
	 c8YS7o5/VXeFsFibWIsHLp85HI0y7EhRQs+qSz/wirkgHraWUyhyFkLSDO3mjgVSI3
	 fO3d91o3pQ5aw2ohymqwDXOy52wJrgIyZksuBTEvuhFOpadcFGPS0cbnPpqcMmjFd8
	 +I4LnzYsB0f9LE+ciK1EbUij8sXVCa1EwMbQ/VPGTY/238pHcnuFakV0VBLw92l9uc
	 wkGAaoN4kZjVX0kb1q+f0Bnu9iYbUOvKLUPQRc4UziA3QMlU1vO1Xa/2/k4dQOlMqq
	 L+TNj6u3ngeuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921E0C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174498119359.2840.8597643523221822598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fbc819c13377cb498d1855c4b523b2ee103e859fa6e0ffa9ab24e0e49032a2d
Date: Fri, 18 Apr 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744981193

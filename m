Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3334C21773D
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 16:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781280394; cv=none; b=EGjdSk/zzPxEbrvBDRhy0abTb2PjM0pSOdBzy4Uk01SffpEgsMKzAMYfd7vQFHUBfdoDhbBdNBHDUppTrdPZycPOJr45Fbmj8pQsEPCwVjUJLDaPoe6P9lzzoybmQz27sCtBbhsnvpCXNHsR+6ZYyvFeomkTh4HFWTHxa3vQmvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781280394; c=relaxed/simple;
	bh=WdwANVQIYVx2IHwYIZHEeM6QJsLgRWjQhcQpvrXQIWM=;
	h=To:Subject:From:Message-Id:Date; b=m/zof3vYAK7GIni58+fxTbKDGb8D5q6cLa3donQubr/jBvtmL7lIpsMdlGNphsScxJbk7nKgiQVVA2Vm4H/wL2+QKhUWxYP9fkvPY5CKHgnZg6jW3AX3h2MwFaoam5Wtwh6aozwb1SQ1mOoLlSFVLf7ZzTILrh8EGF+gZFlIwJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M+OB2PgI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M+OB2PgI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C93C8C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 16:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781280393;
	bh=WdwANVQIYVx2IHwYIZHEeM6QJsLgRWjQhcQpvrXQIWM=;
	h=To:Subject:From:Date:From;
	b=M+OB2PgISXXMnD1OLV2m7ZsL8E4aMDx7pbtaWszWQTDo8I5WKLy2qIBxw/9sw3zLr
	 cX2vrh8HkC8B4n4jN2BJ37BVrQLrnOdTFX0vhspaigYRxg5BxIw5pTXfiuaMPymeds
	 o2T8nElpWezg63mM7mC/SzfMd71KgJ9r9C/MvhZYagi6DZhc2cmC15rTNyZJa2hsPJ
	 uiLAjeVl//yr9ho2dtbLiecGemxAXpJKb3Kfegpl+o/wG4jIcy4bxK9OED9k9TLXF2
	 jJkVMePlVCXayFLn/U4oIkGGnlZeH4jLVi1SYnRxe7y94aX1jLCU/h++Ih0M6aj7Ew
	 iSbxMRW8Wmbkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A79DDCD98CE
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 16:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178128039367.3289.16882241657354374677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01bccfec68a0e939f0fccd3602ede547acce34643c1f60df7b437ec01e59edc3
Date: Fri, 12 Jun 2026 16:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781280393

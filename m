Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CE43358D38
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 22:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769813634; cv=none; b=foI+Vpo3U2IktA4MDCE4KQvRHxyMUnSneMqHHNwkK1a6jO2T1um/r/mRFgtC61xKtzsYFLup6ZxwkVussrpV9hFManfKtaxteFXB7esB4hTtPXSlIYZIt92aldERrbn/UUKV4fyEl/K2sr18ZsSzxmTtGGgTTmLP+wNOORbcnhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769813634; c=relaxed/simple;
	bh=7okWl0flnDU1qWMxEEXUxa714hqGuXpG4KqCekCklf4=;
	h=To:Subject:From:Message-Id:Date; b=HLpAhiL2FSVq5QVNPCk4nlidBiYA9d7s3jcKZu1HSG45GzEGPdSGiTONHfMKlrIYiHbKEuAR5zhyRXCIG6ygV70lFyNEluoCcc64H0zdnfIVJJ4v8mFR/YuwQagwCStk2MfIaH0Z3/hi0PVLQjZXFu6qtk1UeZfureG3Qni6iwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eBwwfsC2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eBwwfsC2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68FBC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 22:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769813633;
	bh=7okWl0flnDU1qWMxEEXUxa714hqGuXpG4KqCekCklf4=;
	h=To:Subject:From:Date:From;
	b=eBwwfsC2WHVtOJ3Dv4tm0yOM/CiIk6PYDAPs/8HGOv7ZEMNHRq1UAFgztPM9AfScz
	 K8c7ckE8p4CSUpLUN7sntKbI+tSofRRfj+SYsGEm99ILALiYRiHOHgX79BYypS98iL
	 Led9J8RgytSC4dTOPIW4ycBAHstx/AMCKb7Eoc6KLdT9RFa+JirQqdWHN4UVUUjVfI
	 tFgo6xTk63JGIpMtvPmmJ4QLfna09PKUvkovDQz+3bRHsKmAFU5DiOLvl4CZ+HhRfB
	 Qciua5/yTqLW9Zda8CJGz1YNkPZ6jjtGoUBAy0NsSAKjO8aEC8yFkZO3491j++5rUi
	 mHcWzUfzbx/RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A16E6BF3F
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 22:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176981363359.27837.1812252742460045890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a47956f9ed975f33a4fc37eac27418b97f9b8739df96a363ae79ab9faf279add
Date: Fri, 30 Jan 2026 22:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769813633

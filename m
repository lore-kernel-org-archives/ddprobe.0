Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380FC3DF01A
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790232634; cv=none; b=Nx90OVmY3EgjiUs6zVmweC8qGTc3SRaTBL+UcD09vzJqJKBCRNAiUYmkuNU0ofr7/0X7OzJmD7LQW9vQ1PoY/Qamt1LLJKsWfuZGMu1b+/OVELIPg8v0Tu+FRAagCfe7TLkM6wno83xYVK61dI1MA5NyaTpm3iWc7oUM8akvCk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790232634; c=relaxed/simple;
	bh=vmCgv0FJvlygR3qMgjMWg4704J0/Q+aCJuTVlhMnKi8=;
	h=To:Subject:From:Message-Id:Date; b=umJSbviAB+855wHhGE+WLHx/Q3hJaSHOj5nVAtgAYB2Ti20+hnW8vSfuU3axZv5W5yNvdrPEPTPQGCxsKf4F77EHr9ij3SUrFoHjlRzWEJ/6+VJdBY1aohIm7BA0ilA7XsBRIMmrB5wymgWzbJZl5VYe7KbGcB+qQ1SZO3JGENE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uHvTsGTp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uHvTsGTp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D384EC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790232633;
	bh=vmCgv0FJvlygR3qMgjMWg4704J0/Q+aCJuTVlhMnKi8=;
	h=To:Subject:From:Date:From;
	b=uHvTsGTpnx2j5MEfoNOElkoDOZri8cG8vX+fXrmJaHAYbf0U1k0vKoRrrWIIPfwP2
	 K5wgkU1FTe6EerVE0Z8Dm2naKrDf4VmfpMD5XZ0ekr2Ykf7MoT4lhsZFSJYVILis2d
	 8laX1tcRDeKNdR5cd4nrv1Y5moj6VO5Q8X3pGyLr79RzkRAGYuFV2PNRPYmYpzpZx7
	 YnBMbjO8JcguUa782oF09i1vLXtDcm+Z7dCwQT/FSwzWnX6uSb+GKPg+Ae+gVHZnhE
	 IA0sgYHRcAh/v3fCAaMh4qNOWesuqkAlntVpN6ImSgmN1zKlL6zWh+ZSPPeV4+JvTn
	 qTqVbq0M6LM6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF502C98310
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179023263370.25112.16127392434888924129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35c56872a4a4317547b92907ffe66fde3ac4cf5fd0df66429a394ca672a8a342
Date: Thu, 24 Sep 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790232633

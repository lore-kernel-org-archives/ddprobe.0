Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9B828B7EA
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762382994; cv=none; b=qziDde5Jl22mYU2VEsgLJxhz9tCCJnCnWimQkI2CKDlStw1fhcjYyVZL9hg29HPqHGQ4z49PrRHe1LHS8ib3wMAb5TQZX8t6Y/3GMQrHevGCOG+t01S39LWs+ooyafKATZg4ZZk7ALq3rvQjQtxmxfZP2QF0wrOs+7KUWwwGiAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762382994; c=relaxed/simple;
	bh=LO9aaFZEsnRiJ20DRsmMzntWiDza0te1P3Tz/uOjM/I=;
	h=To:Subject:From:Message-Id:Date; b=eAF/jk1aaBoEt2Q8hfclLbdllKTQSB0Y9vBBOMKor8AvdTu+z7Ija+zqmFN3ETSFKjLZ5h+x/QlA87KDhuXhuuhmYexY6Ztfdxav3kxynW4b+FqKuELsyCt4DsuvPh1V5L26xGo6/WF1yIa2QJ4IA2OnIbegh980NLoKGgqGwUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qiuqXxMh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qiuqXxMh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B3FC116B1
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762382993;
	bh=LO9aaFZEsnRiJ20DRsmMzntWiDza0te1P3Tz/uOjM/I=;
	h=To:Subject:From:Date:From;
	b=qiuqXxMh4uAfiruDflSDHUiL4TBRgV/qiHjOEPzx/cpBQpf0VHn6Zn4UsyRRPiBHy
	 AqEm7s2zNo/aiKnWq5lFBnoqQMIsmPGPHVNwOR81dTT8tb6Sjj2IoyBaI3kZCi2D1i
	 YfGxf/rMLctnrfe/2e/fr6NXpN1DP3vJrJ145bSPh0Hcis04iJdPNh/Lur9y5Jtn0J
	 D7pe14LEMBPwuPZIT28/dx2o3EZxwTpS9kRpmK7kek3A/+3idTGD+iRUYQxhnTgW47
	 MQ67pRJ9YLWe8GnKwSJFR8YWuDL0f2ubMlbVxwcj6ar04/h4D38p9Ipwusn+EYTSJf
	 /uxqZYYsC24CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927C5CCFA0D
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176238299357.15034.4707709880594162642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b20be81f0f85e59e3ac1f510b5d05727b122d70cb5f7f0919b23e67c804176e8
Date: Wed, 05 Nov 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762382993

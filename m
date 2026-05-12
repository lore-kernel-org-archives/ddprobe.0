Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0726F38333C
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 02:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778551234; cv=none; b=e7DlV5UnMgsddRTR0IXndJp0w4sgPB2A3hRulfCbSEF2qmGG2PagpVjABbzkEp1TpwJeTkkOWYVD5/YCbdkv9GHbCbJRKE3ESeJHM2/aMorz1lpX1ZBp+5rwaEJzDTOcEiFJt65A/uWDu7XvTIRmg7P6XvyUIlnNp/62xYyYeMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778551234; c=relaxed/simple;
	bh=8hv3grRODZCaDP1AHlNBQ4L6nCCTSxXz34+1wTXV0+A=;
	h=To:Subject:From:Message-Id:Date; b=Cel5CzwhwYK4PPhTEWKjtSV+NRoQs8/RQnlNTz8Tw534DfiUy12h6yvQ+XIKs9Gshs4UZytgjCN2HywrQKiQ57ycvypqeJ71PgYlROUkonOjV3/MtZgl3xDEgHghAbH59LPSIQY+f7HghSES8X8D1xum2QoZ2XMWLpm49rUDZdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iRr9ZPFH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iRr9ZPFH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8265C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778551233;
	bh=8hv3grRODZCaDP1AHlNBQ4L6nCCTSxXz34+1wTXV0+A=;
	h=To:Subject:From:Date:From;
	b=iRr9ZPFHLn2b+HoZaHw2W7LRiGjBJrYcsSRAqC8f2N6jFyueF7qcRTrSOXzdcIezd
	 NlIuHzQw/r08IzNDt8+IEOABW9ZZdtKawlu1IkTRklL3F1kE6YNKNoAixDobznYT4n
	 iIK9M0su8KwgMoJDht0vT+tnSpHYVqAAroumEbu43wjRMAN0SY0UhWAQMapka+3P2J
	 L8P4ecd+EwMNxAsXnFRAf+VNF734TczXXVDz5AbOxoQXlWTxy3yQx1zQF8jogyg+nt
	 QqSPeUm9I20VfujuI6ihDEAKFpGpJlZMt2Teplnpb761OSmMfa/Ag5csjBtVHbIDtE
	 3jt+uRRsQNuow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DB0CD4846
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177855123368.19735.9161792817790987767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b49ff62130db2bc2a88261d168df545b71b63af247c08aa0c587b912ad65cc8
Date: Tue, 12 May 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778551233

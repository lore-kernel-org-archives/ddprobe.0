Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B92542C08BC
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759448993; cv=none; b=E5azwssCXtLNkGuMo8NAUGu/yeyiLFLg/9cFyn1iti+FQ97ASB/1FV1ZEyi8ml4IM/bHZH+6bs4oj4/CB/xoyN6IfPxGSp5G2aQa/nybf3PYsq+CBoE6LdW83p0SQEm3gSU4yPp8yrqzXRnnWdnbs5zv8UdRsRSFfPXSgakgDhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759448993; c=relaxed/simple;
	bh=1SKYtKANl0E3dk4s176f/ORogJsfFfrFvCgNn3nQRy8=;
	h=To:Subject:From:Message-Id:Date; b=GCiuhwymOt3LPB9Foj5tUTNB62lvYb7lG+XRdt8DSJVmhQayOmxAt6rMB2hAQWi8kZXrcoc8Bea8zONGEWlTmkuRqA1ZXbnCLa7u/Jl0NKiVeS4Gsnryiq+ipL8E2cs1qZp66gWvcs4ol2zwKKE9WxJMOG1MaQXJah4qo/AQNCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mfV4JuxW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mfV4JuxW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D861C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759448993;
	bh=1SKYtKANl0E3dk4s176f/ORogJsfFfrFvCgNn3nQRy8=;
	h=To:Subject:From:Date:From;
	b=mfV4JuxWeVdg9c5U1y7zadcGLZs8t4Bs+WEmYPZQF01WxAeDsRH6HndQIKKfeiO68
	 XeELkevUWLuAikVk4ycbD9C+bql07L6GnXBUGk5EcTue5NiHPL796sKhRO0CqnApG5
	 fX02QmRPNybOUe0JSaR+Qpoxbty8r+lvbe48dqyT7poDEN9VbRuNy5Te1CbfCiOSFz
	 ipQeyjzqXNHkPOBlkxelyrKWuVSvLANqt2E0LlP4FlYCfhZ0dJZ07Bha5yVXia9V0m
	 U4M2HmJ24exkhRBOnykvlg5MfPj71BrnN7iDf9/KC2ZLE1AyxIw7Obr6yF76HhUj8G
	 BLQ4MJPvpYW5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB75CAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175944899357.2908.9032297582483178752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cf28e75aa81b9099a3d2eab88adba48300f8528b5d6254e0a70bf144de52787
Date: Thu, 02 Oct 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759448993

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4645D14A85
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724530554; cv=none; b=Ukqh3/cVTYwD9q9AURWKGQcjhImDarRN73c5BBxwO9heTePYy72Wh9Yrz+FiM1nlUo2DAf/EWeOGRoR47tNj4Um/kb2rbr5TXIdhekdZJedQXueTO5NNbHMoEskPrH4hGSYDSC/0C1uC0/xRuir2kEJQGcZ5g00Ma4NOU528/A8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724530554; c=relaxed/simple;
	bh=cjdHFmA2xDb2VfYcsqSKw84r8T8F3LoUOcoMq9uTfDo=;
	h=To:Subject:From:Message-Id:Date; b=gnfebFBVe2o3LGvXyNDoav3u8bUJFmyURhavki2UytUCux0zGFq9Myo8kPPmskHCaEgnF/HzmcYxFv3GxscpmaAfl+7opGSMeaAZ4Itm3G+PNOh6n14lp+N9WdmMHkMBmSmGE5ZPz4l3I5YvSwzGG6MMXO1lGDrOngS360p/tbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Es0szPPw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Es0szPPw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0F14C32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724530553;
	bh=cjdHFmA2xDb2VfYcsqSKw84r8T8F3LoUOcoMq9uTfDo=;
	h=To:Subject:From:Date:From;
	b=Es0szPPwXo+IGZN1mlEfnXhlDPnlrf7sVW8CIUOjlUPb6ac/5p8EMwns9p0gV4lO4
	 VakMgkI+rT48BTWxE6zmpzTOQd5IePoDAJgM8S0Ln97Jq7VxLnRXKjMJrq5TUDg66l
	 v1czF6jNy//x7b3JUsgdfnmaARndKMx36Tn6yiL/0GpDzVi0y4JOHfFzdPY9U53w6t
	 bKXFdcW1eg0Q08SpckLYMrp8Xo+BhJ0/BE6WJ0IHJAGJPqxnt2f2hUCRPxUxEGHyNY
	 25xGAQYR8IZt1KLfXCNWSMJoaqAS2QtMoK50jbiYW7PuC0kAEjAQ6idDZ1SAu6zcIY
	 goNjq6DRcrUkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A19CC52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172453055358.30001.1619608610278199548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74a73e0b32480a73e79ffac8acf085fef174c5c62926c6693a7e885cdc7c18ff
Date: Sat, 24 Aug 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724530553

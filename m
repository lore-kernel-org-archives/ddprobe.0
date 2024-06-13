Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61BA3633
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 05:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718257703; cv=none; b=dtazYgQl4bZSkDgCcER4G3ESOMShekk61uRiCpPSssougi5+KODiRCmTDwghwBWXcrYyqQCjWbO8FDxLyy+IBomXWx7ZkI/mmBCb5d4fag8lUeSG41scYZ5b1L8wWTXIFbIU6aIaTPhcZ9wudjC9M0X3vxfKINZjZhorU32fcEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718257703; c=relaxed/simple;
	bh=mCcYtqVxfW2Ub2hxTzyU9ZWspiEl2KEBlwXsTj/SIDg=;
	h=To:Subject:From:Message-Id:Date; b=kEj1SlMGenRbJTsL5j/AvJC4wrAdyZ10LSO2fWnHzz9HvOJ3wwNSH3645/bxJYax9+iYHQv2eExO0aYwXfb1NvbmSPjmPS+vPmkyAxLA1+cbBmv864nGu5uJD27tfUSbixPGr7uC6p/yRw8ylBpHVYwW4L+FZ2CproAPI23ftD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tkoRibjt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tkoRibjt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0678C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 05:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718257703;
	bh=mCcYtqVxfW2Ub2hxTzyU9ZWspiEl2KEBlwXsTj/SIDg=;
	h=To:Subject:From:Date:From;
	b=tkoRibjtz90+Cz3NICcNrYL2P37yqh1A2XyzrVOul8PdNtuRgv0Vo02SWzjjWS7vP
	 NCEGzwBoBfCKGBk0PMBnFNxMyhEUveMBe9xo5Q8bRIoOE7XomZTNtMyvAw0RWaGJFu
	 /r5pJXfwjuF1z2WA9DSkm30Pi7kc7TdjlJ8dyIv3jVgbz87n8oX+SUyQw7wrR3JHMN
	 xmfz3p0G/sLUo2FFdnBSwQnTUjfuIYYUggB0gPg0ZjXTR2/kk+JYK+01C8dIwiqOHq
	 eSfwtemHZNdovQwJ0x3UmoqUD1YfAy3UIhuOTJgTQdQj57gOVwSrtRYK+AHJ2ozuYo
	 18l0dhCKNycdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D929DC27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 05:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171825770286.17595.315785896034151304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ddf78abdfa898d8e978aa0212deaac9d3dfee7f86ba4580ebe641afddecd684
Date: Thu, 13 Jun 2024 05:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718257702

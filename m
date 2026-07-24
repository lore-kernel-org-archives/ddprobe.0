Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58F582D73B6
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784870434; cv=none; b=ewU0oA0O1JReM+mNU55WwwzvJ77fHU8i1L3mgRuwYhroVTvEacbyI3M+xQ5mRwx1PHFqk66p0wTamQ99lxhfe8vncUV/7qyqykvcIk2o3P7w8gwTHw+KHw3QINMSHviGLWR6kVbTbIop45uqqvd5XfnmMFBbq1/8ru1CNu7WcO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784870434; c=relaxed/simple;
	bh=EqJK2jxDaeuYXUj2sA0lpfYaezzEuAaZ9NeI3U4ci9A=;
	h=To:Subject:From:Message-Id:Date; b=mZd6D7w/egM5p5wUr7A0YYPBUi2yze9P3/GtPoYXwYfrsrHLGq2MSiFT+agYMMfOyaoUK3GAPX0CF9Mq0hX4uiGjBcs0Gt/SEDg7W6cKrZbV9izTh+aac3gweHi87OLXQll0IPV9egYNA3AP9pBNbLAW8R51q/oEdn/nM9iGB5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MZ3KB4J8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MZ3KB4J8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD5EEC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784870433;
	bh=EqJK2jxDaeuYXUj2sA0lpfYaezzEuAaZ9NeI3U4ci9A=;
	h=To:Subject:From:Date:From;
	b=MZ3KB4J8VdNaQ65P8VmtAv04FWinGk+UTd5VbZvFGUrMtwtfVCxI95bp3r35CtREZ
	 GG1gy7Xc+2FVZ2DsRkReVa6V6kkkoVEX6gxwR+Q+ht9DSxJnrpNsnT0OkLlf3e46td
	 iW7S7IYrGhhowd+Jg/ZRhZpl2bXyjXknXNLuOw6mUccMPeLWiACD7kOZ+LhHqrixCc
	 DtrTP1TYtO9U/b1D5suigRhUBWtrqL2m6xvvhLbh3bMqFiM+ZqUBrv88dsfpXVWkJH
	 AYdw0mlfQKVUW06ctqv5323gy6gRCkK2rMA9NiNvxwQVQjV4LPsMPcSuunUQCwXHQg
	 HD1KxEKns3R2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F44C531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178487043368.30454.15607208438573273895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 532f25b049035f5b9584eb4bd10c9f5ece4a05e4ad0dde179bb18c2cbfc1c450
Date: Fri, 24 Jul 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784870433

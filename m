Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 158697260F
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 21:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772918094; cv=none; b=jrc5gcZctPcABJRa0NqKJ8iCPtcgQUZTNlK8A22eyEG5iSvc1nebvlB1Eu63zmvgr8Tn4UXQrgDxNb8NnmFxrbtGGD42v5t/Eidl1LkxNVQUjLedmf2K3GDWH0fz/g9ib2M/PoRmw5Ap/6A1dSGF4Nxh55tMBRFA1m4qoR8CM3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772918094; c=relaxed/simple;
	bh=BfMP9lPtiO/6o9pYQIE9/2S6uEo4KmFsOy2mReqYaxo=;
	h=To:Subject:From:Message-Id:Date; b=SIpGfQiFUrKiQ6F9dF78K1xMfvr/0+RvWUm/WdgMlf2iWMzqAp6REiUBLTrPo1bXCx52pDO9M1tEcvkFFaCg3YimTwcZwZEaasEkM8oc9N5ZKtVeWbD+TJzDbeNv9/AmYjRPNmbRrwnqRAVYz3FZeu/elFaOL4Plpi33e7Yv7Fg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h3sRpOvB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h3sRpOvB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0829C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 21:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772918093;
	bh=BfMP9lPtiO/6o9pYQIE9/2S6uEo4KmFsOy2mReqYaxo=;
	h=To:Subject:From:Date:From;
	b=h3sRpOvBPDoVzhNZIecjMon3UNWTitVD5FE08p1lx+XUxj57qvN2VoktTo1S+h/ll
	 NEbdB11VIRECu6APSqrBOQ28DfeSja7L6oqW2Un/CLtF113vhZm3SKTVWPGZ/Nxvn9
	 kPhgL88YDkfhy6XkTZctsgaf95TH6oPcJ43lxX75AnbVdhc4a6gbPivIcnq20NN4l7
	 TeAXGkUX6/nW+XBOywkNwRN7nBq9XVeCORuhHlHhrEyTAfhgc3dPKrd31CWnn8PFun
	 S4zBRWnjPtmoQLv4OG7JhCXAwpmcjdbMzawYtxujXlR37Sn3AWBfc02oAQpvlbOMfj
	 JYlMnlFxfPAEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5FDF55104
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 21:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177291809357.9387.16548899603325165224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2502c5cfa1702a31494a645b168a85d341c7acdfa48edeca3362a17034fe18d7
Date: Sat, 07 Mar 2026 21:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772918093

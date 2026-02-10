Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2256A35977
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 12:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770726834; cv=none; b=KYuS+GoHm5kxMf9l3eusZqN5Veefu+AgVBPtcTksCEIjgpqJ06pmwC+f+EsJwVFlZmyJDhIW4fvXqNbOP/MKMLQRfPx7p1leM8b3nZbk2P3RXs6cUvnOI1ux3jVqDnzgak2Nohxq0B5bbH74+WxIhb2CagZBOXnQRsmhEAx43Mc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770726834; c=relaxed/simple;
	bh=wscdJpEKDe1n7AmfmMITH/N56LxPPCs6cIB/Qm5enKg=;
	h=To:Subject:From:Message-Id:Date; b=QT4a+UtZ3uii1CzmMVZkQQZ3Gbx5LMq0alUmCyQQoZrS79HGX4DhwrNJWpn+8z1WOwfvAShir7ePFVEea0wY449fF+URqcs5NgJQd9gdiHJQSM/Mp09IPj09uUMTGPuLYYvaLiD7PVJuiYaFS8EdWodzo+ilQtkdM6IefCetaTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c4GIfUal; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c4GIfUal"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B03BBC16AAE
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770726833;
	bh=wscdJpEKDe1n7AmfmMITH/N56LxPPCs6cIB/Qm5enKg=;
	h=To:Subject:From:Date:From;
	b=c4GIfUalvxfvLJfiJ2O15Xx9YbZPdyvDoJJl/jV7OJNEDfm6toDcEN3Uh96bEzMsa
	 ZZacUUgwYrAEhe4X7s+AKiFmDsDJSfW9QN2Sb5QYzUIpOS7T/NFIF9EVKiNob2XiaW
	 KU/qiVPlCJWI44idU4QWCYf2Y7p1abz6IdIoMgVOvgBmv4S4YluuD4ftCe/6/2xS+M
	 R15bKcEIfnszb/6q1vh+XgVzbb4KwR1abTHmwYrVjYAny6S9lvncRduKtaHWpf0JbP
	 GRZDumswyMOajXEr5PS3rnO6Pc8Wgo/Sp59S5LU0wieRNVqztnPiPB0yvJBXY8pVmI
	 sNqnD75pfDxyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CD63EA8108
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 12:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177072683362.26110.18381073267524819839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e1df813a5b7b7ab716b94e1cf0851f8da0dda7a5e841b598769bc6b920eba87
Date: Tue, 10 Feb 2026 12:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770726833

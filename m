Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52FD030EF92
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 22:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772405094; cv=none; b=I1lVcn+S1SJPStYU9E8veUk6faVSOYrw7YU6JpdwdPJjiXPtN5FR880/bMICCu+5Et0UyMoC98TBJdl3M0UGYl+YFPQsE4zUVFibm+Gb8+ZMZogcVJL2BSQLMuWh4CreyvkUQLeweiCmBEeFpYC64zPpsX4OC+7rxfap4s4OGpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772405094; c=relaxed/simple;
	bh=NWx9QbcMP4j3+UsYo7b7K7rrbz7V9OtWLgNnDlGfqpY=;
	h=To:Subject:From:Message-Id:Date; b=f5wyiOm41iUrEGOvwcwhXwOuM62zGgE3Lz38AQRPzwpbXivL3fQ6zfyzsbpRoRz6rKO6xmf8GwGXjhN36w8HGACkTIsv2MxMEFvrhQr80Y6Z4wSvzQiLHJKyIFmo/CjpPNQp/STRNfKCIF8V2HI7Pk62Kvaynj1k7ItwPNwZlqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QqhreyTN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QqhreyTN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7E64C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 22:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772405093;
	bh=NWx9QbcMP4j3+UsYo7b7K7rrbz7V9OtWLgNnDlGfqpY=;
	h=To:Subject:From:Date:From;
	b=QqhreyTNYfo25usur+rMy+9SBdJgBQezjZrgFXfDattR83DM1tQUuTUy2HNhOKFqA
	 NVji63XXBd81D2pklUC2T00cRvcrAovuWr9osnFmlo5qJyL+436gjZY9/870b5qFzv
	 P1WI3NrQXzyEKiJkgAMtvO7gJIQtrp3MO3tpLz6mEMzTKpDo/t3HaO4sdccCvZ0bc5
	 eOk/D+c14nYqD8I20KjDNOKrQgr4S6H/cCAixi5z1II3zJ5r0QOHEF0QmHq3c9so0i
	 A6SbfH8pHl/4Xo+vG4x2BPAX+T9apAXdCHziaGJPkcPnL8iKq4PIjeYF1Z5NCoIZ6z
	 FH9Ef0DUsQLGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B502CFD0076
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 22:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177240509366.4827.6196968179574827514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 778f114697b8ede8a3f6fbe89fb096e4e5c015bd8633642f97736d06e0b086be
Date: Sun, 01 Mar 2026 22:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772405093

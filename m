Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D11CE2AE96
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743343793; cv=none; b=HRNDsffuTF6og5pKqdYGMvSZQ0gSi4JXzBhcI61qvPRtzAVkgfoT3VrAxYD3g1piMh9zIrOD119pdWxEcZMWnUqpWUoSPyFcz5P1Jc9s3cvzJhH+AOt6Y/OLc/rgXxWTLS3cyVmCVn1MexiiTizZAelurYfXshMj1Xqw5pKofgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743343793; c=relaxed/simple;
	bh=E/HH51XvUas1ktxN1U80RMsb5Co4T1feDiMUPKibAZs=;
	h=To:Subject:From:Message-Id:Date; b=BXMH0JBcKsiaVH0pHUMq5BWoxChVruaYOVbzsgZQsvYYa5FOF5zjACxFHPla81rH1gVd6/Ga7sLQBFkaagsH71Zz+HXhAe4dzVMgVp9CjpfOZpwDX+nbnrF6DN6EonWe/Dve77J7Z7OHZDArbzqZ0MgeMEyZ93UXrzMeC3o1/LI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jw45p0Dt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jw45p0Dt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEDD8C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743343793;
	bh=E/HH51XvUas1ktxN1U80RMsb5Co4T1feDiMUPKibAZs=;
	h=To:Subject:From:Date:From;
	b=jw45p0DtGjS1RDkTPT24tG5oFwibmcpAfEePvYSiLy5FeI6tEy08pkNBAyjaiMn/+
	 APHY9dVpDlDdDq3nH8vHVIFdtSxswbifJV44UXbejhQQrIQEL9PjG2u04T3G/QQShV
	 d4jyQRPE00P0LsJmsQQSFSPyUqDPG259X3UdIQOxObzqcz3B7q95DYT6LFjAavy81m
	 3sLhnY9Lb06xIfaTtc/KGfVxWawDU5t2MKarLqq9eprT+6pm/i806YSaeWK2V3V/Wb
	 X7AQaRxTjy8+Fcg5vV58MQPpCWrIdDHH2wJ/pfL0aPykweSPO7neiH8yjOvLbrfDAh
	 DmKa+11diE/Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958D3C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174334379360.7707.9395248105003578403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d47fbf8fcc0e0441c56d870b030caf37c001645d5808a689351ad76e221abbb1
Date: Sun, 30 Mar 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743343793

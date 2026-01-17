Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12AC61DDC2B
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 14:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768659234; cv=none; b=UcNxij/cuL545aBDPE/OonqSyzBBw0swJ5P16NNA3A+zQCD7++hBqHTKCfd6MH7XVxKL+RKsHbeGrFxfNhYP/zje9B5PUdgHfJCNvNY7sgqeyx15AeOGcnd3p8scvw66USCOKsMN3uDgC9wu97wtk8RLCzKfhs6I00tn8Lp/iCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768659234; c=relaxed/simple;
	bh=29O3uEefd/kpoN9jloujL1g2qGkjs1l1SA+mt8MKH6k=;
	h=To:Subject:From:Message-Id:Date; b=Gj48H3Kj+RrOABJBIj77/3k8coeNE2BUQNVEGU0vSuATLbY5J9RXfTdK6P3lFQ1BWzmMs4S8Baikn1wS9Kr9tO7q2vgtmeyOf46PV/4qdZhmeUrSvALJUm/6Fv3c2dBRumTJN6MVYcd4QKazXGukNdNIaja6Ak9W2NBVhgdtPBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ikV9J/3q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ikV9J/3q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FAFC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768659233;
	bh=29O3uEefd/kpoN9jloujL1g2qGkjs1l1SA+mt8MKH6k=;
	h=To:Subject:From:Date:From;
	b=ikV9J/3qfzMBZFoygaTqvbhsosr7nEzdeUl9rcpOKPESZDglaQkorWBsETaKQclPP
	 7gTtdgTjlL0pOw2VPsiYsLcQAuSRubrnIzwruLl78ulNHNlV4gX61/0X+OVbXy30nF
	 aSGEvYCGIWqKBJViaKMy/Nd2wulOoCnE86Vy1Kr1gQ1+UW73bLdcD9hSVeQOarq3X0
	 9wNftCbrBiR5F73Lupx8gbzUQCpfsku6oCPeIAvCEJ/tjG8zDUeFl8OPWTFn28DXph
	 9a0wpgZZDFFErmsUH1R1kU2T1uVC1muQ7YoE6nGIxvTRVy81I5LBLgym60kvUskC3t
	 vuHxX4ovRnKEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90428C9832A
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 14:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176865923358.23869.12385671400633184398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a639b8fa2407e4865483a1c39943708b9505e62ef9c3e9d13241d36d550cb6cd
Date: Sat, 17 Jan 2026 14:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768659233

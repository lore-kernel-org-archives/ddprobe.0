Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 317382957B6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 09:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771233294; cv=none; b=avHnfsFUdKADhP3ZhWyDu632vJDDckUZ+jB/VMtd28hwCNpSFyi1pViuaayf8s0P56ifHFJiHZ7N0j8FxdwuxNmLccddSw06DVazSNXVWv685svDtXaD77Ulmv4CrIHiqOkeICbISQz3ztMTr7I6E25ju3m7rz4lulgS+q5C5BM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771233294; c=relaxed/simple;
	bh=x5B+E4WWw/Bx8G0tZEFS5ztygm9nJ2UCCfQRUzGy9D0=;
	h=To:Subject:From:Message-Id:Date; b=MDS6YnlKXsJjQD2sKMC3Q88VvAoMVeuFBr2bt6UW9tgQbyPcmQqo+VUBD0mgSm3e22mSM2yTIt55y6hi5glBpPwmWsvDhX3NS4UEREGQ/e5vqXQgaUVXi8bKJp4JAL3v9sKPJVfeH4ICXJ27eEucyj1y43wJkstwBktGxWfAaJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MR2SxKOY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MR2SxKOY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0829C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 09:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771233293;
	bh=x5B+E4WWw/Bx8G0tZEFS5ztygm9nJ2UCCfQRUzGy9D0=;
	h=To:Subject:From:Date:From;
	b=MR2SxKOYGdS00enWv37Akgendzi5lQl6AmQhACjSP3yIMJ+Dj9k3H94u5FRTfdDPW
	 X8iwjk/SFII8npDOXXIeAFrkIDeNu3vgYNDmNIqjR0LJcYlzvmaVmHu2K+z+94/Ff/
	 vIQpfWgYJhrp82QCvrwEh6DsB0Mm0+yskcDIWgg5kVmZ3ncfn3ZozNxklrojFe2P4k
	 nXHw28yaeWsu7yWKb49FFRD9q57rzkzKoK+Qeh450etmWnqADopR8yQofUJUf3aN21
	 EiCIyhqDBZoIhnwaKG6KlTp4vzZYztvUX4BcnC/G2QnLlIl89ph9w6NV1raJqSf26v
	 VSyj6m2p+J/Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C02E63F3D
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 09:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177123329365.31880.3105928964429317960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55a54f4e698446f2e840b09d56b2d8403bf8ad29b97fe17696cfd3d829ce487a
Date: Mon, 16 Feb 2026 09:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771233293

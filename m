Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A2292595
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728152754; cv=none; b=Colg7dSr/r2a9PmAOGBWSXNwQ700zojJjcxAQv/eAMvhfVbtDckiVIZHZlLv4C6uoN4bzkmu4bjA5sWa/1L4OpE22Bv87nyHBRJgnMgErs1qL5AF4aL+naak4QCAhBOc/Wsk6oTLU80PmiAM21UyjOl0WWCBtrZ5FFIVO6/W3fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728152754; c=relaxed/simple;
	bh=Jzqi6vMyXgN1tE0mxgeccLAAxTrGSg+VTaCAHlmltic=;
	h=To:Subject:From:Message-Id:Date; b=AYnpS5m1Md++ba5xoPj6jPBC0SNqfljZWgpd1zuKlTBLN8lcKSeLN0h1XvJxLeoT2DGKk2pCdaJ82i0rJHT6F1t1k58MuNo1teAt0UDhnpUYSQtDW3TqpT7vMiKzUWk1/adsdRGtYq8TxgAd//nna8OMAKRJSFeanzQjI5LaVwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bEIldgZp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bEIldgZp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6663C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728152753;
	bh=Jzqi6vMyXgN1tE0mxgeccLAAxTrGSg+VTaCAHlmltic=;
	h=To:Subject:From:Date:From;
	b=bEIldgZpB6WXAqqTDlEArajO2/H8LOZvaM8RSd89NiZcDf6QWq8+dIrgQjK05OwF4
	 385olXKxBAbBXtk28NQEY0uMDSLV0xDLi5UebXx2qx/EZwbBQRdutLB9hFy0xiuBXE
	 HN0um4v0vaJtMF0juHfVpVU4bj6d3uTYWxnP7oxvVMeCF2SlXDqCKdVpy6oMHOHKnf
	 n+Gn+3Nw8VvWO7+OkAOc7c81IH34Ff9/bPqkFJowP6CVM+D4glvy4TL/IkxFQPhNro
	 IUy34B/ohNCfBJm/7y75WYtHcDme9mg5jVvU8l1aEQMnVQRZ+jQmNT/y6Vh1DLslqO
	 yWna0H3+NLw3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91126CFB420
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172815275358.9855.7031202142823273811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e466c4b971f2462ebf353fbb9c3a10c74dd26f694fd2bcee71d11b378263e5dc
Date: Sat, 05 Oct 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728152753

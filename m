Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1641A125A9
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 03:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764213774; cv=none; b=RemA+6aELvj19xxfclplwJAr5b0pNnX1c8DwLpjPXY7huoEt2ps/+QXtmDhM7BBEEcbq/UmpVA7pl+LZ5lYUsj0DiOTGtdtAMxvdttigU1YSp93wZ1CrPC6KbegD5IX/m1gF1ZxVAcU/w0m37hacFUHmSRYVGKWsgeyX3NPxBC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764213774; c=relaxed/simple;
	bh=/xF73ZUqU372Vyv/Z0HI/aMYZckD0SJ6fneA9IFApN0=;
	h=To:Subject:From:Message-Id:Date; b=awweeFecLYOKH+Zp5XbgIIZrQsLs2k1eDXW3zSyqf4SS5mds5bQiIToYiRWqDMG8CR6LOOoRcZshDyTJ7/pPdpgaCpjl5ctdhDKjLJh0ENuQUZQAXU9csUk8FeBkwTJHzni4Cmc0Kmc39/idJ8KHzyLoXtowTAyqxgWrv3Nm/nI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W+WyXulw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W+WyXulw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAACEC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 03:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764213773;
	bh=/xF73ZUqU372Vyv/Z0HI/aMYZckD0SJ6fneA9IFApN0=;
	h=To:Subject:From:Date:From;
	b=W+WyXulwLToLJxz5BlsRQ7M1qXMWCE5Hm9sBqlYOQQu3r9tL2LlDHNUh6r8JAG7cs
	 AazpT5CeEwsogrHzrpFHSQb9V37KEEq9e1egbi4IBdN6dO5DOodVIEdRmJpgBcqS1K
	 NR6qLGPnfFb1v+lnkAKueZuK7GsscwqTi4Eaim6y69UnkzOhqZs/4LIVH4wK+q0eGG
	 39HPK7o+YW6fKZ84nSykdt3O5snNQ9kwTLVlZ1yzvR8/o2o5HK4ZFCeD+xahRgchoj
	 TgJ8sNGRFSS1utnRW0ErEIS2faam7skMmF08lotKyLMGbArCipDhBkgyU7+k3BadmC
	 cf+hArEMqqIvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AEDECFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 03:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176421377360.17510.5654911748848494173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b71a783b3f342b50115de7c198e8761f57f2acee3a70d4a9ed108236cee4fa34
Date: Thu, 27 Nov 2025 03:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764213773

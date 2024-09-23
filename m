Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1740F28684
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727082354; cv=none; b=Ky/VEwIQBpQwqUZxCETGv4IYsx5efi/UUWImiDZR3A90ZB510av5wzynXHLBHLrG74BZA69swb083a7wSgadUvRAd6RKCqJZfkDgm0e2OaHUMinn2moWsza+q8hsY9XNyPYmBmWdojNw43KDnkj1fS55+HRiuO9Z93Gl43Z3HmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727082354; c=relaxed/simple;
	bh=pd61227CKE4Aiqxx1YuBW3FMYZ0E5S/Xe8N2s3mWs0E=;
	h=To:Subject:From:Message-Id:Date; b=Kx03EFsj9qapnwHv1uXTH56FQcuMF0pify+g8RS/3f00fJsmyHgPGtOal43vDBMZ5reM/aFsF7awuzdGOmqRWomeEdfnlB3noh/2YYqHuj46rVKmhBWXgrTTlieJ8repcmiAMpLcKkuQ0tbg1S8o9W8YEJpqoOkcV5xrks2CFYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T7+zIkt/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T7+zIkt/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5312C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727082353;
	bh=pd61227CKE4Aiqxx1YuBW3FMYZ0E5S/Xe8N2s3mWs0E=;
	h=To:Subject:From:Date:From;
	b=T7+zIkt/hxsCfgdwGYyzxTcCkYV21IxeKfIx2w0ISQ0tQQYm3mw3Zn04rP3bGwLmk
	 +NF0/0mlVXvj+53dtbRPmrOsJasDtRySSwR+r9XpVwwj8haGVMf5e57TTaWdXXLkLR
	 H0g2qy79hTaPzQCrEbOgIlmgiUBqkiqzQc4N9ZN5mmVq338Cp83kPJugznUO+Zriha
	 7X2ecFwVh+RsnAX0M0Veoc23yKmzrgjrH4LCKQ/9mXCkbFEcSofy5O1pD7IeKRBwNd
	 Sp1TUQotpTu5CkQMOY1LQdRl44JubuRgXoi84aGC+EexXm61/Q4aJMd37GOjCmPfnX
	 b4ausWJUAunAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D20CF9C6F
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172708235359.4216.4891368417882143127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59810406c83d2e3ea2bc6918db7e5e12c66931f9323f9b0e12de15705b1b87bf
Date: Mon, 23 Sep 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727082353

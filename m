Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 829E4379C2F
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 13:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784380714; cv=none; b=IQFIMAcWOE2ftv+hdUj9M1qyo4/ffYRtEKC07a1PO+hvfJwk1dnLsxSvEmNUo4oSZkGIH3KRWm/VkXhWGTE30lohdJCVqpXd3ldfZbmJKijKNc7C9+JdkSmml7DtgJKXPI717NHtVrmCk5p/2tAbZJE1S3qhUOIfHrr3tJj4HQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784380714; c=relaxed/simple;
	bh=VUO11xRpCXyxpoqi9P49ZUmK8ogerzjo/uHLK5rQutM=;
	h=To:Subject:From:Message-Id:Date; b=RkG+CUYSP+BgOeI9z29CqScEhSMzeadGnDCXmHhJMD4O4QSViDBbHTaRcRhg1o9Zg4ixpsjd5Mx5GQHu/7I5Xy1hDM9gOf1FKz0hET/Wm98kowDJRr3tW6o0uQ3Vb73ctbJUERuHxt6xa7QelMo27Nhjy6DeV0hu2CmWhjSlGA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZMgjyb9R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZMgjyb9R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0D74C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 13:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784380713;
	bh=VUO11xRpCXyxpoqi9P49ZUmK8ogerzjo/uHLK5rQutM=;
	h=To:Subject:From:Date:From;
	b=ZMgjyb9R9NWEXzXwK8l4eudefssV/Cusp+FGG/saGLuLWt/4mDKN7bdyHvgfZSpaJ
	 CP3OyOkxt/aHSaJaPB52hB7wCLzr2J8SrjV07LUNPQSS/RlGU5RUs97LL/7gOeBamr
	 n2Epansji0eBzpRtfNORP41MKyKqlIp7PiDBopkvJTFyhSLlcaTio+J1uDrdGEXhuZ
	 cZSqzLMn8Mpdb/ljiCT4FBGdj7lK69LOAWxwXGs4Wx/2kG1gvPhp2A3amGBHrROH6i
	 cUCN326j4QIyCWaVySdAdqU6WUxgu8DMNkoO+ZgU2hNiIUrDUDJyibPP45xadmP3/8
	 axPGpXpa//5+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEADCC4451C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 13:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178438071368.21390.15622493331922302756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e2421bf00ef88ea49e21be6f0470e936e321f49476d31223b07957a9142c5cc
Date: Sat, 18 Jul 2026 13:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784380713

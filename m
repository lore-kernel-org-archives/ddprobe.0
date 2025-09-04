Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 417FE2FB99C
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756987194; cv=none; b=gWS98xul/SxjQ7bEBiHFyHzvP49xZHShmDlIdTdTPKUiU4w1wgXKYbDA6MwvCBZ9uAhSkPP2bZBPegXGKRytpQMBlX+/NpL7VSv80Q7GVHZxFAQol3qjtSiHdBxMASVCyIpSisEVkf84qDMCchsB/76lscQYSCrpM3dI4CYRD9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756987194; c=relaxed/simple;
	bh=k0yBoxpVC/LVM7jYPAZahCOiRq1sf7/ECWCjokiN9ZA=;
	h=To:Subject:From:Message-Id:Date; b=k9VIF8DJSkRCpEzV3Oo/aIATogsuW7ReXZ1mUqu0axV/VVSqukQMgdUxcSVAT8bKtNLeZkc9qoMxB3oFHRsZwcV5Daj+k4DInKWXFbGIMrIt2MWuNOP8YLWLbLP4gll0L5wXDAjb5BBgxsATPTIKAZOZtju4LBHc9wOu6irCirE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nb1uSwE7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nb1uSwE7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0243C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756987193;
	bh=k0yBoxpVC/LVM7jYPAZahCOiRq1sf7/ECWCjokiN9ZA=;
	h=To:Subject:From:Date:From;
	b=nb1uSwE7o7CRnwIsXeYtUveUrUopQQvFzwsCj6Aa/OhHm0GSLrF2zn/YEUgxyR0Y3
	 INjjG6uXfgGbkVyF6gVuYSUsqc7r0+IKOw64pk2pPdz/RHKAzYhxRFVKryrZw83xN5
	 sMjCYmzFo+lKcIGDYdpZMy3PQSHemKaOwdZ+1syiNaUNcTTcHG0v11vHZBq0sExLka
	 hB83ykzykp5ttHAyf8riGnb1Ngan9E/UmvWEN7eQOSle/AwL2Cv0UlLvVcTuGbxOC1
	 Pm1hjPjq24YU7JNHTaCvDXwd+k8H3OPmN7Inyf5M8OYZ7P2i34oXO72tDPCsjPxRlH
	 KZZjxLohNzYPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F753CA1015
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175698719357.14399.10961293533523101431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77fd14381d01712ae69d158db9b29056ca890892eeacd3c5b485c5c746f1ae94
Date: Thu, 04 Sep 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756987193

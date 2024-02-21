Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 187F642073
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 11:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708516097; cv=none; b=FtxdyCrMKCXRrkNvJtdvszW31cmz3/id4TGbFpF+eJ4Z00SblUTQr5KAvKJrJGBe8IFXOhMVKpjzsr31pUetV3M/8EI9LXu2XQT4uRtdlNwJfc+Iv2wSm4n2T5lM6EF/PXUs/wC0tes1euXHTcxh0UTAucuEAewpXRTEDO4ZxFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708516097; c=relaxed/simple;
	bh=G2grce21KOzM5RyvpHDPPnk5GmZ2bYOySRxPNRhxvKE=;
	h=To:Subject:From:Message-Id:Date; b=WMf/xX/m7BmFw/xYnfxf+ybJajBW20KBd0HcxGulQiFj284zO1RkpI8B10rYBeuIT1yySC4nLUUpkONFoy16tl/SVOZDpcuI05H9ozQq+i3XyKsSKBS1DV2XrdMIfN0tbCVfNJ3e4E8Mm3OIvZ2AIVMjP6oAmiM4G1Oi12iu/Lo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uRLh6D+N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uRLh6D+N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CDDFC433F1
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 11:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708516096;
	bh=G2grce21KOzM5RyvpHDPPnk5GmZ2bYOySRxPNRhxvKE=;
	h=To:Subject:From:Date:From;
	b=uRLh6D+NGQGb9g5w/U/lkB5f4WS4HtvrrkzlmL1zg/HSOX5R1SI3DBU2ix8IB2N01
	 BHpsn12UFyh6TygU7QLiUvxKWyd4kJUXvRV9fA9wrcZQbSJqsO5aSE6mhICGlPIOeh
	 uvKP/gv2Di4xkqMOtslDrlWOO+cfUt2AJtkR+uT9h9ikNOyyTCbUjupU3Sudh2rciL
	 e63GoZUoa4aIKBAFSnE73xKejMFr8coZRwqfDeKshO6/sw14oGUYFrwRqYXqIkAzNv
	 VNDgoHhbjLFYqD18Uk5g9NcVMuXoR8/3TOSDV58XXZlxmFEW+97xHB4WyRbNBBder4
	 Ybp6+t4sgozqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60464C48BC3
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 11:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170851609638.18218.10507808901966079577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a311784ac5a0f9957351b8d1c01eedeefa43f43b29b37f25498ed867aa7958b6
Date: Wed, 21 Feb 2024 11:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708516096

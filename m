Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BC04209F24
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 09:38:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741253934; cv=none; b=XgJbPOG42KJ4jWlmtoJkmDfFZ4CA8QOVxkD53C8n1YCTOHbLSzahxlKFxwLk1U+KWRFlnurSu9kaeIvrhevMe/QrIzcDQSyA46IJxyEZCSmYbCeMfkHVrKIwPIprkyUPr67cpMs3dKtBgf239ChFQCX0/hTXph3TFHJl/FNfR4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741253934; c=relaxed/simple;
	bh=DWP95w1ihJpFmb8BqBP2uSkZ525t1rbVfEU6t1P4fNM=;
	h=To:Subject:From:Message-Id:Date; b=b7kei3Akf/azvZI+HO/Wrkm0yzalTnC8Vv48l5dio6e8fL+8BsrfAWTjlOkDE6yfkOzMS7SVNHB2Y/mQtob2P5ChVGCHbqzeXlbxuzI2rj1jIm/MRyByj9+H7CyhTZIcPvPMuIG6jSSkLYU/DujDWQXbqUHcf5Ap1IHMc1kyB2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g8ZjjJMk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g8ZjjJMk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6EE8C4CEE2
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 09:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741253934;
	bh=DWP95w1ihJpFmb8BqBP2uSkZ525t1rbVfEU6t1P4fNM=;
	h=To:Subject:From:Date:From;
	b=g8ZjjJMk59Zo50XsHxDv4I+KGZMHFhFbJ/v8agaeEo5FxCyGBbWfPI/huekVChwNT
	 KJ/MNeUxN9Jy6c87phMcBQHY1rfNpn7eAFp1oIcvhgqLvFouxAqOx180IWBmmYdKqv
	 kcbSTsfnUrODDLWitubxXlHrsXCOcBVIP3zT38oJpdAQzf/K1MR9FwgO50pAcejzRY
	 0QW18cZKaSTgdTwd2LcFb2/LOkWu7179i6rAJYGzcHiVzjBPqFMTK188ldSylg0WoW
	 zuI+4O23YPxdnv+LejXN6R2wP3N8Xni4Dy3c65hAxHX0eE/J0Sq59hzGADGT7R6xgI
	 TEq5eZLLUQf7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7A34C282EC
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 09:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174125393367.15587.7104154324256047496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf2ee19ff3f6f5c289aa9e3b66f6f9f03cf31d94301cd3453bf37b8eecc88f18
Date: Thu, 06 Mar 2025 09:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741253933

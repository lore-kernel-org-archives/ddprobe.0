Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A9E829E11A
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 14:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781792194; cv=none; b=oVNB4lV7dpwK3Nhf4g7duEoO9MIJQJBXhELQoAg4Cx2I1tCutXt9cUOfFpGV/qqpgjUCzf+WbxVPpjtZF2VWu2X/JQruvuAkaI6PaYoJ1p951Y4HyNKRNzU2rO9j3UISRjhRBd7kK/n11hdNIgEckE6qbzFc5wygQtzSRzBe2fA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781792194; c=relaxed/simple;
	bh=fltt1JkvJAu181Y/FCrLXM69oWpksgLAc3YYEzBhKDw=;
	h=To:Subject:From:Message-Id:Date; b=kec/WvAE2hcKhhs2+T2pAtksR+QwXCL9/i62NJp27fA9iCfy87HPiiXtJ5+UbW5R4S5K1nl/VjtLH2NaideIpDKd7cj5e5sNcF/mAr6948lHpBgiqX9l8c1kTiSaUCX7wGJwb9wcJIvijdtEZNy1jpEDrkI6Vj2OTZKKENTbuXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hECZaVdO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hECZaVdO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDC52C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 14:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781792193;
	bh=fltt1JkvJAu181Y/FCrLXM69oWpksgLAc3YYEzBhKDw=;
	h=To:Subject:From:Date:From;
	b=hECZaVdOwleQHrh2Kbwt/EGqFxvDgQSasKY432co7jpDFiHZKbXGt7TOnlcEMcu4h
	 ku8L75iIZJMH04+mfM8TfM0317pM3Ob2+E+mIVnRDrljIuf0hPxRILApu8Z5R8VBiN
	 rw5z6oLvcfBIx2J9OPfm/CgfShHFPoItAJdzfEbpoVfFHleM7Tr0kkr7lyHJlk2Hri
	 YYDcUzulfM38iynjbaDl8NVc0rwdKbyJ0TEOjXPo7LAMe45SgG0B8A+Hsq78Fgh9Ed
	 1uoe5BJ/pqRzleORO9V6s7IZLcBeCn1949R+aD2hsziFTp6/Cyrm9dPG0sswAE3v7x
	 Axp9Bg4Njnh4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6739CD98ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 14:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178179219373.16530.16102509494133651660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 114f9d8d3f05280d4d7c4c24ae2994d54fa55f47132b05e8d693749c442a61fc
Date: Thu, 18 Jun 2026 14:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781792193

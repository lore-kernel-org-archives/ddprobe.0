Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2181B363C77
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 21:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776116254; cv=none; b=smBav3Hm67fYCrnIGq6Rg5m1GfAa5ZE9hIEnQ+OHz7mMHAxHDIuNPfHAayq804LJdhmIECGdW6RolYjByR77bPE5E2onKJ5dUtmyYt61pc3hDeETsiZX7LYIYt+n/WHPAWSWnv9C9iySjYKJ4GRooNBb5KfH8Rus9sq8lTo2ScM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776116254; c=relaxed/simple;
	bh=3yiCr1KaEAN2KIi+Hs/VYMpa5NjanPrDYllaxyfGqZM=;
	h=To:Subject:From:Message-Id:Date; b=rrCpsW1ljt/fqBolDxOvmsDmdDZOGckXEWUg0+GHMeZfDQ1ondUZgv7JgOpQ68ez+UP8z4SkpmL5eyvX9t+DV/xZfXW6c0yn3ojRDLHsRyvO+4D5DTGqcBi/IqDtLugv/oM2kxgviZca3oyR/k4wLol6vJ2iAiOD9oseHPM2Sm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OfPm24FJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OfPm24FJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB71BC2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 21:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776116253;
	bh=3yiCr1KaEAN2KIi+Hs/VYMpa5NjanPrDYllaxyfGqZM=;
	h=To:Subject:From:Date:From;
	b=OfPm24FJWxtF0Rsrb0TZCPtr0kKTP9gfIdoS2H3rukNHKySEYjPAXh1RN/zr0GxQz
	 0rhvuJgJnyFgxL2vNYRBSX/XssIyX7LvhN82SyBHgsIL7uyD0T+uKRzrm0Q0uHsL6l
	 cEgen1c+DnRmO65OxV3ryoT57OjsojXL7bXWpR1A2uvCzmdiJOHMuMwF/PkKR/RTXJ
	 WFvo5Yfqh5ouNspxA+8t+cxzGef6L+e3/QuXR55THRfuiRy5Vva/p5wv/b1oZnZO2i
	 PvAzqMmnU/hp37c5g9g1jCG1flZqImppxSblO5W5y27WXZj+sc/jn346ykF6n3pG6t
	 ZSNY9+rbV90XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EBFF531D9
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 21:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177611625368.3331.6198931277838414756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb58ad491dcbb47c02602e8d17720e8aabe2ac30c72693e3c7508840208e9c13
Date: Mon, 13 Apr 2026 21:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776116253

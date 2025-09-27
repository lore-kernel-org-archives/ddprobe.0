Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3069F72639
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758953994; cv=none; b=uAuth3687g44KVpohHsgkKUo4JvVYk++3FLfHAN27ii1p6t1u68rpYSPxmJKYD/T6q1g42IZgYqjZYxsdOaqvXcOL7+3j8HFcobRpSIHhMKzLTkImLDBIOI7lKmLZzG5WE9/8bxjwYwZqlQkLpPDFAWDeniwmHBo01KwMfvlg/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758953994; c=relaxed/simple;
	bh=1crLXBzNinDpAhd53Cppxy8ER3XbMSeWMGVae7ctGcw=;
	h=To:Subject:From:Message-Id:Date; b=dxJCebw48W5lKESTiRc370w3a1KQ7AxszsPH91msNg1Y0++i5tTdPwPh5Y/phCBGuJzG5yt4cH4FY51QKQHb+OG2v1cd4NjmZ7csVx/+VLy8HimKBf16AhYKP9eKtrhHFTzQ8Lwh/MK/yu8dxu3xXiuo5zf2VY/cGjK8guqVNl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pzF5SJAI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pzF5SJAI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A530FC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758953993;
	bh=1crLXBzNinDpAhd53Cppxy8ER3XbMSeWMGVae7ctGcw=;
	h=To:Subject:From:Date:From;
	b=pzF5SJAI+IN8qHE9VA13+U+euta+0CN7BCDXyIvMoUPrtyXjoaEkw9m7hGZWI+mL4
	 FpArogg+tFxbcDg3mg4CVMXgfavEoy3GphEgtO3XTqTyDtHTNsqnX4kOdXEflPDGnW
	 BgfTZjHbZ/AdSBBrIMSdOiZlSO/eClfR0Gsm85tZeT6Zy++pHg02jyhXgcuiq/kdGP
	 FssRytGLBqt/RhHMdQE5IQi/rW1R4MXAXbdWUe0t1Edv8JcZ6HI3xe93CX+5Qezdn5
	 HjJjfyP5ZqqVJ+X6dIjoUytbmjsLnXi9GbmOh62DvQEGHdCadmkvJdl1iesFgpL+7B
	 HtzQZ4Uz9yPIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CC4CAC5B9
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175895399357.14396.12363291524186626021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f45fcc9d1a58dd06af19015440cb736d5ff80ae86f4b87538f37f8cad839617
Date: Sat, 27 Sep 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758953993

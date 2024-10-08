Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA53213EE2
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728413754; cv=none; b=NNX0h7OtmSzLKfDI1yv1yFWwumtDPBC9d2kMgjDDm0YdCj+O+vtiU44bU5T4Ob/3XTwHC8Q0/lnB+4S5bwl4D+bhlR9DOZGOQNtfLMY8f+4NPx0JIjWTPD5OmpDa96uLOYeryT8Wipaq9vpCLiSfM150a7Bb3VXF381cbLBv50A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728413754; c=relaxed/simple;
	bh=dqHLufGFMGvjR3nNdw0KKwG1zLMDsoi36+Ccav+qgwA=;
	h=To:Subject:From:Message-Id:Date; b=t/kp1JAQV1DLDoNaUP9TAd0IlyVNU18oVy6URGQTL3lAUd6sNDIAOy9c0JBTwL2M2XfbIsKev9QCp4wHFfo+qWcTShIKUY9uv7LaM+G9il/ZaHBxNJ6LQabCZSU0MtJP140VV1YlwImQCtyFV4UjdeMDRp28knjCxWeX9TQmu80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M8hnRhhJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M8hnRhhJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5973C4CED1
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728413753;
	bh=dqHLufGFMGvjR3nNdw0KKwG1zLMDsoi36+Ccav+qgwA=;
	h=To:Subject:From:Date:From;
	b=M8hnRhhJKxK4biyNIOHm7zDQFo+0Uz5sbd0CafJ9+XYHzruUbx7qKAkwgxVe1coWf
	 PAE/z032/tadHMmtJmXW6dKd0a1JAkU980X+Y700xgqgDabsF+AAK5la5k+Hnbrxa1
	 PFUhYvWP14vbkaa7jpD3GfhLlWVQt5Uk/t3ItabhTsJbJ81PclrkttSeaFSAvRsJqe
	 5Qd63YVPT8eWqJFcejrfx4T67bbeFrKSaZW37jDpO3kGoROz/QOi9kdbFGmcn/Chdq
	 ymn5Iy1zsk9k+MrL/LwULRoiK2u40eCNJWbMr+zcVd93CEH9nR4nnRlCjTxBgUG2Hv
	 Mu64pxDcNFX/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C9BCEFC41
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172841375359.11393.16822457309273736246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e569f99b3ac262be87cd4bb3191ec15c5680014f75ea5a0412ede60f72c203d
Date: Tue, 08 Oct 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728413753

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 982B8482FF
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753328395; cv=none; b=KYFIoqU8UxeMRnN6cdXhTPUNN0UgOwb81KhIPmVA7qg4FSWhWVFT9ApD6GCOHcpJiFnktCK+nK1pXKCjXXwKdd1BBszVP6rZ4qBb2M/+AGQ974BNnzdWQk39WYgfc4uv4vfV62ZMBrkXfHmmCbBXJRkYocfvruN0gRFmVPCHOeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753328395; c=relaxed/simple;
	bh=ULAcLipl0Y9FRamnSnQA9htIhXdYOxai0e8LkhU8av8=;
	h=To:Subject:From:Message-Id:Date; b=EGfV2oIJKnWOps+8jHOvWKkaaFOUAOSc4v+2xBpB/jjMLGEiyslX62yO9jNO0802MCSoyvQQSiOWfrOWT0qT/YGcZEXP4Q3NGxqib1M7A09CvAvGlBSwm/Og3QqRS0ahUi40jHqWHILtmqrKaYmXKDJNZsWWoKwJ93/OVrlRm64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MU1X+d+M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MU1X+d+M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40F6C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753328393;
	bh=ULAcLipl0Y9FRamnSnQA9htIhXdYOxai0e8LkhU8av8=;
	h=To:Subject:From:Date:From;
	b=MU1X+d+MT8Mu1XjepXBbB1DAtKFieHPVqbB0ttRHRg9G145ZQqQcQ88qM4RJe472m
	 ErRiAI3J2aLmmtUAk0RuHCyg1qy/PkyF+6+UTlk04FWHSwr/QypKBLTO58vuJ1NsGD
	 HOshHQsQUrHoOL7mCFnxfGmdoG1MDWobv71/NMk9ExbSfhy+iQbcZrUEmNKq2gcD5/
	 MqbKsd9r0seEvhKbFhonegVNXd8IFt2OD3QBEVSLyw4K2aORkhNct2NU5gaSSZmeyH
	 sK80vkWJ27x1hqQCL1Op7M8r8eSi00KxPKCCwV293CpYzFNXF+4IdJ/Xd85NBfWrf9
	 uLM9kJB8o/HYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BC7C83F17
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175332839357.23414.15919014917658054904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a70876b56a7979378f706516ffc39cea920311a971bb1f2b54fb8bb88b31726
Date: Thu, 24 Jul 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753328393

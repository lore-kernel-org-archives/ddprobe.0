Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B711802B
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743641394; cv=none; b=RyazLx7//oH1fSdLtS6Sb4+bXNUABOToqEre4Id77e0q9n68DW4sDtpmogMeZraw+yTMEl6xCPy8KeLGQ1UuAYrvyb6yFRvUEB4EeuI/AJsBt5pJLjmGZ29mc7GxO9iMFEbXk0jHlCpgxTHAltf8Xq8M0tqA7DZkLECGp7HKf9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743641394; c=relaxed/simple;
	bh=td1+gtvr2YDpf0lv271TdBE950jBb/GIp1OCwcV4GUo=;
	h=To:Subject:From:Message-Id:Date; b=fS7fR3dW9GUTPFHZdU56IYPGwswxB7xCQv+hywgmHp4e5UXw1DmBxZP57o3qWRPCaOhtLpSBFnQSHMBLdbuDesZX3zoEuz+HRvIoJq9AYSCLt+jMxmn5OZ9iDxhVZra6Bpu3V0DvtSr/Rmy89SVZIMSfMrEU1ywekZ7Q1WGvAZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KlbYfnO/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KlbYfnO/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA7B4C4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743641393;
	bh=td1+gtvr2YDpf0lv271TdBE950jBb/GIp1OCwcV4GUo=;
	h=To:Subject:From:Date:From;
	b=KlbYfnO/T9iy2otS3JGyone/8x8SeHDGS+u/OqO0WmLw6eEvaTMe+fTTI2bA4E8Nb
	 H5F6B66pAdIIeK80s98gmm/TezF3ojis73fpUPvfm0RySgNrdt/I5dKM+lup4bnnDT
	 cVo73lFcJo4IYyRxyZsGZai1miQUwdq0Vb3pSaMTiQfWwUA3uzyrT/FPjusob1cmJ+
	 PhkGMan7WoDWRn1ZHum+ryKHAin7o0QVwwP0417hosDR928p5cU0/rtIbOzi1otfAQ
	 MQfHJOZhbYAy2DD9O+PXEjV3C5r4mlA6hDAtmAlCmTOLeKoVOSpkdMJRiq4YvjpIOE
	 pPMveOIvJ3A6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925AAC36014
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174364139358.10241.17945620196311764476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3fbda39cc11eff7064a006f7e0512b8cc0292ec6f0118e0f30a4035c2479eeb
Date: Thu, 03 Apr 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743641393

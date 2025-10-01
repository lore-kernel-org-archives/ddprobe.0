Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40EE51E5B88
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759282794; cv=none; b=ucQ0J2esSjhn43YIrRyQEj1vJ5N2qBwGbfOsLF9sp0UYny9Vbn727mZqi2o/YgbXn9PFsYW0RvZw71Sejp5UxLLA+SWCf+EOQFaT9X7N/O3HzY1ujj6eriinNLNw+Z9k+N9AdvvIORvyyIFDvD8Qa0qJ12XswHgEO4dMijbCgeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759282794; c=relaxed/simple;
	bh=Wz+nyN8J5BVKgiS/cML7tQqse/DS2VBf2xJQXTRS0Go=;
	h=To:Subject:From:Message-Id:Date; b=BLjEV9GOfgF+t6nkb+0Sxy1OaLo6dEcZ3EL+Ya5xdC4zwKE9kXyCslgXNbkccTB00EnMWHokdq5r2jKHUcnQpMSO9hdgJAp9lijO6kjEZXB+KjMKVTAVuqCLfY7PEd9qTM/bfMUgSBGaxWGTGudzUqioxjjFswQGko0M91PCcJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gSzDuAyT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gSzDuAyT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2698C113D0
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759282793;
	bh=Wz+nyN8J5BVKgiS/cML7tQqse/DS2VBf2xJQXTRS0Go=;
	h=To:Subject:From:Date:From;
	b=gSzDuAyTmpErt812WgrsP+VsB/uCYCrSD4+CidAynlEBKbXipRl0g5KTsIfcf3WI7
	 ad0ZN2ni2Vdr9FVAKEZUXVQGa+sEPD4+QqRAxW8o1ZykWtVVaRbXsXpZ4Qy/XRVN3x
	 at6GghN9n10b7LeA9IMxnULyJ9DKN6INWGZiNwVVAVFrlrw87GDBJ87er/IynGRnGH
	 Nm1bA2y528dU+Bdm3Dk4ywRhVjD+1R5HAtxRCPB5G469RAoc+tflFOzzJCxtDI1e/g
	 K5mQYSqqLX6+VkVHAFrik37VcfTliapMkEDqVRwj9DrYDXkr0HtR7nbCuMpFrdey8n
	 OeSQjoUIi/VhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 989EBCCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175928279361.9611.16547666621715312030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de1f85f5571e411563b298b03841f8333d84c744c2171ccdc41bea84c727d95f
Date: Wed, 01 Oct 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759282793

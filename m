Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5822E401
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 05:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777528654; cv=none; b=AcJFLrTflm1uwrN/+l9GpKvxA2bZ0RByP91CTJ0gK7rzpmpq/j/W+BK4/YW01WXmwbFjJosZrPSGVySFr4DZYDeYFvQJztJ65jaGuKFapTZlx77AbxvmdH+SidtKjXUu10LyCSyfUryz6kRxvkG6zBldnYCRP4O1ohyuQfgPakA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777528654; c=relaxed/simple;
	bh=k1A6YPw3UBrIxTOS9+LpM3Dj3CuiphrhqMc4hsLzjdk=;
	h=To:Subject:From:Message-Id:Date; b=McHelcbBZMsdMSeVAKteYdVMedtTYh5++Mncg2eeJ4AVSIldemYHe6eEe/JRULMhqSgpUSvmOjCXuQjhBrBbYsp5rGyHfndj1yKskCGKDcaNKN3EFH+CZ90iuFGAoC6J3VZyhKvt5zwsPZmyvkTKE4nm7jrpi97AeH9PwoPbsmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rrhXb7lD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rrhXb7lD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B75E4C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 05:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777528653;
	bh=k1A6YPw3UBrIxTOS9+LpM3Dj3CuiphrhqMc4hsLzjdk=;
	h=To:Subject:From:Date:From;
	b=rrhXb7lDVRfKuXcIPOH7gqRayJLiPmjF/R7qCI2dFVx/Yhn4PB2+wQ3dKvexO4dnw
	 Y4SurrKJNLPBFLdUX0xapg5hbBO9+cExlBjYJcH3LCRH+rHaX381+QrR2XEuajrFL7
	 Y3iP8sS3vIDMVXAe0Ez1bliWiiKCx9h71JiOGVVdGlW/sKhqtq3UCDGva0wYMYy54p
	 GQ9ME4AVmkSLGgU6/78dpsgHwnLFBqmNH+6813eYUnSCXydxPoZugvXqbXIuAbS3FU
	 Owe7Uc9vX7Fsb2dr2+bG4C8F7i8qbrod8+z43BSU3afg8gqcAzohe4X217SnijBZ1A
	 7SI2KAaj3x2aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98B5FF886F
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 05:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177752865368.28687.12177737336154661708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81187c1eb7ca26c6ec42ff766a175f1780936bea2293f450d2d332cb48813e7f
Date: Thu, 30 Apr 2026 05:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777528653

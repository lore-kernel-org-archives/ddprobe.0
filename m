Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B992C1A2
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728354954; cv=none; b=ETrLLbaItOERbaCZaNcGhWypb/7a5xJ2xhI9tabB3LCa+8CTLkfEMt46uKs85LXFXAb5YC7NtDxkSuKmNs9D6DxlU0vctTcPmG4dI+qXBKY7FfzVlc4U6kLfov90fAFdfdJv2Ey2sf1gv+kwDdhN+PH9JuBscq5X6IQAsHM64LY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728354954; c=relaxed/simple;
	bh=8vJECKEe5OY84HF8KVrWZb45jb1CPVeHqoNGsNOep/s=;
	h=To:Subject:From:Message-Id:Date; b=dNPdAUSEPt+csUrJmKVNV0UlJrfkeaHsiwfqXECyw017jN9wMPAfwitVBbJ11FP37wNYGcbiirdYCJGNS33Lfwab8sV+6qrONLzytCYkfEZ//Qgox/ibJ4ChPCBU4VxPFzT4qguaHR3kkM3kQLpiVkhGMiJ7Te1WfhYBPvBFxuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L5IwAGeV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L5IwAGeV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF743C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728354953;
	bh=8vJECKEe5OY84HF8KVrWZb45jb1CPVeHqoNGsNOep/s=;
	h=To:Subject:From:Date:From;
	b=L5IwAGeV98VQJu3uSyfctvC529HJaYKX66WZqChVWd1Wac3NwzqpIr42wVUj2udWV
	 WMovCsXO1tomtaf6dO9reAVLnnJhjG0OWQ4eNpEVJJjoGYqvaxFbgRKfHD9E/0G28a
	 xXBkO4iHX3GuspXhy6bILmSTj0KVm/IjlQMHO6lRh0kP3Km6Dyr3YEUgl0m+u618+E
	 +pQUCZenDHI9RlDEQK6DboqjTg2ZJt6SJb3JNypAoGBx8OC1GQ1yz4Ry4DqpeYX/I3
	 EF3ylMPpjWP/NoG/BLSKahkkaAdNTgmRnPV+9c9xO39HM9uxPE2JB8bCRMrepk5kcb
	 +zrA/bw9ip+kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8823CED256
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172835495368.10815.16323612978655141972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93979910bfaca086660116e669e238e2ffacbc121cb334d0f2510d5cc2cb9b18
Date: Tue, 08 Oct 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728354953

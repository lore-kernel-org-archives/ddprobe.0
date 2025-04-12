Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 490332367BC
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744448394; cv=none; b=pVErT4699W0ghkWbc3ayDzcl3VLNtwX5u8uUIZbzSjeaQ6mzruqvkmHvAr/Qkq6CbrBxraYckxxe11hnSbac/6+feZNlfNViJZR/lfTkMthYUaC5tHxbyxDJD/HbwMLFxeJjHZl+heU/wfI36YATl8xLhidRSKlEW1QQ4aOdISc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744448394; c=relaxed/simple;
	bh=zftlZcS1Iur2Mlk2VQR4t8FL1tKN4SJOcanD6UDqy6c=;
	h=To:Subject:From:Message-Id:Date; b=RyhqWxZv6UGqggoxj7lNCscTF5cR0nbHMhX/pEoXV/KbZtc4f76OjYOxHLCHVNPY64RBbBLpcWFr6QdXU4vZNeSw4lbDXU4lqjLUegUy8Otnh4VNmeQi7LNxb7khqOan/jYF7Hh01/OxHCnAu55FQNnzKZSW7PiaxO5FcClpMRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d36V+umw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d36V+umw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF178C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744448393;
	bh=zftlZcS1Iur2Mlk2VQR4t8FL1tKN4SJOcanD6UDqy6c=;
	h=To:Subject:From:Date:From;
	b=d36V+umwapqaB2qJZvKoVCODYXdjKUple/nJ+a4e3ejg4nc/XZKnv+HH3sDui0ueA
	 +9PyBstpU1oiG6PrqSIx2hX1UoIzUNeoi4IjirvDQLGv5Y/zwmviGzoECRsc0PeU4I
	 YM08AUwo4s8f8HUWy+YdQWEpWqvcyg2Zhl3fHM/kSFfEAgdHzxzOupIRALCyFatYbj
	 rh/Ww/GoV+wXJ8vPYvr4+AMwXoCsOMpe1kRmJHDi1uEC50l4ocuveyOUVS+wN5qRLp
	 6jvATCiX3PfBn1wqT00KLoH43AgCL0OyMRqEB0l2RrHpe9JT2gWE/lrBzDM5X7Ng4i
	 Ce1mtVuJLLC5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ACA2C369A1
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174444839362.12108.17894418453198327082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd5e4d4a065a72e5791bbdf9aa739866cf06039b89ffc73b57d2b1d8568e74ec
Date: Sat, 12 Apr 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744448393

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F8AA2F2F
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729368954; cv=none; b=p4zkDJet4jgqmmDPyfJXYEe8xs/tm0drcQsCwqFVmUBQ6WfCgQiR+9V8atFwAUFFKtmkfnNAiaABqHfvd90yTcnAmLBmrApquVGMoDaQBST5pHzTLTdXoOaSFTgoO3eJrsmFBSX7RCsxEmng3yXTGnPuNAoT4tRKUdYj2waR4T0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729368954; c=relaxed/simple;
	bh=x52jqWDBq8LRwuo6I7IDmHkf8vCv1sfx8EUZNbX8RK4=;
	h=To:Subject:From:Message-Id:Date; b=phB5c4A4zgFSdYTWvOQhkO4lR8ImR630Obs86zWp6mTyf5qWOJdkijv5rZncXB9WBMI7g//ratwUANpefCUPO7kYC/C/s3lei7I/vyD3rGPeck+hOge6y37iLpy+7tJjWpmDJdSZZT8labqoDoiii74LZGaHXhyMXxN1dBpWias=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MMPGYKV+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MMPGYKV+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3506C4CEC5
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729368953;
	bh=x52jqWDBq8LRwuo6I7IDmHkf8vCv1sfx8EUZNbX8RK4=;
	h=To:Subject:From:Date:From;
	b=MMPGYKV+GdJlI/vMMSsk2QTi7t+mEDtDAeI/lQVLJE3l4S1zCS7sGUyHEQaYbKTGl
	 1zafkqSsBK0S9rqIqt9HCJI+hKk/OVbnLbRIANzW3aYCtq7TesDZzIrbmIUXHGfnDl
	 7HlKCGCAKTHD+CQDNIDkpJrm7ABuN0qe0tfvz85AmodknoXBHjW2Bzyxaq1V4Y5MEi
	 Hvizi/zEF1YrNViRSJWsN51Pd9vW16RaiS8HNVsAO9lfaz2paYNpkuGHc/MIGkhdMH
	 8Q94oMqCYx3vnfSVJXzONH9cQCduhgplvGnexQCvWYkcPG3dbCgdsmWyPFiTHsTRtk
	 jQXQL2NscySow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DB06D3C92D
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172936895361.32530.13550196826083641852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0ff1c3b71e39b146733ac05a83656a4d925eb1b55130e8633c9decfe1fb1712
Date: Sat, 19 Oct 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729368953

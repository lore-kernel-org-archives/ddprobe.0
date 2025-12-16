Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2753341069
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765884234; cv=none; b=JJZlrhwb6vqNil89U6TfotiHOU4+DdUemozJzYRg4jVPHj/OxyRl1aYKDuN7HgKFPiR13YExhg7MrxlgPUTIhlkPVCXkxPSJj0FWIlSyXLUT+5vor6c+fOo8HQwf4Z8kYr/jlIXS07EZxswBJdweZVY8pS5v0JLvP76Rx4r+eNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765884234; c=relaxed/simple;
	bh=RhTpLNWVsqqp1bTXavdF7ixpHhMQ6ofo8hMl+ED36LU=;
	h=To:Subject:From:Message-Id:Date; b=Zfd+DAB+AJdHs5m5AVQpWbqeSbPSvZtF/CrQ43pHJNKmc6foLVfV3bUp4bcK9WedIlAHzvF7Ddi4kwd8OsNTab8iG/ppIpZEjTfLCyHYCmcpUjlIf/LXPfKwtUD+6IHoZyW9qnJf8LPPLHLsxlpn9f7ILP2Jx0DoiJvpo2v0F1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F518kYhd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F518kYhd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0260C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765884233;
	bh=RhTpLNWVsqqp1bTXavdF7ixpHhMQ6ofo8hMl+ED36LU=;
	h=To:Subject:From:Date:From;
	b=F518kYhdy8nhSt6boGXMo0YiSIccANZhZ5vka/w0qWG73t8uH9xt/S9fyW+KifqXK
	 j6xZj304/RqxoBnoYhAKLPSJyanKdksTF49EEAZlVw+7XdApEFs7KFO8safiIspkCe
	 Mr+ii9UTEWMEhGbLfl1ZlSGjObM6kdgzNbxKgsSyyp177bylLOV0ANRY2SqGuVgY0r
	 oNqECdzcO6oUAw4cLwerQ3KBAxbpYN9/Z6E5RyJvz7mSFzNiPfj7d8UfvtgcWozxhK
	 m7O+VR1FAIL4tOdCdD/vBUngcRcnh8prvxrWlu4TBLKVoOolRkbjC2Sp1zKg/Nqi8j
	 esZrTFUSzWjgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91593D5E133
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 11:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176588423358.22081.3965188028352695363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8597af91cfa3095ea14009ab39a91aaecab826e65d597e1cbbfbc5c2f3f86a80
Date: Tue, 16 Dec 2025 11:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765884233

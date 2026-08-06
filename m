Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A0CE33C19E
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785987034; cv=none; b=bIPJNSRu9kRxM04aDPFQBj2iT95UdP5sy084KSHg/fBBLSN/8eK4M+/86HUKupYJmNN0N/YOiTV66a9pjJPq0TZFv676kfV3eOF0NIp5aq6IDw6b4RbqFF00adZ2+ZTXtrISl8gUofJkDaMXSVg5dSdvHlEpsSewqn22i35yNRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785987034; c=relaxed/simple;
	bh=Uo+KeWp1bI5yMcSW1Z4u8qoVaDBnY/Yl1GFqO2S2QVM=;
	h=To:Subject:From:Message-Id:Date; b=Dugco6JRXYm/p+FlWlJahSaOFLQM1juHyFo9WNrrqacc2+Sc77l1itlrAZKgCVNxXKENA2kq0odmny+samJmJ+C/TSb1TBfF0lLLbqnnS/zc1xIe4VZOW3a3KdN0CixhJ8htxrhmHdKVE+0kNPtx9m0Iow3DKWYgNPB1S9/AiqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ONDMeTuN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ONDMeTuN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF1CBC2BCF5
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785987033;
	bh=Uo+KeWp1bI5yMcSW1Z4u8qoVaDBnY/Yl1GFqO2S2QVM=;
	h=To:Subject:From:Date:From;
	b=ONDMeTuNKnGMfG4fpw1mubfkKQSPHNWgPqmpdhhjaGjP9q1xH9Pfd4+tPEXKDak2v
	 pwoTNHlAs0swdTnkLlkYQf9k9q4vqyKz3e61PeVmA4bUGYFMLfvxy1AP6AoAjOBSOG
	 Qz9KMEHfBrgwg9FJ6LiDLXb4xXMJTECVOlr4Q4GWB0+k88bmedxkad79ReiFOyvU6C
	 J1oXJTwIrRJNYZCCWZ9FUz5epa8ZrXeXwSryYrei/l4t4cZk88+iqfCTNKo8yUgFs3
	 G0PvmIW8WrvT18OYduhK6a+0QaQxrDSV0vOBz7P8gnjMF2bW1T3RQhiIf8OvwaOGp1
	 kNyU9oRUl8G8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9A8FC55838
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178598703374.12352.11891552505144071044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33e19d37d8c4054de4f1268f05bacf21224460b87017d2e8a211644a2a4870d2
Date: Thu, 06 Aug 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785987033

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 164A830AACA
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768488234; cv=none; b=kNh9CA97of8cUYvKvUWTuNzznk83on6yU26OoEKcDHksHySnaRdY2MLoVB+fs5M8Gj0FtddvNz/JRyj3pp0JL5HYTigN8/aiVnoUUrVGfsogVelcCaA5JeTqEB9AzJyiWfhTL6/q0Fgt+B8KqhZ6zLRrcyH9aw8g9wO8D+HTwFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768488234; c=relaxed/simple;
	bh=d9EvpTcomshxgw0RMoNogNE7SEKdpJjZ3sPsApLNSJ8=;
	h=To:Subject:From:Message-Id:Date; b=BXMA/VtZrXfCqJrruzKOLlSXxkjO3ktWKsdX0ouNFEUJseZsZ0UvRHU874QLIGMDqPD+Pfq73g/smGRtemYaVs8D8A9aJMWUwxXJRJHf9X4UFpjnTkyv0r+151I/McNdbPZdruyGqJdwpWUSnLrK1PrCtLdX72kjP2SOY03tkRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OVhKynAJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OVhKynAJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EC7C116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768488233;
	bh=d9EvpTcomshxgw0RMoNogNE7SEKdpJjZ3sPsApLNSJ8=;
	h=To:Subject:From:Date:From;
	b=OVhKynAJwBLcK7AQ9KNq+Pp0ndJAky1h40/uvcf3dfybTEKvy27XkFRGpedDSCAfA
	 nZPMMuLKzepRQ0RhZvAtwlWDs2VEWCKAPyNNaukExae+2cq7u5lhACmZ3puNvlv0N8
	 mvle8paTfWPDi/XHgmYlFzldqixbyxgYmY3CBpOVHy9hFq5UFkEv++ejwHd+02mV5C
	 r8ILsowvZKcxb9lxkx2JOE775HP7+H2Y0riI3pMZu1R1bjkAxsV/LD9GLgjc8/X55I
	 0wTv3XJUYL9LCNz3rdxFPqMagctkQxlkHSdCbEJ0T/j2UfqXOkI4q93p54KdswjdW0
	 DDq3T6wiQyd2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F92DD44C59
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 14:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176848823358.15898.9231320056839026929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e7f451b40a39a781673a26f8748054e59d7c4a37b615b43b720f737afe41235
Date: Thu, 15 Jan 2026 14:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768488233

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2175A2E63C
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 03:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770782094; cv=none; b=quP7344b/dxcAMsCdZAggAfkEz9W2dlckSApPyg9Mtq7BXww93B24/NlLoXRyNj8GhJ4uOkq8rJ0DIDvTZdXPwQ29PXnaOOERsC+Mubxy7h0yxWRd/6xYBseDxNy0xQpiUZq4HmqCgkMmM4fvsOhshZptgVLQPSiFUa7cigi10o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770782094; c=relaxed/simple;
	bh=yWxyynRHZGBxt8eeF3YRaAiTwRYOPlCI4hx+7OZS1R4=;
	h=To:Subject:From:Message-Id:Date; b=AMrTeHNhqKmL4A7tVOOizeU863M2FPOAAaCbmhg3TZbbgUULTZt4C5495BpzSbeyfel2/MBWV2gnZctKjwLKSSb1zRTtqH1y4OvvLLQVHxSAlOzuGjUGgwFBgB4wVCXN/IrkH2Qbubyhcg1mlifUJp4UT3FNh2yJuoeerSOx/Fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UoK5r3/n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UoK5r3/n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9387C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 03:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770782093;
	bh=yWxyynRHZGBxt8eeF3YRaAiTwRYOPlCI4hx+7OZS1R4=;
	h=To:Subject:From:Date:From;
	b=UoK5r3/nPLcnYX2QaWlpCoXYX4vlMXXgsC75D4Ekk1cHgfA/Lp3uA20GMY6q4HOKD
	 ENNowE3IK63/rmsVzD6O3B0tbSdCs0KMAvK4nyktaWzmOclOo824pF/8ppzrTkpNZQ
	 gTmsbo6G+BKsPk/WCl4LHZG/4+y3xkO2mjEMP4kVek7MrONoKhdGxD+C7wKYoiilpl
	 eyOqEG+tDOiU5jIa8YlyPfx9dwdmjv6FkseimC68IIWLDtTRbgqYL+2sUOJWkfbeWP
	 ZWBhkmjF0/tc2N3jHBRa3ob+pDBjOQHrHyZsXUjIy6q6ZnKN3cLyF3TObutrQe1bt7
	 IVKcNkx3gIRjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A30CFEB595D
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 03:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177078209365.17491.2293180972515019515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bfca5e22b26a8e9aa2f4cf810dd9e872a494e8cd3f783bff1b60f200d39af15
Date: Wed, 11 Feb 2026 03:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770782093

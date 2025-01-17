Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 430AC25A63C
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737092754; cv=none; b=UXZnLoJ4KTv5a9DPwUWo49v7LasOho2B3XZ84Otlcqi2R7otlltLIHIdE62Pdg53L1x3NdR33RO4qqWRC30zOKqfEgcsVGOmUMHkb0ONRpPXFTfyFV/Rjq7pWckKGS7cJbDMq1ZV1prdIDdE2kIjLkZKdj7T9n2XzMIJBkItiTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737092754; c=relaxed/simple;
	bh=l76Px+BJZ1UqZLspBv25PUXQ5978wLhM4J+BDRiixt8=;
	h=To:Subject:From:Message-Id:Date; b=G6Q7fbMBbAsQv2bnPsKzxv21hVvkszD5rDPAhSwdO/pfv+EYa3tlSuPpf9GE/js851lnL/2bnOIcJJqA1WqVjMuvb9sCb6HqQxVQyZXt1zHJ1ohq23xlGuij2oCO8BypGalfpaecq9ZuhkHClpsip9s+4hjz787BQcdvco5sjxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PsloBxFK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PsloBxFK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4550C4CEE0
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737092753;
	bh=l76Px+BJZ1UqZLspBv25PUXQ5978wLhM4J+BDRiixt8=;
	h=To:Subject:From:Date:From;
	b=PsloBxFKATSaqH4xNmcJkYwIp4OueA3VMy4oA+kn1aC8DBvbS7w9I1fL5B2F1QGk/
	 lZCm5GN0WZp8Jiye/nx01VJK8sjKArjD706mgWQy57An6kcwGZJMC5RMNrbKzBOaIf
	 czMoI5x38FuszrBdDiV4UmfoOaj1EVPpRwozBeYs2adrz4H6QJRZM5Pxk7Y6s6ilQ6
	 M46lBo5r/OdQX0STp0XGL2aK7/+WE7T7/CMwaICjVPNTQfEaDUw/MDMQzK3HNDbs+Q
	 e/LTqbR6BwFFnz7dvxJ2sqdlP+MPL140R6aabYW5B5BeYwz+7+G1sJvs9Ryhq1OYGb
	 ut56HEayqawXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95869C02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173709275357.12317.6983572386347500594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 816b0ad93ec4c0486089df014469f4eb8849ca04b945e5cf2db3677e964fcb30
Date: Fri, 17 Jan 2025 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737092753

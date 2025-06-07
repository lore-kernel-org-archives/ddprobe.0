Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3109F1990A7
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749312594; cv=none; b=mG+/ybxZWQe0AtrpuxF66pS5mMiGC8fetpfYB9PYoJXhFyQiZixuVQTnyG8Mr3ueVjlra3bhaXtGW7KA4PBerbWJM8gozNAQ2utlLFkWl9Q3PnPIMHchGgnWSRjJ9v2+d9KdObaTXuHcZhSSLIuDkHHWNHpMXibzDIgvj3UGrGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749312594; c=relaxed/simple;
	bh=ov0ZpmYFoDfdpZcnzTOHTplYgOEMhI4ZdhO3zQYzxaM=;
	h=To:Subject:From:Message-Id:Date; b=HtyGI3MLx3g40e2MsogZsBSKwgazHRX3h02eASeeLdZbnVj7mm64ycK4w0ngLys0SU9FVKQ5HHVqLmRNyes3o+J9QBYGMGnG2ppFY4otokNklZgs9TohPktExr7NOHDURzXys+FF2wgKbtsfEDsgojJBR3AAPFpZJuNe/az1ne4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iXL0e9id; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iXL0e9id"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF6EC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749312593;
	bh=ov0ZpmYFoDfdpZcnzTOHTplYgOEMhI4ZdhO3zQYzxaM=;
	h=To:Subject:From:Date:From;
	b=iXL0e9idgyZsSvpWLEnEvP33G6LRM0RypirYemstwf816VnYFBbn3bXtZpL2pKOj4
	 wvBjrE2iCeYB04Hxt/YYYxK3tp9yc2vw8ZAN7QSq9deHkidjXQnWRagIBoM5MReOMW
	 SAM6ZbLgD9+66s8WL1/ee+QKAg4BRgvUREyHKv8rATz/dXbmgeZ/YKUxHRshNOasUW
	 jSRHoyqYTh8Qi1cedjHLI2DCW5Hk/rICWS3CXl+MmmMp82UUb+dn8gNgWeZy/7OTFe
	 aUguSG1ZgI1XrpShN4Pib6Qcsd842wcx7440aL2PsdlQ+WzHz9Or9vrkN+Hu/UFq8u
	 xiVET8cnjbGkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2E6C61CE8
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174931259357.12262.3304902630785225482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49cfe37c27eeefe9f8580040ec435d6312d882c95b39f66d66874500ff3e5b99
Date: Sat, 07 Jun 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749312593

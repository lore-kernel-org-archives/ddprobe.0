Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E9FF2F361E
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759913394; cv=none; b=nXirbDc3YpnYf0pgvWNWncSPkhhpqtSEJcBEhFK9bWtx7xiDd89uBw/Bm+qAQ+7VsF1KZ7YpJhWVjcbx3GoQPm0oV/lhp09/INiV31gB6hMdP9mflO0gq+CNM3cMbYvdJkSbTap49NmUjSD0R+IGX2P3RNPkM8IEnewpCkj6xRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759913394; c=relaxed/simple;
	bh=bUmzgrmOHHcvAE803DUCekPz7sqiBLakc8gewp9ZveA=;
	h=To:Subject:From:Message-Id:Date; b=GlHaj9VYX5rsq3egYMqXVdr49RfDxQ+nu1vny0OFH5+KuKkCuTd9814E5+tJXsN/10jzE6yoNgnP4RKHIvWDeHz+GsKr5uPFy5f3WmTYpeUVg/wXXi/pOE9NPPWnR5y42CcrOlOmfjnD3bYve//YEqINogErCtBJgigsJ4XwQi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=raNxaREm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="raNxaREm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A123EC4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759913393;
	bh=bUmzgrmOHHcvAE803DUCekPz7sqiBLakc8gewp9ZveA=;
	h=To:Subject:From:Date:From;
	b=raNxaREmGb9quwnjDTcyvzuTCdbI2IbZbex0eMb8qPikk9FhqwNV0wINqaOszNVXw
	 v4usktFe9Aox/ukCcoX0AoEI5CvEawtCq+49bXqCCVePFiR5GqXAL73wReaNrd4yYt
	 B5DPQJ4XOfKRFmVFe+P1AUVHY8vuLw5DnY0TEnvokV54puJB6vSBfTADXpyKbARfcq
	 jt9s2FN7geeIoYFdkuhyzr7VuO57Ok0YMfRWkCd9Nn01MesZGqsadbRnBOD2KlB1Ik
	 tvg10eARReVkz8Ry5ONhv7sk1DikAYVcp/DCv57vvwuk+qoFa5yfj51wLZIWCoDNyl
	 BYbYPBHMSflzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A50CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175991339358.12113.9883830669103407881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b7600092429e2e411d3bc79b3ffc39649fba7d7e2e4cad1ebfcb48b4b8ca51f
Date: Wed, 08 Oct 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759913393

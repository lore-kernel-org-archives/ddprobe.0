Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE2C25776
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750012194; cv=none; b=dFciVmvlMWxMd2Z62xAC7rNE/Kq4DddKv1VFiSael9zrwKdstJXhptvbMaUYFJuk0boRrKdu5WQSYqcScYt4isUm61WUAcK48fk9Ge/FeJhwb12nLafL8G+XbKdWBrEhS690KM9EyuUcsfw/Iqf3d6jLRUswfdt/YotosX9f9mU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750012194; c=relaxed/simple;
	bh=hy9hKUlaS3GHbmpk+bJeuQdTzaOTroAsHP8pHvRuyz0=;
	h=To:Subject:From:Message-Id:Date; b=JvZVav+rYkcNDJLF39KJXuCCa2QUZBEat6IfWImD62n0o5rlwMbUvcVuN45VwpzPFQOGrRGxArAHoEBb6L8xtGwjQ5MVBOPs/CtEG10cm/iO12Kg6yAYGvVx1ajInADOo9ufoyvfhaiz3KK1RWxjd79F5qJBSWMCL5jW6xWiYFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h8Isb2Fv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h8Isb2Fv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEADBC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750012193;
	bh=hy9hKUlaS3GHbmpk+bJeuQdTzaOTroAsHP8pHvRuyz0=;
	h=To:Subject:From:Date:From;
	b=h8Isb2FvF4DUEoSZ7z1TvMbn4yDPDC0cfQz6q5NqPSwxO2DuxDLjZ1hjEFRYpnlkH
	 I13R+GhfCke7PJda/Z9xB6rLZc04giFFULz1lyxUZcVX8sh6ZSMdQKuUtxDTPr/Qat
	 bkWwjf9RKVYmsQ4tS4v5UzBBRCwZ3YLOTYI8S5cOe+T2gXKZD0dGlXDoWKea04ikA3
	 vwxx80odgPqsvRwbtxmS90fotptDhVpJB4aJHrrYhYrO/NNzEWuXXcQWaKWgQGRuzH
	 ltzpWPPRst8BSYbyo3fCga6PCowShcdIsOasEmDavRlFEqLyku8e7/Ll0gd6LdbKGM
	 OSmsJ7trFcUyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DB5C61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175001219358.29060.7114769857123091040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65f9e3e2bf7f90fd40981758b2311b6afc1f6ee9853760e1d97531e63a08f85b
Date: Sun, 15 Jun 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750012193

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238D227466
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732389354; cv=none; b=mh5u17iQGyZZK5rIBoH2CkMrfU9mHQYm79UK/daGr868RwMF9Eu3g3hDBubdRIwtADY664nbRwySp0kIqf2+ey4b+S+hI1TsbG387dj3xfhwC7LlF6wdxvuMYhalRMHIcUZjKorg4Aa78SyrTkv34Hp8ClpEestOwrGCNBD27XU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732389354; c=relaxed/simple;
	bh=INBi4rfGrit2VUAtOeEQpWUIxMGk9YsKEQ8zvsSiKqk=;
	h=To:Subject:From:Message-Id:Date; b=qeOhQ3g3Iw4T3/0OymcEWxdnOxxEyUpZprv77zjAE44IgryAWYG0r7TNK+kAxAWhoPim9Ucqomf/FGPlLxIFgBTVPEpyn7TykYFRtpjDwrBlYzruhLuJYR28mEncBARdSYRMm3IB10qfskMppLn1HOT/LWcossuf3WrKocJUWtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H1CQdKe4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H1CQdKe4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4879C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732389353;
	bh=INBi4rfGrit2VUAtOeEQpWUIxMGk9YsKEQ8zvsSiKqk=;
	h=To:Subject:From:Date:From;
	b=H1CQdKe4u1HLyoT5egwYOZnnckenJr7LXc6wxazVVZIiQ10oS8ZoJCZgJ4qAF7KOy
	 J8fjSGcHYpFvlC5T1noNTDXk0SDF+7kbTttg4U9Wsy/lvE9KNq5bitPy1eaDnf3fVU
	 kSYdR9EWvgjm6Cl5fsIU+516B+fVZ6PCUrMPfzVeQOWNrDkBNLRD8Ab7rcbVnsp+q0
	 Y2GF2QYPMSIw7CIS7W+wsoh5fY+H9G6uVeJdjbjeXr80VfF2OH0gHaHZLFTcsbU1rx
	 eDk23I5j3RwLcIzxj/NoGVZhrWB24cxAqdPHtrnc2hgTsQ5b4JtR4DbDNsMq5sFd6E
	 Mbj89rrP9oSlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E3FDD75E5D
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173238935362.5746.7965716227190425053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6483bad56acec6ec9ac71cdf4e3de689f127975d4c08fcead95005dd8bfb9bc
Date: Sat, 23 Nov 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732389353

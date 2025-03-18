Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4561D20ADC9
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742305794; cv=none; b=UOjAFufYyU4DbUZvRvLOzcWk3m+OtcxQgyjGwvXiIDxDphxNVX3qOz9qbp6y43u+jU24ATBVJISnjClNVJxSDfZSddwHO1ImCv+g3vV5dSv51+dBkSMZa9TOzOWFDUARfAF9sQoP0ev3N9DiLwpbeyW6+U7eWQL1pI/syno5iDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742305794; c=relaxed/simple;
	bh=5KjXedRRbkTSXmzetiewf8JSiek5S7MlFSq9lkpOtGM=;
	h=To:Subject:From:Message-Id:Date; b=RBslq9tJU15FnuK7LZVRovFm7kBRxp/YNikVDJKkLKt0dGId6P7D9XuYSmPofK7xWEzJ2opvvPB0ugEgjUD9H/Qd1OMXxPISK1iTqm2msOHGtDYTu+UryXY4JedSnNNqibyefr13Iu/4CaRH99nJKTsGBscmTCRJ0rcat7X+IYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oVj7+h+r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oVj7+h+r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA10CC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742305793;
	bh=5KjXedRRbkTSXmzetiewf8JSiek5S7MlFSq9lkpOtGM=;
	h=To:Subject:From:Date:From;
	b=oVj7+h+rA1u8kzf5GalmjrjQJKV5VI9pUNA/f43YvzxqZc3fyedaByF+B/8HSVPhw
	 dmtlFhiSCKme3xUU3Q1ioEyPJwyeApce5YBwaB1VznCrn0kBFAdyJjKX3GblAEZqkl
	 lAUfDRMjlgTFZgR4+80YidyVPk0t4jt79utRgkpYJGKCmvMdidIb8XBsKWbZ6sOzN9
	 ioG0oTzhL5CBXhSVifTH6/4NhqQ/tQYHJBT+L/bTebDRBWGuAY43WoNwBzMN0gOOai
	 DUOlFObVsMIqG0Md9OaMDIHi0Cwh2umHiyL5dQ8wvkmOF302ERmaqTgHOG4qJIrENe
	 QOUAD5IAT2vjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E66EC28B28
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174230579363.5384.8417084348117101257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2592e30e89977b2c60d825e1d561f30b0569043ee3921c69f2bea579e91b26ad
Date: Tue, 18 Mar 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742305793

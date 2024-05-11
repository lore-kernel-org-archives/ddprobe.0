Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F3197F6
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 14:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715437343; cv=none; b=tYpplujOdTvn6ygF5vxSmgei0E/J+ED/ZVb6hr1CwG3ZdMs/KethX5+Jm9oGjg5yqhsBD1l6ug+q8gAr2RNIY8GRamegiu0PhCSgycgplV0Y3InpOLjDKm3ZnpvQHdAeVZIEwHk6GcVcoY/BHRebIuzPqRQBiQrxxxuT65s9cGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715437343; c=relaxed/simple;
	bh=X3INGmYLh2bByfPSr1O+KOQ9MOxPOleBucrDdTCwwGE=;
	h=To:Subject:From:Message-Id:Date; b=ECBaUpycqOUZGFSDOx5WeYRqB1u/rK9leH/QL3gSIe7FeSTAM+3mt+bagpfnbAdrWQmsx55lbeN7ShaVjEcsE30Wsd36tNpfaeuxOn39NbJ+H2Gm6d3blI0zpMcFwKpDtr/XPIXw/A97d/FcQJAZmeA84WY8YPpJDkm9c65o3M8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CCc7r9Yw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CCc7r9Yw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA250C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 14:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715437343;
	bh=X3INGmYLh2bByfPSr1O+KOQ9MOxPOleBucrDdTCwwGE=;
	h=To:Subject:From:Date:From;
	b=CCc7r9YwUZ/14UTGvhrSVQ4qgaBJcV39O8GQyPVTLRKS8JewxverGdsIX+fFYQAZl
	 0XOf4b+SOkH5e2+RIQ8CJkYwvYuSnzRVODItixAYAkXlibsqMXUeGqb1eRvYjPvmqS
	 qrCpCcwpvud7NXiej5oQx/9IIJ6tldnaRxz7nxjG2p2OZt99ZI6oEb8KkspEC3NtVU
	 jUdVbko012zZey9IjM+D5pJJc5w8VC7ZvWPMY5Fido/ujAJuM9AvL+YXwtP8YjG7WX
	 YjubyB2BnwVchJM7jIx2GrSPe7NAH+GLVW9PWUWzetLe9jECYFiDmuTII6ffoakDZR
	 MXGqT8+7Bxg0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE7F6C04FFE
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 14:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171543734279.14526.17912970839970886431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68a959935c05f585687c2b918ff4d81b94eb079748eff9d9a94948c9a2b644e3
Date: Sat, 11 May 2024 14:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715437342

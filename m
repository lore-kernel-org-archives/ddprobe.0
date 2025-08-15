Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20DE63002D7
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755257994; cv=none; b=t9NjohDE0O9xq/72QlUbizEyYAZH3KPnejop8WfpOddaOlBGrdCrz/P3EQiWm+g37MBU5KZnroJH4YS+YB++SDfmTKhp3jocGTKl+aTejVpU1yQ+aQp1DKv/tQb3TnR5YNGJjlpwLZPU7RJtmfvBdqDNFxVQH/zO7QVmuXYL1Gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755257994; c=relaxed/simple;
	bh=CDrVvDNTPBZ2dsOICI6IjbzdnDXw2Pa9EqPzDEgz8RA=;
	h=To:Subject:From:Message-Id:Date; b=pThO4V2QMzl2Vxppq6ukiy6Z/5UwsAEHGQRPwoEbYCyVTHC4qGBrZejJ4+Ea6a+DGMkxjcaD1kVyb4BgtBBioXyLEVN2wj2bOPKZG88gf2ZMK1VIjfcu5eD0lc+RxX0mZaJtgxb+Y3tGYOW6AREO+Bykzzp3TBVG2sal7m+QKZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=COAZxe94; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="COAZxe94"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC2CCC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755257993;
	bh=CDrVvDNTPBZ2dsOICI6IjbzdnDXw2Pa9EqPzDEgz8RA=;
	h=To:Subject:From:Date:From;
	b=COAZxe94GbpYfEF2kdAUiAJSSewah0MzJu8XMvnYohJ0/GODDRpcV/huC4XU0DRHp
	 Hv8nkjgJID2C1Q4aYxLtrHWSWFG+/oSw2KaKnsul3eNs7kTN4qHE0anohQ7PO7vw3I
	 H7UD8egBWE9XNKCKmfS4sKoKbHKJawIGQshEaegh/4VE389bNwW6sFHYxe9k7DDmAo
	 dzy/zlR3qPQvum9l7EcX80RmRcxDXe/37PqNgunqZE+nUCnWPbTlePLes1sR1usf8t
	 q9CN/3iGghfbOcRzU3GSUXerODQKY9Wg9qcykBn7pjZcXed4ZkbLPe6TEZCqM1xArz
	 ANGBGMh043hfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949E9CA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175525799358.5621.3129919209792357225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef902796c02a9ae92e444340b1d7f6f1521928f3cdc809dd3da05002b2950ca6
Date: Fri, 15 Aug 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755257993

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412724B1E79
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747578594; cv=none; b=GNOI75Py3SO2bYl7pMPoxQsA0T+/d19oxjtTgLWoM6M0KYFtEUKWsm0KQ84M+CDISsArdYAzYVp42ckgNrRGywTrihRPzy5hOl63F97wiAIdgiGvSA9xbouHuEHKIYiNbQfolfEVHUOaVRBuuBX5Pb3n8+uQqQAiTM+rkakdbWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747578594; c=relaxed/simple;
	bh=yxYZzeZjvriUEgxFio+gV70r1y2Ok5A6O4oy13ZyUs0=;
	h=To:Subject:From:Message-Id:Date; b=CwoPZ54KXI/qaAcUe5pObqvOSTDXlhR7aKDBCsRSKOKTuwascmTClW/tvQG9m3aOulx4yDb9ZSEqBoL0/Qwe5mNoJASB4K4tESNgy4x7vxB+66rRJ/MYelYgpaOX/c/nGhULcwmrD+1LIjwgkUghi+r93ZckxEAH8R+sFPKiXYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=duDyKRr+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="duDyKRr+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F68C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747578593;
	bh=yxYZzeZjvriUEgxFio+gV70r1y2Ok5A6O4oy13ZyUs0=;
	h=To:Subject:From:Date:From;
	b=duDyKRr+1oUWoLiAn4QAAnWLC0bdXj4gRSMFsSgM79L6xbClsO8G8gPJT9U9mrWpv
	 FlV9hZvJbMe5pM//QkjqWEl2GBzEETI7vqeNX5NNMATccnEK9rkcEQB2P8KA2fmZVw
	 7f1s/BVsmE6p98GEtNYaZVqGqwHMh5mC1SIjlDcbi6VQxocV8JBJed31DPeyY6QU+A
	 mtfpFdu+L2F+dEBsiT3Rnu8iLvXTaIJGIeAoxy2Bzg6ZcU/YtTmhpldBwysvG+baRn
	 /SBaMLYzVDKONbutKGd6H0FTCp006fK04TBOCztCQUXDng/q4RPIgNMQJl8tIcVSXE
	 gN7Y/lPVFGhcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959EDC3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174757859358.7805.8369509788674387505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f06ac06c4fc056a4f206b7abe518d4fe109ace98b190d0017d8c739dd039e17
Date: Sun, 18 May 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747578593

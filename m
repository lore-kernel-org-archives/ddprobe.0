Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F761198A2F
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752835194; cv=none; b=bOneShLzLAOdUL9YLYpebAALcZ83tXzNXn3oUL2EM8gPYjJghrqxLKI5bZLKND4qlYLBfBcTC3OBDrM80Y6jQWGIkph4iru9E9Okyq/FWMxOOqWZLUIH6LU+cmA3KC4MCkEZw77oOmRW7F7b3gikxMuMuDR4Z4PXFqNBVRa461o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752835194; c=relaxed/simple;
	bh=TPoKt8XVTI5LEKrntBdVqp8LJ6sZX444w/iQyBier68=;
	h=To:Subject:From:Message-Id:Date; b=JnvT/l6ocu2HUIgwo4L3hdYNVTrMgxX1z3Qrs0vEbo3aTdsO9elEW8l5dww90ffqE9IIA6tjNxzdDfqx9LAYXWZIMpeRVdyiKYlPRMqd0TzhksY/PuxTVJAerA7TKXHh0O52TvnFKo1xeFiE2RWhBUZEPQswUhclIUYj/JN+qps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iyC211R6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iyC211R6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F625C4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752835193;
	bh=TPoKt8XVTI5LEKrntBdVqp8LJ6sZX444w/iQyBier68=;
	h=To:Subject:From:Date:From;
	b=iyC211R6hUvbZM8ai1mCgeTSiIhgQb5EkGiJur7/BRyfwpFdNSscdvw0dC2LmJLEU
	 J98hCx5d5Mmgd3bYLrdJ9TH6TBiyN3CNPdVyYZw0d0h5nSdhWT52B76pWdzwFqSSYC
	 GwxsOe6ST3KVtokNMlc8eFe08LqpFJFZ9OZOlbz4gC00MkyuweDmzL2tOkEotpAMug
	 SEa2H4B6B81ANCYXlJoRjOX2uBmVcnZW+qgFaCuZH6k7toHpPlOqnAe2MxsCHvkS7s
	 vkHaRUXG0gFyTNPTFtImajGCCluOQWd7W0Jlvb4JXyvvRvpXqNUpnk6rGp8WD985E+
	 CZDN5yjX3VPKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF59C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175283519357.1477.15269153589697363588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f256f598d5198e0e4d85552f81f4fe56e92c7e549b9bf795ed91967a879d87c
Date: Fri, 18 Jul 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752835193

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CF7C339A8
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743732594; cv=none; b=jsHNroSZhIMYZvCxTa31TuknZQPG62602gnHk+O1bCImSdF/QHq+XlhmVpS/VMdh5FVbFbKfU4g+w+JJfmfXe7nNB07eLh3fzR9KGJaADNSmLJpNKf3XO/eX09+rMRfca8BvqzY9Bq5/IjJ0KABcTYacPdGy4Hn41Dag8YleLzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743732594; c=relaxed/simple;
	bh=AR+/V+BRZZzWwi5NBDkWWNs9PFRYEzPmGxRHBZf9RyU=;
	h=To:Subject:From:Message-Id:Date; b=SPGIH0IglkrEIUgcK+QOO0B+7nX24bpOAPqfLpOYkYr4gwoYyArtPsKFHv+7781r0QBu5ZywTz8zbwY2efp0u2lE4jCUtw2wawSyMNT/8cA/uPhRbhIVRLQRERRyJNttQRvSw2Mb/cHip6Vky9yOJQf8c7QGKUfsnTeaEqi235o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kVBOFnH3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kVBOFnH3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC8BEC4CEE9
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743732593;
	bh=AR+/V+BRZZzWwi5NBDkWWNs9PFRYEzPmGxRHBZf9RyU=;
	h=To:Subject:From:Date:From;
	b=kVBOFnH3hr60NZIRjAePy9DUBs99nd4PcPO3A3E5cx+IAzgZZGP7E5i1a9BEPSaHZ
	 WfHdH3yPTR8id1evMyr+oTA/ip3QVy12jsmzEdUoFz0KMtmav3iif/U2zvN0I4+D9w
	 QzM8B13im3ryl7+SAj+W3tAbSdaxUvUpx6FdGKkHA4SPAnu9vC46/TC9ClZ/mA0638
	 ZQGbR3wLNu+uANBecKdDhwCVvAFJz4Ib1ZFgrIYLzWEK6YhGEcYXOLoiK6dgu2L5s8
	 fbh5z1ulyRUeOyJP91DLC7JNGFTA3hspNLNPq/W9H+OJ5bn7HPP8NhaqCpDziBQG7L
	 k0au9SOu7Kuhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6A9BC3600C
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174373259363.9515.13744791158635219718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70fd880a5cdc3f8285b7300e672dc49e5ae3eb1678b24ff197c9f61089fafed2
Date: Fri, 04 Apr 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743732593

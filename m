Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1691F26ED41
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770391434; cv=none; b=kDjdqRTlKUwt+e73RtsW75L59EpcL/HlHFwXr272Efscug1obcNHoYxcdfaJvPxGt7I4iolHx3QYla24h8b4FAj/GjxhZYz4O9GrNq1a14+BoGXCZmclnNH6K9SjSXd6lgH6sibj1gl0KubppD/59ns/cX9Ufdv208cheIxIMLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770391434; c=relaxed/simple;
	bh=t0dbpBsCHDMKCzmQDF3sxQ8Fb9Er4BtW8QDTP08vl8I=;
	h=To:Subject:From:Message-Id:Date; b=VR9zDsdld8TsXpVR7BPM+414Fiu76F6V93U0p3XUvNkCjJxxbbHNrb6+vc9XEVFZmhjTBRpKwnO7HkcA//VyXjGjE6ZfurY9t4eybhKQTQ/Op/wj5VFMiOgXmaKi4T6quupZsbSlHxN875WK4FwdGFfx++JLZKxBhEW4kWBBHNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oQdPXp57; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oQdPXp57"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E09C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 15:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770391433;
	bh=t0dbpBsCHDMKCzmQDF3sxQ8Fb9Er4BtW8QDTP08vl8I=;
	h=To:Subject:From:Date:From;
	b=oQdPXp57W83wQrYeFGW9ZYAgiXSpCmGXTy+eSSqwSHUONvbCy09sUjinJAnXcD2BR
	 Dqyeh1ahKI9lEy7c2No4iZt/S7nB9A5P+wTjHKrlV6TP/l+uPf9ICodaaMhgOFb/F1
	 wY8l9rJwAUpoum3tYdVX9mwQmQq3Z/8XaDPpKRaaXDCLwfynbUJ4zZokHzpx7mZahb
	 cCfAqFOe1htdv7DO3W+UTgcN5C0Z0Ymv4lzeUd6Nx1a5fx5EqKxBy4d1OK2wfo9N26
	 Be4IxUnp0CcszM4taSlx2zmfx7X4jyyFBTpugUB1E1OlR8FEd7hkqq1FytZ4Xa3Plq
	 mO1MeA0d3ua7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912EEEE20AB
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 15:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177039143358.2662.4694011507885870282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49e4f05cd74d7a2bbd08909c33724b641a5ff5f3c89a68307dbf750707eb3ebf
Date: Fri, 06 Feb 2026 15:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770391433

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41FC53168F8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760570394; cv=none; b=m0SjXv5JzNf5mKA1Dn56szrHN0zzgPNGuYhX7pnOxxLOkcjpD7V35uoYxrvZd1ZR43XkIJzo5wZ8VSVxoJOrAECPkAtYcCBKFeSuD+f7WtcG/0qcxeNj62+unPuQX6rIZ4ZKkG52xJU4I4WKqoB4wn7GC//FtJpXOKuOqRkQV9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760570394; c=relaxed/simple;
	bh=7EtK6KCqt8qNB70RKvdrhRZLBIZ8S/2kN0wC7Hg7Pv8=;
	h=To:Subject:From:Message-Id:Date; b=N2ZFkNdcLm9/8AaxM9wXe0yesW9PuOcQMTgFCg7+emLitzoSgt74m9JAHmkjFu8muIih36hoFBdavDKHO5WjnzcbmGfvE5LeiPx/ndP5TYYWVuPspGPpVGjETHIkmElj6K4MEH01VUchqAhIA8W29dkqQePL7X0vCT52hF9tSYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OQDdauR8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OQDdauR8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9BFAC4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760570393;
	bh=7EtK6KCqt8qNB70RKvdrhRZLBIZ8S/2kN0wC7Hg7Pv8=;
	h=To:Subject:From:Date:From;
	b=OQDdauR8C6CA8iS75kkc4smtC2Ck3NS+51X8YukIS/86w+tgAYkWRIwaQdWSGYgSW
	 kzPJu5jyl7sZpo5sbms3Mu8ja1oqQWHLAi0q6smmfI/qruLJ9gVF3Zd7TqJc9D8CAw
	 yK8IKS+Bcdt6NOjQBz4LXvERjR9kZ+uQ4FXklSJEcdjavhsycQ3nlp6WXsuunsX1Ul
	 qVRH2yq13DQCAUDizARgV6WAsNyqquvymdS0zpjdXNnuc9nm7IabvUEbAMlGudTv4F
	 TRXCMf3quxK+3dCy7LocW5oQiAE3/TPL2MUBSRov9Z1IkfCtrnSBdwvdTrry7FyIEV
	 cetIiaMI8neZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6ED4CCD195
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176057039365.822.15375611434375809720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 640a3a03e0640a4ad712031a0a25d4cc88d4d6117b758354e9e317aacfd7f9a1
Date: Wed, 15 Oct 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760570393

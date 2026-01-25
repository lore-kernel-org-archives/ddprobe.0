Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 023C02F6181
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 19:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769369634; cv=none; b=iec6K8e9IMbX+XlbrTn5YYQXHzQikrHCpfKxR7eLhDx570wWrMYiBPR46bPA7mithEcG6OZPR+QzY4AgM8zpe/aL6UiMK6UMnhL9B+Lid4hCepFM9st8pI8HvJIY0p1q/V2CRzbo1EYrFm58G/Fpym9RQ1c+r4Y/IP+KM8ciN3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769369634; c=relaxed/simple;
	bh=7CNhj5NxUt42rrDgG1nHplS2R+arYDLu5IIeZC/8h2Q=;
	h=To:Subject:From:Message-Id:Date; b=IarmbG5hKfRHXfPzU+lHg284N+Df6xCXtAAEa1yoE50CU2QSflmdrAi6Zs2pLjGVWqze0nMuNgfVnkbPz9L5tqeU20inJYpxbFEh/+T8DoDpv2bJiXwaubEGE0QOc1q40e5hlyya+1IH6cbpDwt06N56k5aAwNZuYcyFGtAfmS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gOVRkXoL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gOVRkXoL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD309C19425
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769369633;
	bh=7CNhj5NxUt42rrDgG1nHplS2R+arYDLu5IIeZC/8h2Q=;
	h=To:Subject:From:Date:From;
	b=gOVRkXoLiv0lHOXNyqqnEmN9NePhfpBoFeu5nT6IhWwQlvKmJz7J9p0ZoaXKMeua0
	 cYNTWgyQr7p6rlrmCyDhjvshmlXRjY+UisdEPglqmc3VbtZlkDpN10CTw4puPi4Zyz
	 bigBzrkSnrpvnPzmAlKkgTtb3UR+pxHXV6GfaU37tsGxEmf3BKdZdMp03/0ySqrwes
	 6k+8r4Wb2PItbbQ797qv9VyaixHTYsU9iMmv99sXban21yLfw4BEz4V++BDYn/RpAz
	 MYzt5jrEeaB0vQS2s9xlZ26ktWfBSNcbsV4IK5Y0PwqovZsf72Fxpu4Z4f69MUtnXF
	 e3tCruL8h/QVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93493E63CBF
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 19:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176936963358.29712.10982661878633522208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fb5c3eaa3816b7f56ce27f65f41420059c88ade107368a44deb0d6917fd7cb1
Date: Sun, 25 Jan 2026 19:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769369633

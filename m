Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FBAED515
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761019194; cv=none; b=hRAiOvK3vwJmzFJRGNY4lEWLM4zNielnM8+7vTnIcpvEOmTwwNj9w+/KkafsWS+woo1FNxBPycCmJwTivihCurzV4OMg2vRiRu01lF5O1ysWLfLDnYw4GIvj9u+cTZsHYeRM6pRutdA/6mdLsPoEWddw5Lcrcb63ZFLFHQ2M5ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761019194; c=relaxed/simple;
	bh=0rWEIxqX2z79pO4Lzh2QaniqhZtRPdVt0g6W2SZzYGk=;
	h=To:Subject:From:Message-Id:Date; b=NKymRkJEdMsVDo+UYBpu+5fPYvvl33Oo5hlYKc8D/r10Hm4/SEo9ansdAYB4lHb0nys3taxYqqjUR8e1hgZAB2j6/2kjEdj6Zjly15RNhcDfFk56PdhlqVt0vUHoBGmO31kDc2G7MeADdVlX3Ag0Fx2wyFKDZx96LXh2kOrVblk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PLS0FWyH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PLS0FWyH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AE7C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761019193;
	bh=0rWEIxqX2z79pO4Lzh2QaniqhZtRPdVt0g6W2SZzYGk=;
	h=To:Subject:From:Date:From;
	b=PLS0FWyHZrZVP7ZO2XXYiG3u8LvH6liRYux32Bm1HJfQ9XQ2lcLQeyc4U1p4GFEK/
	 5BvkznGcy+Bf5rygNCoxLZLouAk749DcaHCYu4dbSkrDh9WL8yk79ig/0qLWr+clxj
	 Z1VP7r41n/F8VSkAvQO6ESRzVcQl6887g3LLB1xXi4o3H6ySzks6Qf6px7dLzjYfOd
	 FbJEWvfB78J1NbP7ZhywCwuT9AboaPxYlzzEqeGHr+3Pv/IGHO2d8Dw3e8l56A6NBq
	 7WIgmco5xHbgmLbVYTC0R+jygIJRXdIeAeYSJCJ7sgaGQugRf87ksBzhWHLXN+YhvF
	 h0jLySkBbusww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96086CCD184
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176101919358.32484.17182539378494268670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8794467bff9f89b1a5fa6b6d8c6bef60220595d2a72f3bbf971fec5f49a0e274
Date: Tue, 21 Oct 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761019193

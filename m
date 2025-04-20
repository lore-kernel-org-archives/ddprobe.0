Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53B7117E
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745151594; cv=none; b=dNXJsPziF/VaXys5EnBmDQBncyLKuLFGpbujqLpBYzmIN94bIApH79ipsdWL9/3gMxuHVdV07Vm8gceWyGV0cokuz3arF31+BttuczJjbIfQTPkOFN2sed1pHbgEjvvlKQaPUCrZhj4MDz4fDeosD0oJrcUDdpPrnJTe+IS6b1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745151594; c=relaxed/simple;
	bh=rA/oHnOuAhBwRavui+RcW9Tvxycl3pOR8TrbkqSsCoE=;
	h=To:Subject:From:Message-Id:Date; b=Bos1TDhnzfjAuD15r7RcD68PYQg8eHvfg4y9c7QG+AExZsuibC8808izN2Zh8LtS9l7jhAsyMOjMyL1z4Ady1gWc8Wkg9tEFTE9QzvCRLiLHAizZndSGamIiALYw3zXdNDh0E9Kna5/G6VqPSI4sSpyyBGQhEJYbhTkfgLymvqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JUOz1rvM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JUOz1rvM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2707C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745151593;
	bh=rA/oHnOuAhBwRavui+RcW9Tvxycl3pOR8TrbkqSsCoE=;
	h=To:Subject:From:Date:From;
	b=JUOz1rvMvpb8I7tWw8kVK+kTeE/jqDZoUxkw+pgIL3Cpbt0vcBshCywTuxECvrbk3
	 X6u+x3yZtQO4L97+wQ0pD7wYEk02+wBrcp4pxBcFcB4t3lL8Qiqgm0MWHGFDhHHKUX
	 FeMtUBB9xFHBV7I7suQEaQ7PHMgeK4YFasu3RxHtQWEMFk781YR/W1wi4XFM/H7R4v
	 TOgGyTyQRsMuulnclFQ6VI3m2DqR067jRMf/kwax8uFfYSvHLcJ+r6uEJoGew2r7tj
	 hdLWm9AqaEKPSzgqgatp5B81iUnjbkyIei0f5V86BT81b20M0RRhxe737epbG9q2f7
	 9d06QqkYI6tcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94146C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174515159358.18197.11202189220336398069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e045bda65df8ad2f5e261e0390c775f9b6be13917f16c64bea9cf4e0e00079be
Date: Sun, 20 Apr 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745151593

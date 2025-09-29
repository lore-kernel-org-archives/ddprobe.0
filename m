Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23050433AD
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759184994; cv=none; b=Staa7+tYiGlniP57E7qEPycL/iTyqn5ctsI7H1qjiW2U84qYaOcTR1s/KXpN9BeYCaRfkpPSAGu0vZzRQK72+WDV4UL4UGEzau1ECz1C58bvwjk4wcPkfl3v7F+aGAfXbg4zAQ+uRxBTq7oeO2ePVQnlvoarz7ZbU3sjmqcZhPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759184994; c=relaxed/simple;
	bh=+f2atlj36bqByzJyRfMPkkBN+gD8u039YMOtU4Ipa4g=;
	h=To:Subject:From:Message-Id:Date; b=aRBFbE+PGwzZmKQgskySpfp0E5E8L5q5zEqizW8UY2GCcC83cFeA+9xmGDKi1UjcxzV95ADR5Tg3roZu3dX+g7Wtg35g4qISixI+64m2bV8dOOa+XZmE9gO+Nulsb3AmKRwymGfY1jEstRL6aw0t4O4TqYqWpWYKpRh6HciM1ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EgVlRdrZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EgVlRdrZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6EF7C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759184993;
	bh=+f2atlj36bqByzJyRfMPkkBN+gD8u039YMOtU4Ipa4g=;
	h=To:Subject:From:Date:From;
	b=EgVlRdrZhggr2fWH1pwI7VNwJKV1jR813mcYe9ObxuDNH3GC8OsQsfzqeuA07aL1A
	 m8wWfIVCCfs8Blyh7uxo5IE4FdziHQLYl3MH9zOrcnI3RMm0wzxBkLZiqDzOdMxq9/
	 y9R7NQd8O0m9kV0khpcRn5CDCwQqUgP9PDFJTlGnwPOAaXt01LIWOTyjAPm9ha9vHj
	 ByhhWIYovB/0MxXVg/hoN/xAEnwzslbFlrbYaY7Agw9Be1cIVgMYJiGHB0yNOUedQo
	 Xp50heYqMkWVYshvp1vbcxb4E8vuR5UVE7RhZwu4pO5Czc9WoRQDBkn8ax6qJlivbL
	 e3mQx/OI1oxMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D174CAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175918499363.15208.10319927341118190559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6338d043cc1dfb54b7ef6ec3f34707fe649af3004fff486d33db03d5873cf3c
Date: Mon, 29 Sep 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759184993

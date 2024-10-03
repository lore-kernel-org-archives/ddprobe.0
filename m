Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F9280027
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727938554; cv=none; b=PNgK4elQ/fzyToL9DvQvwgM5rwarXK3S503gP9C+wvNAvlhLROFskLhIa69ucqUgqMeX7GCyg88qii7f6xC1N83oPnHm9/gndj7OIrcMaoK7fnKInLc+VwMFUTQRTokGkbUWtl13462Pnex+3HCQnS5q/vfYZFNFeaQC3wpWOfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727938554; c=relaxed/simple;
	bh=P82iS03btw3G2UnNRdPi42Wcp5EDbDLj9az7jIIc89A=;
	h=To:Subject:From:Message-Id:Date; b=FErHGKlIroR7/oTlBLiIgF6a3LXPls1wpWNGcEpOoS0JpQkoMnuq/UH3wzpd6sy+mBWrvYeOyUwBzIMoqKtdLgj5oqSqfXfyvPzaFprpSQyDsDlmrdXYGZ+TyAETll0Guzoqwws04qke8fxuPGYWooeaWY8/7w5oLP64mf9Pm0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z9dUrtxW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z9dUrtxW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE7F3C4CECC
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727938553;
	bh=P82iS03btw3G2UnNRdPi42Wcp5EDbDLj9az7jIIc89A=;
	h=To:Subject:From:Date:From;
	b=Z9dUrtxWTL8sm+P6tw4ulxgFwa99gZsqL9asXk6qX/tEw/r0ASLGHORhSI7W7UIuj
	 lbH+7iZYBKAgyM+fXkWnqXNNsakE9FPtBNBJ6mgh1PrOFw+2RdAINmJ7IhwM0n6u9c
	 /F+stCChE9nhwWNKTtQ1zLB/4nBCFh9j8eeKBYjeN8uYsK/cRoFFwqWaKIBa9JZ8U1
	 iZOJQjG21Uda+oIj6VOVzApo/u5AWoE1iPS9Ep+qtetUKY9m4IDy3Ydz5MSCNHYBQm
	 Bh2+DblSUOR0b7c1kikgEI+osa2RoRcUCLuxaMhgqw+TgAuFQYzU5yhj0NQx6rLTgA
	 UEPrdVXwvSK6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C381CF855A
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172793855360.28671.4350232931195482603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4aa8c65ac83c9ec57d6928755a37d88bb94710162f1a83b4bd56bbdfc4be6704
Date: Thu, 03 Oct 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727938553

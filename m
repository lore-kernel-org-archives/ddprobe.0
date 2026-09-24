Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F926332EC5
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 07:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790233236; cv=none; b=g/pp7Q+Z5JTWijF3XuI+4ffD3sidRTjAcby4NxDAGGeowxPOHfSycDMPCC6YVjE+jHVYWcIHuUcAcTGeP7K51J2jaNbc3qcTlUWHWocBvnE6tu7n24tsY9lkHWgX1/tF31+MDu6vCW4v/KGk/OFNLtz41NPezE55yjKld9GRQXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790233236; c=relaxed/simple;
	bh=K+jA//N5DL22ePBTNOTaFWjTXk/mF4fQpDzhFCM0K7w=;
	h=To:Subject:From:Message-Id:Date; b=opL/WpMRf3pPVf87sGE3D4x5zJrlar1zhwUt6igNcwI6NX5kyqmsFdRSV4M5FePA18vkx1qa6PhTFlEVghQpAj2fyMqEZ4D/BMvpRWXlC6OHy6AYPJzOo2875pPtVFGKIMJMwF/U1PSkGz+wBJg1PL4CJ2ToGGVoqVOBYE9wfyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t45MCJWy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t45MCJWy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE45CC2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790233233;
	bh=K+jA//N5DL22ePBTNOTaFWjTXk/mF4fQpDzhFCM0K7w=;
	h=To:Subject:From:Date:From;
	b=t45MCJWyCskz26WaReATfQ67va8pAM/YiR6dal9Ox186U1QUOeUaNJ6KTTpEGu+o4
	 gsKkqInAPS2b9OL5+9oa3BP2KbYwZc4xSk2b2E8wXwLybolOioWr52WkVrNRMyig41
	 h6TzGZIrYA+OOKVp6YckqsgJe2aZcwGtHqnZrRm/rBkxJ6GOL91WXjKDDkBLYHHnsQ
	 VZ5WaCoZE7UjwaYbHv1DAF+fXwl0tXA+6LnUlUCmMuFpBGzXs7izxAjxi+PcJ6qaSr
	 nFuWs68rVxgJ0EJDrkfEB/Nyij18iSFjW3z29l7Cg14GKEIk5mBCYD5c7Bv/SVT8Yq
	 lJM1WQu36Icfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA982C98314
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179023323368.31046.13437720293184271143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dd7cebfae96d62e16d6c1cb62eb1b6083c81c5a625c40934084209c52726c04
Date: Thu, 24 Sep 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790233233

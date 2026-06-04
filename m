Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29DAA37BE8B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 08:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780560274; cv=none; b=QJUpJIq2czC7PdCTHXYiZOmfsKAmaninm8UAiz7cgVOXXamcSywK/eR6MZb+v3/OrdlV8+KEP8GsbdqGv428nOfXPRiWWals7a9hDdwanqUHhHqIimIcmP2N0iforBdNDtCOqkT4OVgVwpL/gVO3tzM6dgH+n0wWTXVaNFdY69w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780560274; c=relaxed/simple;
	bh=5Z66nIk0dPr8Bs5pxn30fySCPHcTWtt0h9KHeaI3+lQ=;
	h=To:Subject:From:Message-Id:Date; b=oddz6rsK3IPUBqoygdDPYX9Ogq6xDqS5me44o3jPC1RJMVIZi+Q3yR7nEC4QMG4P+JArH77q8IlO7eE9uA8epjngP3iVyTzbqXz8gPgXIB65KKfRuCVIsZPYtnrvWChO/HSWYdSHYry1EnG/A3MHncmNcW3IYcnFYSeyR6ej9MM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CiVE7Wl8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CiVE7Wl8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1F73C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 08:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780560273;
	bh=5Z66nIk0dPr8Bs5pxn30fySCPHcTWtt0h9KHeaI3+lQ=;
	h=To:Subject:From:Date:From;
	b=CiVE7Wl8xMUqYHyHTr9nZ/CPl4TVabTLfNlp5xd8IcvLGcqsRTUM96v6BkEsmRZWy
	 sqnkpiTdO54aHnQ2LDncj3LWvaY/B6Dml4GmOQd/xGUNSYsewrzDLeF7iKEqODloVH
	 4rrZamrXFKZ4IJPtxBP4p360Y8UOd/tnbPZoG3qtPC8WRF3p9n5ISMIo9EKyiUH0F2
	 pirbUWKXkFX9Egvogj4xejt5Qc+z3U4bg6VGPvE2PNarh0QLbm/99YTxcF/JZN6iVW
	 fxeTJHBEsmzADlotxZi9HchADlol8b7yXd9ex7oJ+fOVD3tcJW1nkLIpp4K5TVJ0uX
	 K/s9tW/64wcNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B94CD6E68
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 08:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178056027368.29571.6979203759099335388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0597b16210dc67492d7a84650a504f013db1accbd3b04ed7bb146192d888d9ba
Date: Thu, 04 Jun 2026 08:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780560273

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2334F1553AA
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742569194; cv=none; b=EknvgU81Sr/REwDeFimDvkYVgp6LZ1q1GIr2+a7vTgjvEL7zKQ88p/o2HkA7bQOY7C4xwP+EaM2xbRyZxd2cxZKDLN+wUyyQVDfUOFpFragX/UHqJtl8cPoT5zr3cvvwsP/uDsTGCSSIjUOmnnm+fTEevhEYdpUTR++xVHIBdnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742569194; c=relaxed/simple;
	bh=8eKH0JSzcxePaVML2nBJOVPpwlFHNs33E8fCCN78nh0=;
	h=To:Subject:From:Message-Id:Date; b=BS47M+j+Qdjhs6OvpjeTt0UHBZdL93mcsN70V621PCujLzWLa4HnLgk0JJq7zrvqe4nNzfu0YlQJOmFFctz2iO9u8LJFSZ5RnlWGStm3LnPAE+ezuXHUGcyC6RL0PD2JTwkiQVL0p/nzd5dBVno9u2prIuZ7OA/8P634jAc8Wbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S/Xo0Fgq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S/Xo0Fgq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51F7C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742569193;
	bh=8eKH0JSzcxePaVML2nBJOVPpwlFHNs33E8fCCN78nh0=;
	h=To:Subject:From:Date:From;
	b=S/Xo0FgqQwkhsDns12YzLuRJxu6TOYy6K6TekYKfAXpEL2MtLK/zxd5lbS9k2ooa+
	 pmJ0RKHA2e/r6fnyu4N6p00Q1tKYJ+t1eIjZFjVPV9I5yZ+0rVZ/Gf5HGndXHy5kaR
	 ZK2R5dklsOBrsPEh4f3U3vp6sprNKy6EF0MKjtOZwcCRbLIhr/lJndyXu3cs/W0HSH
	 qc7KAFlND1mp7nrn6wriyd6rgQMVB9CtO2FDgMwxFEt83bTOYhOoaQCy/Hah+bcBa9
	 Af6TwLcYPQ0Q6AngnR7H0o504+EpI42HyW2y5qVNQY3xwmQJd3H07jbAfvuvfO/IXm
	 VRSjhm9U6YiVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C39C36000
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174256919359.14061.7984346272497981220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df969847fd18cd5e6633ec420bd5181828a72754d1dd0dd02b4168796bb9951a
Date: Fri, 21 Mar 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742569193

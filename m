Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2088E240251
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736832354; cv=none; b=aShE0riCdSUdlJFGRIB0g/7/5OX9oIeR9VSRRW0Ct34k1GcwvDu2k/DH02sgmBWGKmSMhdPeI0899woBGhZV/DV8jKs3tg1pmK9O9iPtbHaBDPEXrTx0tmmvPzBPyw6DK4Y9PmM9hVEMRVn9vDGQJSDFdwXjPwGC1AMq5EI3bPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736832354; c=relaxed/simple;
	bh=3NWDwhYbajxhZFL17u6WKHTdwwbO/fCBQ3g6Osr0bB8=;
	h=To:Subject:From:Message-Id:Date; b=GGl0mwEu3ZAun10IPHlSA7g+lvYLZndQ2Y8byzJb4wbpNLRcKZkcRTiQjg8AiE2xnvl1KipLBxJ6iHMc/8VBpY2xN07GKs9yGU+JlZSpTu84+9XiSW7MyddgwBzQa0+8qz/mHmOdZRc0cUt0x9gnhBNHo6jH50201A0e3rmlYDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C+XzAXcH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C+XzAXcH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CE6C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736832353;
	bh=3NWDwhYbajxhZFL17u6WKHTdwwbO/fCBQ3g6Osr0bB8=;
	h=To:Subject:From:Date:From;
	b=C+XzAXcHhuA8qIBMMQBMOO79bS9GycID7wrKehm0jiOLywO6G6Hy1IkTTiVTIbMKA
	 uopdDSWGlsTKKJi8y0el22zSUteUIWtyPKdus47cR79FzHoWbsQj46ltM5YNtqlEoX
	 4ngSxrR+uIzvWxLYIS41Pny6KIF5AUVncxrk49qenIql4dEDIvTXwcjWvDJXWL7TEP
	 15hVojZs5c2zd4ACsP8RUn3/rxKgQUEzoww5XB/KrqEqB3fWbM4IRe+wsSnF+010eg
	 SdhTyiSq3tUtqKJEiN8uTY0fr4+litF56BHbiTRZGI+ZALxk/xUZVXnxJCQpFNsBsu
	 eFkjXm3lCht1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E04C02183
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173683235359.14497.7424042815397895948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc02960f395026f4ae3c12dc6be5aea2f1743965d71ba3f5c9eb78cd070f7802
Date: Tue, 14 Jan 2025 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736832353

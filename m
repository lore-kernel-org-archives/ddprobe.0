Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 419123612EC
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 04:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784174914; cv=none; b=hOr5oeWySMfN1hQqYiH7GQfWx8qbdBsc4Yf8DnWemdCOKyY7amk2F2kKXwuw69+0id4N6AQtsBL70+8A1gqnXt1UgZNT/VdL/e+1N/Avab7R/hs5Rcvao8jP0Bym2h23mmtZFyjsx2ZwtCQtb3SdGlfMY0tFf7fI5cggACpvEgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784174914; c=relaxed/simple;
	bh=LiXmpcjObz/po8z7UEzXzoRd7AAYrQwTcChpu5204cc=;
	h=To:Subject:From:Message-Id:Date; b=nQRrC8c4Gu2b/tj5FvFECvQEL9ClQDLwYkV0uuckuaGe6tcKjQIgS9zXSqj+FkY843KMrf/yaKoU4Xdmsn2rs5YDGLMEffKAQbHKh2iv+SouKMTyG+/c9AIY8f2RZnuK9MFaL4WyjUrSX+CJA+hspGOSbBXrHCjKu5LJAvc54F4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k8qKfa6y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k8qKfa6y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A60C2BCC9
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 04:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784174913;
	bh=LiXmpcjObz/po8z7UEzXzoRd7AAYrQwTcChpu5204cc=;
	h=To:Subject:From:Date:From;
	b=k8qKfa6yBBSFUWPNkzSgy30Kq0jpeXzv2/9k4bVJr7SJTLnGv+PN2qGb36ilh5fjK
	 PUJIgkBABLpLOEkiASSwMymqbX0nRzdlOs4XPCuqpGQqsjV7WtePOuyOTAznmEISKb
	 /FV8PF4DM/7Hu3QAAbTLZ2d24rZVWpBsi6gHQYl/K+Mnd1E1R5D9G2jjdzt7sGhW61
	 3pZWTZcbUUhEn9lJ9J+EeCpkfC/ipUaO1XYZZEsUhJSfaDFBxCzHlFvj3dzjcjhhAP
	 z66HUhqYhb3mA8Oh74HLYc3Djhl1lPyUu/RTGgoe36KI9cF+m/zFRIgb/ByCpTpXZu
	 rWAP3pBneWp/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD551C43458
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 04:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178417491368.27409.14551896520373237107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a44bb03184b46b2b9e676572100c6df519ddd1b18fe7771757b16ae38f251ef
Date: Thu, 16 Jul 2026 04:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784174913

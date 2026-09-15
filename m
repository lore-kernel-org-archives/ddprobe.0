Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4FD3D6478
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789492834; cv=none; b=CuOHeL1aUBXDXRLxs+0PWtMPN2PgV6GzeIFlKPAdXZWTEZhwbDPgoUoxd57cEjcfTaPXBd6fTsfq81CjMrQEnI8AOhLnFw3J7Y6WAdMU29t6XbVwTH1aXw0We6xjUuXHw5Rnmbq7EO0nV6Ux0CXmdDYPx666NMPWq/6ePiSBCWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789492834; c=relaxed/simple;
	bh=o9iRnNJbbCLMwZ23lo+TNUchwS0HeIwTpxI7DF/nZMg=;
	h=To:Subject:From:Message-Id:Date; b=Ec9z7PNQSQGdTf+B6ms4RXkwcmOurwwEqfyYL85RykAd24gpUazcyibqKi3zwxkBlAvLQvDLz7OqfNCfp13dUJETNcModiie6vIjj9yJ+M0UTzQZjVSYrnNM6I1qE57DwcWFAviHCEbbhtC5HtwCPRt2NB9J3wZf9ZSD9ZtQn1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oXoYnaoI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oXoYnaoI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBEA8C2BCFB
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789492833;
	bh=o9iRnNJbbCLMwZ23lo+TNUchwS0HeIwTpxI7DF/nZMg=;
	h=To:Subject:From:Date:From;
	b=oXoYnaoI+5YYRoiO5dVOqlJzO7Uz51xiOOG3EfDiMZgRjfjpBwYxPundmskWbVw0l
	 gMTlaakEubJuq7gDcZkrqxXCYzf6B2dV4WkDL6sSBJUCqfmpGVxV/XrQaKegigNZBj
	 unfJhG5OddqtkK1ZJK7s7MbpA/FNSI3QG8qnjR2zBVVpnJs1GsYg2iI1BWfcaeyQaB
	 c7Y9a4u8XKze4+sWdrLq663N3IDjwCVbaoZa0+yIcRDJIWOyn7iIJc+kxco9Dr8HFn
	 drCdc2uiBi9gMEpKQYw5sr2h7DJbrTxEKHGaUPhxzQRwt3rhCrGJ8LcsLf83/WAc75
	 rfloFeORf5k4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA21DC88E77
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178949283368.5175.11321818115762413949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5933b66b7525a63ecc59a8da12058b5e2ec5a2d75025c72977da3d86919af512
Date: Tue, 15 Sep 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789492833

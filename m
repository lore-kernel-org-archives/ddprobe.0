Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12048250C06
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 04:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779857554; cv=none; b=s2p1dDlMaeHtGv8lgWpWAvjEDlD9hBqk5eDsiczH9kzdYnwnZQa29hWGq8QjNIab+3LaQH2pCGuDrxPzZZbDGCUsDLNw0CWgxxtRRryYXqv0CsK//lrpfhIf0+/I+5jyaeJb0wfckKTRatPl3L9jQ10kccx5dYXkpPxiQ9YIiec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779857554; c=relaxed/simple;
	bh=l0B/SEQY3ShEq/Q8YmvMzXAjbz/X+EZdyEQ1fc5L7H0=;
	h=To:Subject:From:Message-Id:Date; b=JhFVd2+MV5LUhsc5YUYfdtxnTV7OjhrDPDdTa0Nu/XRO4L06NweenE76iuZHWzUoOFA1fZVxFbi4xns4zUVkGE+gZPbhbBUv9Z9NT440F44G27bhh7dzzv516EkNve1usi6Hpdkh1L0lhhWeL0cBG/HqT3jQUBVRGYPjjrPvklo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gtn8cg4w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gtn8cg4w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8105C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 04:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779857553;
	bh=l0B/SEQY3ShEq/Q8YmvMzXAjbz/X+EZdyEQ1fc5L7H0=;
	h=To:Subject:From:Date:From;
	b=gtn8cg4wzjU9bgokAOnkqpZXx5tcqVwMhv1yV5GavS0pr+hJcJ70GKikGSQedXHyp
	 RXjlEv+o2ZX5IrsGxcXzaaCL2iepzQHDjy6J4LHO9anOXHWZQulpC+lWeUzEXq7IFF
	 uUOW3oqXVuMDm2RjMD8pyNfeWUPdulSYsloUowhftT0t85GsXVY0/DHSWeU0Qmg0OU
	 EekhvItj5e73pTHorhEc491Xt6V0LH1CmBuHCUbs7Jj9UMFFLJSAo/tGFTKM7q4g8V
	 k3d/bO3eulfW3otuzOeEszX6wikthSDC/WTS7Wse1NrpDVGDazBRrqhEUbQgbMhS7C
	 WGQ7eohlrEjvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9DBCD5BDE
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 04:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177985755368.15035.8877023678428879725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd0b60e1b35c3b9293c0d8328798ecaa3f485dbb244af393049002e8a36b0c04
Date: Wed, 27 May 2026 04:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779857553

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73AD029428
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 05:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717739843; cv=none; b=GAGEROcXI6ypErGailH3CnE/UI09LphRElPx8lomHfsQic7N/1W99IBIMBMTbBpUf0rwy6QCFrX/EH1FwKib6S27MPp74cPxNdTEaBXNoXHbUOd5GVR/RjIBPhpetIkjpLMufGxFYTE5HgDFEGu/xqR996VeVVpit11hhqec5Gw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717739843; c=relaxed/simple;
	bh=YX1IOqn6D7D2H6cHFlizmprVCjQE8A62tJxvCBECG+I=;
	h=To:Subject:From:Message-Id:Date; b=GhsuNa3kp+qTGxYHMYoZ8/p3EniF8WD3+aOcaq6fJ3gyXv+jQ1AzBIdM0zIwyWL54V768EVVukDFmTOjYd58QaVhzfkkrDuQ2dfoZk0Fpkg8hi7ZIezmRgQ11dJDkdgv+iB+KUTRIbQ58j/d4RU64OzP+YtK3Zcqg7Rb5U85iNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=keSheiuT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="keSheiuT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDA20C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 05:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717739842;
	bh=YX1IOqn6D7D2H6cHFlizmprVCjQE8A62tJxvCBECG+I=;
	h=To:Subject:From:Date:From;
	b=keSheiuT7ZXsz07xxK3aZPHA4ne8cz/brBP93+zEOmc/OP6oAvDPOp/7tYDgcfoJY
	 J1cMumk7jLCkDOJWtBI7eKeNi+WbsUZAKlCC+OC8uBw+wgmFImKUT1gasdaQ6RVO2f
	 5IGGNeIjACe6SMNiUVPuuKQnzRcOwxhgHmVU8NREEU3GjK6Ivq7P2hPl943Fkm9EKH
	 WXxLnGgFxO6bCsfLKTb02XQtN00gJC+lPqOwtRANyKcCt24MXuue3VxTIbQzO08DvY
	 W8MIsmioMTY7W3FS5xtg2r4TzN75kCbXHetadOUHtYY7IoqTfrZSHDLHbtBddo8+Qw
	 JdTj/0YTPq7Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C97C3C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 05:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171773984281.8119.7197039072823507056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efc6be9f30e2d1ea100ebabc0c4cdbc88cb3f1521fb8d2d80666381dfdc90cfa
Date: Fri, 07 Jun 2024 05:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717739842

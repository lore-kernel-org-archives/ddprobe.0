Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E431270568
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 12:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772195094; cv=none; b=rsOmrMKA5XVNiCgUXOiXG0SuVfOM6/drqumxuqmcpkfILTHvPbMxaoTxyaOo1mAJWBb0Z25USQ53iCtgMz151RJhEd5Lcp9OSBnkh9LCut16PQSG/kTgv1bPzHnKtXwEGkUfKWLIfF0FbiciTjGuI9Wy0C+d2Acl1TuKeBFfzNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772195094; c=relaxed/simple;
	bh=7MN6qynl6mvvQ2iGTUt55g1H0d8ySp1EnSQ7JR6SMKQ=;
	h=To:Subject:From:Message-Id:Date; b=es3AUkDrsKxGYOwTIocjiBEWQl1QkJOYI/oqTYXopP5C8bg2Gl0D7lj2wuoN6SIVqe0Uy5njo4XWeZjkWt16ZBOHBnOcMspKgQ0GbZyHw2uvQ+hOOTfD8612iBIs62sEauG744kFw38usU4yJ/65k58y/StwLbcrOnBjwXXzONQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XD8Yxp33; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XD8Yxp33"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9279C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 12:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772195093;
	bh=7MN6qynl6mvvQ2iGTUt55g1H0d8ySp1EnSQ7JR6SMKQ=;
	h=To:Subject:From:Date:From;
	b=XD8Yxp33cuP8d5kz3t4M70y/KLwDKr00jAENbDnmHIKqSICq2widtIyIXRsidsRJa
	 1xR3LxMQ5uXtrGtEb8A16b0A2nMN8GpVULT5z/tmOipyzdPHlQ4mpXP9QfLmA6T/8k
	 5GIDLSWho96QSQ0D/j9dJFiiuG2oxLbpDkSOHUNy4JJ5YdwUimhydki/SLMGpTpnhe
	 L4Z7JCdvIrTD17qO3s+dVFxWQm+cp60kL1KhDKaIKHmxmkgdx5el57D4MZFXC9b+Lr
	 icFIOxblQKbx2DETiMEfle5jP2kZ3MO1N2DRUNBaAQ8I/pYlOJsKgtSppcuCYajppQ
	 pl0b0qS5/8zpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F62FEFB48
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 12:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177219509358.12440.11344382898482597279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b348b628e66b119307edefc146b6109545cdc0b87929513e97957d7393d8c2ae
Date: Fri, 27 Feb 2026 12:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772195093

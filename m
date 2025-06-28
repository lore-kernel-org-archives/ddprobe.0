Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B65B17A30F
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751123394; cv=none; b=ROGL/FoAer2ZSKtjUp8RfAhsPJGfidoclohwowJymd8ffZ5haCvKhN99a9qaM2Dt3vEppai420g1GWb+pqY+sl5ponRUBHf+Ug4aixEZ7J2QN7tUfj0kWaxSv9IU6tUZaz2Yo8+XsWiPt8IdUc40W2vIvrQHNXtznwHquHg9ies=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751123394; c=relaxed/simple;
	bh=rL1Nxeaq2VlHX6/0ibOy84uevvExMqyYNNfBWvwjTkY=;
	h=To:Subject:From:Message-Id:Date; b=UGB80dErzd9LJP/PKIAyaAdCGbBmnNcbIvObQtJJZM1jPsxSSOhvIazKJgkNddc8sy0l3IlDkpcsENpDJ19i0CdLWb4JbIkP5S1UJ9ut2TA3IFjJ66xj00KHKBr4GwiO8MQvBYSsSi6aDtLZatsaPGJEh38yY/IWqKAX4yJnxig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CpDUOB7u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CpDUOB7u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A531CC4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751123393;
	bh=rL1Nxeaq2VlHX6/0ibOy84uevvExMqyYNNfBWvwjTkY=;
	h=To:Subject:From:Date:From;
	b=CpDUOB7uKhWosmtWovmJ9DPE1hI9cGL2+yxr1hCb5rz0BlUhzW993E91P+NbkbqZu
	 hjs6qnnNOKCV2XFmgtrhMjZF1sYBYg+JFwBU+NL++tTcBa78O8T3bX9b3DJPVduJVm
	 gVgT/0pqYRQGRG6ON42ua8Nwz2ZEV0DjdgLLZHxePYQjG+eEztMwOQviYRQT2WGhlu
	 /+Hz76N7vA/KvAjBuzkHTQL+2jMY3/c2L88j0CDgt62pzguTphHtzLLrV93cR/PF3K
	 RS0un+p6KdYZNo5UJ3I6Z0vQtwixNZUJMuUSyFUpn6yckvwEMqcVLeTtnAF4QmK4Wg
	 sz3dZqSxDKLcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F491C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175112339357.27476.3196887412054477720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53217d9decd1b9ba8c1f4f28f9e36240d5cdd263c29615d1ff82ed107d25d4fe
Date: Sat, 28 Jun 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751123393

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F0AF2D3EE5
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 23:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772494494; cv=none; b=pKOOgmpfd2vY0jhxAfxzKGuIFjCcjswVVDCTn59tSuRRFvGnSlvFKD+TOJFdCbvtBd9MYGLLKa0dHZNqzeFK4mq3HsAmtZoeHmQVEAjClwC3y59H3oo3pIoicSrZGfqPrWrlL4mdO1cbEO5sdpIYiO8kKaeNwTxcVzVknAwD9K4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772494494; c=relaxed/simple;
	bh=PuBr6NUWMnCfvA5+muTM4u2nUa0IKxXzITmzPFfUZWQ=;
	h=To:Subject:From:Message-Id:Date; b=gShGXd3t9uzzbpaQvdDXaw5Bg7299Iq8I3fqAUP6mh+mmXg77fBiNJJvPW/J2RkyvmZaTDNtUIGiz3CchfzCtWDzqcqUCpvBL0AYGTTOq8yGoS3UnZcg7WGPr6ViPoFZPomeVJqKzpshmDHApU8mdcFZR9CcbBf/dEa80bzFpWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EDlYBfIb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EDlYBfIb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1BEEC19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 23:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772494494;
	bh=PuBr6NUWMnCfvA5+muTM4u2nUa0IKxXzITmzPFfUZWQ=;
	h=To:Subject:From:Date:From;
	b=EDlYBfIbPK6+j72w3xBev5ZhWINTQyrnT7phJsYKlAONODqssdoQoRwxc50EZOnkS
	 nJ+eCp077sksnbDbYSYEcTPzQxkgCXOhtB1qUSurdJrN53RCq7H/XOANa+J5XIvMsG
	 X19rAX5+kOQgjw9FvkxAv6IxKRZwNF9WaytTZuhJNqJgcKIJVT5G2fBKs27AF2oN8X
	 Tkbocg+m1S7r39h6/rNFS8yJsMqSzsiJBIBCojhPYAKaeDhFQ2WGu4Bp+TMJjKB2Bd
	 xtniQAdjyPDM0B9ECUwGoIdqLgW52dsBw5aUZYxB8jBNsumCaE5MRVe5CSLvr75lGr
	 yRqR/YY6hXWNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF977EB3641
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 23:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177249449381.16497.16256813450811316424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3733a79cc96e1dc2eabfe209a3d988b8cd60f2f83bed2d3d3f9cb51955d7faac
Date: Mon, 02 Mar 2026 23:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772494493

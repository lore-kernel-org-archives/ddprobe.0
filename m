Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCB1414F70
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 13:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768137833; cv=none; b=G8YhUcyWfhPo7NrKZyW+V+KDe7+V4yfgTXJWffYyB++yX4J4kXbVOPwlDwS1Keys5bw6vsphQ3jT6a4rRF8/xWvx6TiINRYbTenl/+j5UF5mzll8gCQA4qEGRIvSF8AbmvdI/amTvPrxnQBjk5UZ49uHuyJSfzt8WzHz1DQu58U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768137833; c=relaxed/simple;
	bh=z3wLezuNqLgNdHWK9jJquTDJ4XaccPk+GUI5GrP8tUo=;
	h=To:Subject:From:Message-Id:Date; b=Aio0My6NuT2NqEwBVLdpJn7yFnwKuYl89XH0KhTjKT3tYVU5LbOIsRot6sjV2K9ovWTihUUNsDmOsAtQvi/VOG+v7XNbi+SNs+6y2FZrpk0tNNSyIFoeV+cq0W6S+aJcCtFwv22ErMOc8ITaBy3uAuk11cN6zaukDDDc3mW2/Mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cRlrswld; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cRlrswld"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D2DAC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768137833;
	bh=z3wLezuNqLgNdHWK9jJquTDJ4XaccPk+GUI5GrP8tUo=;
	h=To:Subject:From:Date:From;
	b=cRlrswldL9Pt2NqRC2DoqC6PfTT/kO+J+yoeIG3l2DHVv+us4TOSFiwsi7yKlKqC4
	 S+16DlVcoSjV1osaGUwTlCbk7w2e2QcVWISBi1ztRTMj5+yne2+Jc7a9m/tCQiy7Sr
	 eKQrhTunnZeHMEiLkOhwS9NQauUGpcyYMz/nC+JweBUvPg1gvaXLi1k9A0nvd0AxxH
	 /L10JAOLtLZfqlJnR/TimCeC1DQV+gnxoEZznfNy4IgR3HMypWc25qknlzKyV2VIyG
	 edvEXWyZffUE2qWHRpHttUerJdUwlsTaZFihbI2pv7aKPgCmZwRt0iS8Kb4WN1JgAR
	 REdHgkDmYdTZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F768D2502F
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 13:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176813783357.11513.12960641995875530012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7f10f6222395c728145334f7e975c48f79dd2ee69c5e82464f248ff314bab81
Date: Sun, 11 Jan 2026 13:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768137833

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3241E2D6E44
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 23:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778454634; cv=none; b=hbbpZNehBEp2BCxyAboOIneGKoj0NjP4TF6YBr9tlgyA1CmynR4WOend7SZk9PuN79S1nEd21zcHp9T6Jw1mi/gOAeoGFixThvhyiOhKFrk1CenjThircnEHHMhI+rAaZzecJwteB3uMMivpf8Mb+QGOmV50Z+5DArYvqEXR+oc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778454634; c=relaxed/simple;
	bh=rywpvmU3l771nNZjU2+Vhys2W91e+VWha633/iCJ5E8=;
	h=To:Subject:From:Message-Id:Date; b=GKGSz0rLXdLiHqcRU3QjEDzze/73VE+Z8sySEKMgTQhi1lQGRMffLO4OCh0kLKNcHmBKJOhezXbBhZ/qSasvGvKRjXDf5fNi0jfym5nTeZOZEO5jkoeqE2HR3dgU3qeEJOeCz2KBuIiWemBU/8zxnCNqtK/kF2rcHqpKabeiaPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P27und2X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P27und2X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFE83C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778454633;
	bh=rywpvmU3l771nNZjU2+Vhys2W91e+VWha633/iCJ5E8=;
	h=To:Subject:From:Date:From;
	b=P27und2XYOH1a9sTDaoLCigw0KPgIQLoyG3FfPeWXTn/h0hfbmxXJ+ySAu4JYGwv1
	 kv4NmMzaCYzCOsjKMjl3Bx75nlmBOfqFfBVd/MNtrlirZDjmSZVu4+vvzEmvq0A72N
	 YaLxYOzYS+IL2yXlWST4c0Wn0UEgbL88W01aBRew4cJlWYAnbMT25jq3Mpq9HeNV4M
	 6FJAdwXAK+5tJFEKbmiiQoZAbXuYidZDbIS/l7eFajJ3Sid+7K3PEylcS4ZA0vNgJL
	 tKCfqvW/4uH1EbL8txE6nbgMjfdYVfDpFTMpt6me6ZXTuXksdREHyVz5NyODkFR+f6
	 CwrvvB3nnQTaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB950CD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177845463369.32494.1849748521691327390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa19b8d0948a1d40d0b6a8e0ba3cc62bd27d68401998d3cc0bb85bc070610406
Date: Sun, 10 May 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778454633

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A694255F28
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788655834; cv=none; b=bbclva2iHXkRb4IqU71t5t5N6+ddOBGcMw6hYP8WHaeIj+4QB5Ct+Imxh//RSkNgqmL8JoMRzWHDeM1yGrBo+jIP8GU05wjakNCKeEtV/Y013pJBBmsWBCb+8pamxuyrX7Lg4aJ7rbXYB9qS0mvO/B8NeXOhjqxOJZthuoSWJls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788655834; c=relaxed/simple;
	bh=4AMzGMU5TvSjcJ77PjOsVxXFvS+j1C4Uc/4oEqbKhJs=;
	h=To:Subject:From:Message-Id:Date; b=CgNC0L15hlFVYepfm2vWLHozyBWJxO8ijbNkiJrp/hny3Ip6kbxT6YNHeZ4Tg/dJTdmvkqBjG0po7PvZXkRS/v8M3wEpOKSvB4jjJLHOJYdqACY0QES1xs/EdmuuScIzpSCq95ZZEsjAFEvTNVRUqbBsKerzOHz/qg457BM4uY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ig3tAkXY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ig3tAkXY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2AEAC2BCB3
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788655833;
	bh=4AMzGMU5TvSjcJ77PjOsVxXFvS+j1C4Uc/4oEqbKhJs=;
	h=To:Subject:From:Date:From;
	b=ig3tAkXYbqhz32YFwly0kHdaoX3YI6zvumakryNx/De/4SD9SXuCvueB4Vd7K/xX1
	 nZO+/0J8g/eNB2OTEOlpqTktB6zTjlXvTHylXJgGkr5bY4hVXrz76Jw7F8aaylwq9R
	 SaQpbTqPRaN8OBrAaB3DfJ9prquBUR5ZCwHhd8V+IMBFvqGhz8PhO0cqs6trHrRBMw
	 3lbP0CzfVgg33355Z+3MvfnqaiJ2i2iyBQ8Pwz/q2EX7u91xG6QYxxTYhetZTG4U20
	 rcSPd5JP05+4x0zvtZwOmd8IcujkdCQ4r3qDqUHN34shx165h9zxZKSvNMWeWJOgnt
	 fkUCedc/7oGFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E2EC624DB
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178865583369.21907.2486591157161392477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57ee3e425fbb29d19fae5bc993a699e85bdff46e9750c3d5ff4b9ffe6ba69489
Date: Sun, 06 Sep 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788655833

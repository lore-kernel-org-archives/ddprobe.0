Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7B11804F
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725933954; cv=none; b=q6g/lbsEIKWEnGLAeVhciFdYLraQN7vn6noN/d3Ti/xkDTVPnGhB2IjZ/IbCVC+G801IkPeM8oRxAoYjqjCblO/PkqFH7saUKbRyRhsDei988CXvVGzP23w47QQtBH4l02dy2lpojbSOoHitfIiH3cwus0SBy6rIkzzAcVD49R8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725933954; c=relaxed/simple;
	bh=PIbWWOozQ8l6FXhuwaKsjWT8Nsl7S/c62QdEs+PKN08=;
	h=To:Subject:From:Message-Id:Date; b=msCaT5TIO1VU2FP0HX8BED5/9Y4lmtLhOVWWViMo6/NwwRioxioStdddqCnUXHCrUBFg5oqlMwSOvm9PjCZu8GsRp4BvIf2eQXbMHXIsoBQc2M1Hm0+FUSx5JtcU1+qzmbpWrmuW1rlFFZuoGMW3hrepq/CnQ+mWoRzLePD68xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EhfY30tC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EhfY30tC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA0A7C4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725933953;
	bh=PIbWWOozQ8l6FXhuwaKsjWT8Nsl7S/c62QdEs+PKN08=;
	h=To:Subject:From:Date:From;
	b=EhfY30tCIHX7Z4KuAMka+KU/FkjTJa3Tb99WQw8V+Vqq2m2W5/prcFrOCT2MYpGT+
	 CNWuBxFukfB6qBl9c+b2PLovHp/77Xg9CauEK2pjegWzcoqOGJ4Bu/VwpbI2cnsQyr
	 PwzuX0e05j5nuFC1T4ngYJhx66IFR9xjpICuawMnfe1ZUVBdy0TPbhmw9exfh088Op
	 +uAeYxnhEaGN9OhvxaMNHFTbXmXmbY9QzhN2BkKJXrsZJQMhQntOdT2hjc5sAf7hfS
	 chgtuQGXKGD2EISDSGvCjfo8RMLjCpzSgoQVrwdCpPZAijo8DrGpuqupDeFDGU2xu2
	 wBWiXGRlCp0eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99BD4EDE994
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172593395361.25949.6170073487416489569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2e1ed051f8035e9396299edcb5117dd0efb08835d14dcc701f11c0f279019a4
Date: Tue, 10 Sep 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725933953

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295572F7EF5
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779234634; cv=none; b=ssfSZcXjp+vNalfbzk9Z0gNhR73iEKIkYgsC+7rVbSAgdgPuPaMC5btfhZWuRNGuvHkmQ8zK4C43myblejVLkhyml9UN6f7rRUyDQGdZNuj+cDgmDxunUIsZRl1ZMQmJlEZfMv2xyZ7HoFMBKEQBWkqdjRWRcoEkhs+oMuOUuE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779234634; c=relaxed/simple;
	bh=D9Qb+3mYtCH9/LmyAhJEeV5kO1mIcg6SLL7YuZ69M0E=;
	h=To:Subject:From:Message-Id:Date; b=hdf8kT+niTTWNHUxRWkBRShs3Q27OFWB/yylTe3gt4Q2r31pjvVqmm3V8k1UqvkKZ9cK/FPsPequVNepFQRak72gjHYh8dy48WpPT/yrAuuGUd18GK6USaUVdZe5FWtsMEs89PC9nugL5D9X5RZ1CwY7BpGhWj+EijZU3BS5Y70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VzsIoidU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VzsIoidU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C95D1C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779234633;
	bh=D9Qb+3mYtCH9/LmyAhJEeV5kO1mIcg6SLL7YuZ69M0E=;
	h=To:Subject:From:Date:From;
	b=VzsIoidUiGz688Hk3nKe1a3ijpksvtHW7xoSGP4FfTkO7a5dqWvDc1Zhr9zzK5WI5
	 SZXzzE5ag09OX8sUj8Ec0UUCO8N1NMTT5qbTChK1jM9yiHhJR551m5GCj9q0ee68kD
	 ABytl9xmFFKMUy/3spGHfgbuVlhkvdss/XKthTzMuEtluOGe4/enqIyv4Ndd+oHZX8
	 Z3fyj51mYWxGBlcjLY0LBSQCnJ3eUO8Jj86uzi5EZ4ZafYugScKu/sMfkZJzT2XvAB
	 EM2zFBb2bmy63A1ZTyOkMpIoTQsVE91pBjUemyGw3Ak8fzzLzihU069oYvzAAIwfrY
	 YM+7H6B8vEOpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B07BFCD4F5B
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177923463368.11925.14647099186642191299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 476a76e6dcb7157b78238b6668800e441f78a04690c94bf6635e7ac9fc955818
Date: Tue, 19 May 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779234633

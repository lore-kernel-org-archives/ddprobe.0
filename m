Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8262DF132
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 18:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775413534; cv=none; b=Uv1yLMRTvS2MdRwxdOkwX4f1MXi12BDSP0XqBP70LpnR5JP/etsaxADOSImGvVozC6XKRJ5kyrlAsEdtnc5HZlDIZIBHTRMDddg+bySobVOxOaug2r57XkJ9C+5Y77FuFFb+NEw8WFkAppnSChiwtL6Fh6+3NLD6yNHGaaUjHNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775413534; c=relaxed/simple;
	bh=L4BZbpBp4BoHErePO5WiBnJ+Ng0TkB/5B5fQ8oS6/Po=;
	h=To:Subject:From:Message-Id:Date; b=LNq0A8nHuRlMLPtrPh26WtPVM3T9SjCUsEJKWcmSj3HPJCucxbGdVfdWmvbYapWM1gcS280Da8LTkzTxsmCTz2cKLpCFokYwjBSAN8gaQu+8Aw3a9kFBuz9Mzsvcu5EqU4/X3LOz+eQV1BDZqdBbx5RPT5Hm7ojS9hKf0Q/HTfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YYQbENCO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YYQbENCO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C28E8C2BC9E
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 18:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775413533;
	bh=L4BZbpBp4BoHErePO5WiBnJ+Ng0TkB/5B5fQ8oS6/Po=;
	h=To:Subject:From:Date:From;
	b=YYQbENCOYDSL/SBHLRYOtgsogrjywc8hgcJhsBXcZSTE2BrHpbn/M3Hi/R7wBvwth
	 VcOvOcQV9C+8EU0DPrUbyMU7ltWri04GXe/gKeaFyiBZqeN0vk1Y+DlYb6kDny/nc6
	 fxqKKbOV/7QXT9Ef8qFCyhXq2EArZWFRKrut+YBMjkV73cvqtk96oYDi8YL/iS8nwV
	 CdXcrjPeWo+mpxt2F/VE0Hc3GXcXwfK2ZcOZduVboKaKG32j+bfd0ix1oKtaUWAyyT
	 S8ObTfn9L7Lt7HJ8nljIqUdzMvPdEzTfWHvoXzuSMz7mrFepzEXJ4IcrpzfJqYFklD
	 1H6E/0AsG72ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B12FEE9D80D
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 18:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177541353370.17217.1176507040563013098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a256d5f3bf540f252b424c9da29fb4964295a535a57d6b2ac69cbbc2b40e92ca
Date: Sun, 05 Apr 2026 18:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775413533

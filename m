Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D90265CA2
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756096794; cv=none; b=jgItd1XkbmzjtQxKNRFHBjCEtaxKEbmEAxOi81NP76qnx3mQv9FOlgbH3kyl8fIcJ9tSJ9BZZXl25vv/G1Ugr15eXsMmmoUsLXdk2eg3dGdsnC0xXMXvX6r1URGV/7rAnLs46krenvM5zWsmZYFYvyoKCU05j3SWOJ9vYMCfyw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756096794; c=relaxed/simple;
	bh=0+28s7jKY16HQcAUC/3GRuhL+r/7SZJG0JV+yeFj2To=;
	h=To:Subject:From:Message-Id:Date; b=A52ds9kIheLFh9Fboe8kaRozxgyNdr1LyOQmaDBUR7FcDOAer6dLW4oL6FRIyE503NKkczHy439sERHJQjOfwAjXSjx5QtXfbvqX7hqFuaidx9yRznOxLaV29aNT1cH+vVE4P+Xv20qApl4h762NNJ+lCXxWYDLXrQQf0IQaGa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mv9AG9Ic; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mv9AG9Ic"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF0CC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756096793;
	bh=0+28s7jKY16HQcAUC/3GRuhL+r/7SZJG0JV+yeFj2To=;
	h=To:Subject:From:Date:From;
	b=Mv9AG9IcsnoMlTzmj2PyJHJx2BK3qUF0CgdaNltGikIM3L59kA05D0N5gaqVeVDp/
	 h6BvDs4/4zlYSmJ20dA805RNYnakM4ex3Q3Cy3IjPlIVmDe78oC7/JsqBki2oKBVed
	 Q+TNR+tG5eXuU8tMFt9KgI7NsFmknwH0P8+SP/bbSQ+F0sMLvah7teNOPkYf1ShAB3
	 tnRkXD80qSyVGi3l8xcf05drqqlTj4Eq6S6EllhY6rBNerftIPfTLeAyTaptbdAl/L
	 j8MyQ2EG8yN+GYY9GCJbEfSmEwZJ/qws0BY+VkjDbuHkAI9hUZTQ7adyp3ohjmeuO5
	 0pZRcVb8VgVxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E78DCA0EED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175609679357.21256.17751922610457870752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61e3c16a82dc3a2a4d0188d01c2cb985f9aa6c2fa00d81cf3912245ccdbea777
Date: Mon, 25 Aug 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756096793

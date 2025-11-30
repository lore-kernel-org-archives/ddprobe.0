Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4D32236EB
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 16:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764520974; cv=none; b=l0xgphx95dE3px4PwEvcOa4kBw/6dARVrxnqJqNCvGMUtYhbaPICAYqzwSrDjd2KY2EmIHbs/UoiV/cfW+Bsg8E+DttGhLKCHMNX39Dnp11CavqxMVBixzHFJMW2oFA/pzhV3R1AIg2wKijLnu87oCYCxwKanUf1jbFvnbLxkIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764520974; c=relaxed/simple;
	bh=QnfksnJa+RexvhwJ9ayWHZX/4hqGVc7lraOtK1vfJxs=;
	h=To:Subject:From:Message-Id:Date; b=Y0UBIpQn0aPh//avHDPtx32ASOf2iH1Itbn+iTMzmtKQLoF/uLzOggnEdv8dMty+KHn1ygg+qRrampMVtjPNaxUtJuTlZvh9sNlnXVe1DxrG2dDzQS4XqtCD7WmTlnInmaPsqJ0FA3o9n/n1mNsywz89Hb0EYJaCLwDcJnb5Fxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mRaCBEon; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mRaCBEon"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4C67C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 16:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764520973;
	bh=QnfksnJa+RexvhwJ9ayWHZX/4hqGVc7lraOtK1vfJxs=;
	h=To:Subject:From:Date:From;
	b=mRaCBEoneYfGvYe9YtzpYYjsmlBLPwBDktlaj42hJBPhCvGeZcjuNledJULQaj9Qa
	 yCtZuOH7VDzMrX8N9vmxnQwzdrkhVLj3Klv0zPz5CCZNyVH58yHCOsbcgBKowVSJXY
	 ngj1zG6Ee6lxul5JohjyRQ0P9o5OWSLoE6zrxzBzJ2XJbSxmSbDxtYXHGsoCT/SdO2
	 M+uFrHVGsTyrSwXndBq+YpkYTV9/GNIB8VeZFIbnTfY+MPLxZKkPAk8R6/i6WxgNw+
	 CcO96jlhaoYoRzSvIYXJKFmMgt4gAPg4XkBYjs43nAtVKX3Al2WL4eBafCCQOxTlRQ
	 uCH9B/p9U21Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FFE3D116F3
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 16:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176452097360.13178.2327590342112052414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d4c5e518c2acfefe309c682120ae02ae6fe859a296498991d13000ebd7531a0
Date: Sun, 30 Nov 2025 16:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764520973

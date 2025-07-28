Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C8E4C6C
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753666194; cv=none; b=WPd8Ctci+zBIe6Hmrx/ldcCQlDpfHvHLc5hNVZP51XuPPOu97QTTgHOz5R2qKtbizVBNpSb7+jHUK5crSUITee5UWeFJkzCmzTox/hZ+x83miwjVWJ9BYTP7Hkl0dpXk99k1Fc7XdWv8yIyse4Zy6Ps+aCYggViSqxnx/T1XIQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753666194; c=relaxed/simple;
	bh=xwPVoNCWX0HChjyVUlxqaR4MOJt2pFiLLNmd7ilSZz4=;
	h=To:Subject:From:Message-Id:Date; b=H41z9Q+W44sKEkXHtebgslEyv2VJyYHBUKzA1HIae3m6q5VzwtaADTFr7bkNriVZossfHUCWso9JC3CswYAXlgFtqqWhmqZKEUpZWMzmEZ9t3Ls4xiJSKwDd3LhBTfJgVTlpxy4Y5jxy9Sx5IMCn0QDjP/aR5dnqLH8LWKeyMtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m+RkzcQB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m+RkzcQB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB38BC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753666193;
	bh=xwPVoNCWX0HChjyVUlxqaR4MOJt2pFiLLNmd7ilSZz4=;
	h=To:Subject:From:Date:From;
	b=m+RkzcQBhTUBU9pQrVcLu1k7/3MRtCsBHpulLouvQwYHnzBBqSzRfMHiHzx3jooi7
	 E/Z0LPIRGLHitnQKWCv2LomPd69OFWEGeBgsOr3HA8ZT99vAj0GhjSPYl0N950LJbT
	 udFpemBd65ZGNXpM3GdLsH1jqGQalLSYHu3jEAFldW0at3II1r5m1hLIZ9vbhQwakW
	 VfO8rYCB5MaXZqCUIBK6H0SUpw6Lh3rz1Tg2ozegsSO9Gh4eAdZs1HIJFyFPVD+f4i
	 EsX4l2Zvyt/wwpLOtBf2z+1YQ0Dt/LeQRaRl5SB/KamJOYcA75wXQJr1zPMn42G9t+
	 FqgiFSDQt1Mlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 991AEC87FCC
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175366619359.2002.13196251402155581074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c640220fa3b064a8bbd8369b8f48caf8ecec634682717ee4148f0df65c42b6b
Date: Mon, 28 Jul 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753666193

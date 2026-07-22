Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2064C369217
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 23:49:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784764174; cv=none; b=Bm8+aGtqXkudrCMzMd0LlOmeTAJDDXI8/nghXJikdPrXFneuXsdjt3NLI19FoSvCg6FC0Y9SzXLOe00Z5wUfXWV2qp3Bj5p/6nKSz4HTYFbde9YUfbDF9m5NKao4Tob2k7yctpMur2R3x2MttJN6U5ba1XBLUA3+vmnxp2Fs80s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784764174; c=relaxed/simple;
	bh=xIp4eRF5ZgLJ6Kd+4A/zPbQ0vhbWS06DoojPsA1SnE0=;
	h=To:Subject:From:Message-Id:Date; b=pF8My/WE5WZVO+tq6ITvORqh3nYetnoOgvOQEQAd5lB/yqhXJU3LvJn0jX2UEovF45ZJSoTo0fIXFV+hZPm+RxaizUY1RwJpI2x/1ssOyzj4l0wjUI6rBuXZhIobvoxZljf3zm4NSQbFxrriNHSOFNT1TThtPkdYxck3FfWgCyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hv4VR1wG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hv4VR1wG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE092C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 23:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784764173;
	bh=xIp4eRF5ZgLJ6Kd+4A/zPbQ0vhbWS06DoojPsA1SnE0=;
	h=To:Subject:From:Date:From;
	b=hv4VR1wGYbFGORKoM+PxufA52LuL6LQQjWAchfi0hnxZwWTjgsP/mKuEACy6ED7KV
	 Dg70ZqaCMkuvOTDANIwUx1I50r2uesmzdyCm6F0LyuQkV4p29dG44LvwI2ZbJglO6P
	 YXYBEzvNe8jOySce+oak1+DfIOPue6yLTct7nM45AZMdKtP1OiErgCfsskrFUto3/K
	 /mVdN/BHR4Ep7lIGxe0v6tNktLHwwMOjLG/EWKOWtXH3e3RP6o5RgFcWXCW1Cy5/1p
	 o2tmawtNqB10rX5bGV77iZ23drIgM66Y5orMSVP/foXSva0IdauKfoT4bXeV68tgEM
	 yott7S1Btx0LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FC3C44536
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 23:49:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178476417368.20917.1682499353264577748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c29ebee096273e8ba14d77983b0194dc34876d7584c13c29c05486639b1c4efe
Date: Wed, 22 Jul 2026 23:49:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784764173

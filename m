Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 596E73E16B2
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788940834; cv=none; b=spWzUqKBCNKfjjqPf7zg9yy26aue2C7JWZNdmSb4ea02zfupb8ZpMPWDpTJ14d7XcFzdxB3iU2FKEaq6S0MbiaXM0ob/717hRwS1maIQCln4TbLfPMpHdEbc/LZ5tjhVZpwP2krLwtqUbYM0e3Re1wY73Ex4392qsBqE7kYagGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788940834; c=relaxed/simple;
	bh=49r2s01kOYtutmP08o1gUTW19McgfTJYQ2bc3Xw/Vvs=;
	h=To:Subject:From:Message-Id:Date; b=p0GFrOJSPmr4Wg1ZN2PN+du0Uv2kUYFMzHLfxFdMSAb9NG8TyjELFW2vXTpTUBwU3O+gRikzZwg7jnV90oIiZZa7SpEyR6a6u+IlxpEa+SaBMWRHYDTIqZkKP7cczYXKiyQHSACdU/ZFAtBOQRBh4YsJsWdiaqTJa5YtJiGNvTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jOup6w/W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jOup6w/W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E69C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788940833;
	bh=49r2s01kOYtutmP08o1gUTW19McgfTJYQ2bc3Xw/Vvs=;
	h=To:Subject:From:Date:From;
	b=jOup6w/WuBobpPxj919YV5YwSiBkT10Zj72OdVk7v2nznvrux5JJw8fD6qtIdCAh8
	 L7vFsMiA9ngPQd+pGdscRi8llDU+cENceY++jfVy2sj4XDGata3qBVJSHeQqUMaUTn
	 8AtBdXU6xL45T+AfgJIbj2dBefstprzRNf7z0Es3GHsF10TKTWvAQjrlPSF3LH9dEd
	 jltndlchhZn8nDZglrN7q/GgQne+2j/xGaSsIQ+/PGPutZct6NMapLPJllBtzEnKVO
	 Juch6Zdgcx97RRLiHnAPVivfXSzt9AxvkjX6rYYZbScUmAUMwwAEuLQYnZXu0qwSS/
	 /FjZFeDBjSLcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B51C79FAA
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178894083368.30306.15297438969148259409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08591e97397799402660d10331c84b26be665e4f03b19a89516911236d9d119c
Date: Wed, 09 Sep 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788940833

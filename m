Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E66F34B1A3
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787535634; cv=none; b=JANHLNyK4EXiTG4B2iiw8dpqdUGFllj6fP3VNEHZKu2T1O0ld9IVomH2tUOEus/7mlauFhSPwt/JwEag7cPCI62ImUXyNwgeqr+Cf2GwZ9pkVJSA+lh3rPflaPr8CqVPxtFq1Pg2N74tU3jL0Kv42nygU17ckB1gS3ChGtYi1dE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787535634; c=relaxed/simple;
	bh=ehd3A0YkI2LPpbsGCw9qJbe/FxFefQRyaWIQInLAEcM=;
	h=To:Subject:From:Message-Id:Date; b=tU5XporXwkoxnxdWlqdA9wCPTeCys90DduQusmlz0b/5aoswSLgM15pfl6wGQeO345RvgZ7Jo7rZyIxpxhg3f9W0+vDW375+OGe7tCOfwr3ozf/b1ir5mB9zE5iq9kzFnNJaY8zSrnXwTbU6H2j6w5O8p+taNsspcRkANjzZnds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rBlKwM/H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rBlKwM/H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0858C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787535633;
	bh=ehd3A0YkI2LPpbsGCw9qJbe/FxFefQRyaWIQInLAEcM=;
	h=To:Subject:From:Date:From;
	b=rBlKwM/H7z4S0WvNtNrzQ9PprXyL7/9JZIR/oVtc8yzbEhuPemBLf+j5FP+UJdZFP
	 U4NAwqMSepRwCjtWxbqusnRigELWEDkucQnCRQvTohPnQQDu1g4UY4lAgdSHkWWo2u
	 Aou69wV9LvN6wuVI/vs416n8ca123W3rMfjv28sTILiWLvpSNs+512lxueqGqnmQVa
	 59WavxfXVu0qf4WjvlNDQH2OIe+aNWYLgpkQz5VcinMATwZ6pSZo9YXfI8DD5d2GCv
	 mcmBqS4wU261DcDWXG8Pkt9trJZDXcZYNWgRhxNNTjQehf+TAIA4bKGOnnuMBfwGD+
	 BMJQCmTksLrPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC53EC5DF97
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178753563369.13534.5063306528295445861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec64b7b46ae7d8f830fdf72986511e6ae9078e103bb83907dcf0784cc83323df
Date: Mon, 24 Aug 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787535633

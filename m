Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E8F335571
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 13:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765891434; cv=none; b=E+YVOOp5zh0PN/9/qIjKAAd8E5gITiTgwDoM0UAWLzaGcSFqcA4zYJ3xI99N4AqEgf1z6tThr5CUyNoARkqqsNMhK+x07qyJSRJFx4FK3n5SXffyciaA/ED05I4Lr1XTWTtqeTn18ydM/lUPIQBAN3cJVypNM+dPxU2B6H+9Pt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765891434; c=relaxed/simple;
	bh=ksxg7ku0HjRTlVtwpBwEFQGMNvnWq6Qh1K5wG62m65M=;
	h=To:Subject:From:Message-Id:Date; b=MgnOGWTjuTigBw2pFrEqogsskx9DklVv1r6SF+tTbvSJaJeNrocANlYkSc/ugXfJo5YowtkmLBm2xF6O2UyI7rRS+pv67wHlonrBq70F+vTA2V3bTSg4t7HYqFIOlm/j3P19hfZOJduQk6jURJkKFnZpG5PkuQT9spsIJ371zKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i1RuWq2X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i1RuWq2X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CE8C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765891433;
	bh=ksxg7ku0HjRTlVtwpBwEFQGMNvnWq6Qh1K5wG62m65M=;
	h=To:Subject:From:Date:From;
	b=i1RuWq2XiOoD/vSkpn6OtnX2Dio8hflsc6dFD5f8WAviexNZnJwZ5Np5wnFtdIgIi
	 diDsVeElGt2qmhloV9AiLqsTddRymY2BPDVS7hYlZ85EBbKqNE/eBubcgiQsItbVys
	 afmnCicoxVAcT7yJDyQwFwnyR42Yi0VqagxqjY3+RY3jgkiDwG0GwdVNlYYKkQrf44
	 mClhFwmzb55odGgUrebNqbU68aCnZu1lXlBXBmFwwGiN0B4RGa/SRFlqBRiB7GQquO
	 w8NG24Ix+y335JtRTLZINV3q/qTcD0nQ4LpqaZ+TGpkirMqCVQsRiPUrEYW14cmjYe
	 XqxD3z/4yt4Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F9DD5E14C
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 13:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176589143358.12164.2636082940870422652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8d441fe5f74e1b0bcefd5bc167c4576f0fc7ee50cf7b2e61927d38bf6e04bd6
Date: Tue, 16 Dec 2025 13:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765891433

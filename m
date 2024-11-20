Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 383CB1A7259
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732135554; cv=none; b=FDQsqzdAnvdHpOW571k0AuyxJoME3h6WPIlIRYpABOnbqN2TW2vlKs5XYRF0SP19iPOwEa3/bG1Tc2AUEzhwxPpBcd8awV3yo/hIEw3hfqr2KLjJTIuiZHsGcV0XOEcJH004fVIFOt8SwiwUzPlL7B3ck1IKKbpgWFiVS9aIzE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732135554; c=relaxed/simple;
	bh=9B4ps/Rcpb+OfyPxC1dnaZboO6iURY2YOFo9sjZROYk=;
	h=To:Subject:From:Message-Id:Date; b=ciC0/4jWc3+3fRs49n1lRbwRJBs5TPk0NCg8v1jl4VnOmmeuiDszT4+wIGNYMFiF7eRi5S3HPVUT1k/Nf37lcCiZ5GDk46JsZq+Usi/50lSmb6XNjxYm81n2lNMPoH6HakA0klRzIHQbZcxxq157KamrOKx5Av+GyNYX0WmmtNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZOM02Gpk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZOM02Gpk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDE7DC4CED2
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732135553;
	bh=9B4ps/Rcpb+OfyPxC1dnaZboO6iURY2YOFo9sjZROYk=;
	h=To:Subject:From:Date:From;
	b=ZOM02GpkwlYUJQE1bP1d9UrxXs24FbLH5HlPnlqkWdEfC/qICvnLBBr03lhR+gvmb
	 L1yBgRk5zy6iMgLjulBUTpV+VGYnbYrl/oEm3RgK1Z9y9cw/dgn+wfVr2ADpi8Hsz3
	 WO0iqZknKPJb9hxRxp5uVsuqBuAG0cqqPgz8xD8WhpBBLH20dBzFEAEgrEhNcJOP1s
	 /mOUZ/mJcZq2CzVXVXVFpe9Gx6MlTjV3ult1b9crQOgSAY29yOuCM2BO4RpD16wRSu
	 Y3h7D6Vb3qUze3dui9NXNqdqzceHZfwK0f1dCMFXlOoZ8Oc+bFWO5qhNzDgPrZLnA4
	 533KP1dqJrklw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AF8D743D8
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173213555359.30709.2296208304050434573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ad68bb8c2e5fd3b6bf777a48a2bfad3e8ff20b201e52e4fcfc1bfc114f7aca8
Date: Wed, 20 Nov 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732135553

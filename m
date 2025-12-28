Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C1C32C8B
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 19:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766948634; cv=none; b=vFcmHJ+vIPCpw+WUU0z/L6w3yCEYOMCfrKzCpKm8MTARqOPqZF3k5fAryntntJvQIBLML7/Btf4DuiGJ9WHcr+ycN2w30Pvd/3yHbewpKCnnPaUhlMAKVC1pFQjfpAISrr/IOqT002py2SZXvzP9KyCz8lXVrM5VWefzpTWhaq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766948634; c=relaxed/simple;
	bh=hqJFDt+Ymir44mIGv3tmHKH3e8n3BUi/FWsgbVEV9FQ=;
	h=To:Subject:From:Message-Id:Date; b=UP/IKry5w0m+A51JYyLwDIeVYf7+fbcKTx9vsjHwz9/xY5BgZSP1o9hoxktaqImnD/NHs6+HOwVQdSyK4yd5GY/G6wMrrlfiNdEhmrdcJWrAMmod81uI+ZRoRV17C5sab93PwEPeNZTNTzYYaE1h7p3+EEGgU9O27Mwro5Z92Es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q36Biqzo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q36Biqzo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76BBC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 19:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766948633;
	bh=hqJFDt+Ymir44mIGv3tmHKH3e8n3BUi/FWsgbVEV9FQ=;
	h=To:Subject:From:Date:From;
	b=Q36BiqzoyCPTPaTtwiY4HOVhmmxmuTIyMt4uYU2Dgg+XJPvUC6Ksy0TPNzL5gsdsU
	 5MOn10VRtSyNEdaHVxtIjZjeEzzyr/cEaH6V/07OBHMG6t52zIVeOq5tJts83gSu7g
	 OswJTgebyDRTetmu5DmTnLl4svVo9+mcC3gUaHMVqnLxUI/Y8X20M2r/20VeY6TFf2
	 FZIIMalCODE91nC/9zdGEO8eF8Enud7YqkCBXWMPAcJVY8oToy4RkpR668Mx3gD+fq
	 QZNPYfhytJP4P8B0LNCz+Kw4DlsEs7Alm/VV1QF206btWIEBLSwCeG6liqZnsK2OZy
	 IGKOud0mGbDeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94699D3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 19:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176694863359.4330.1508535714741080680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e4c94a1b385d399a93d0dd044010ef9454a804a5c0157f68a1b8cf6eb4d125e
Date: Sun, 28 Dec 2025 19:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766948633

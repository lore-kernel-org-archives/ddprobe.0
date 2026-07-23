Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71A4541A515
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784838634; cv=none; b=dk6OFVy+KNco50YHoFMQsFzM1nBSHDi7AtWIOw+BBuyS49dtFU7vIc/6YI571tITUKrNyGjCT/bXcxxpqkwXCO+ROs1OTp03YRzshSls4YgETM0AduoP2F3BPBKOU4sjaYNvkFpxp6vsrhu2jLO3lW04gt8p8NviBxJWcCRjGTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784838634; c=relaxed/simple;
	bh=WOF55tDSgZAZdscqNmJ7My2vUOgfP+BR5Uo7BJEjTH0=;
	h=To:Subject:From:Message-Id:Date; b=tK6bQXSrgSck6GOs2w70ogNsXXaBQQgk7lG2SbqezJj9dE3QdhRZUy3frwGy3/D0DkhMALwRrjXm7kq0Sh6kg9Ec14F4UbIWawfOySwNwZqUWMUhH18HsmZvT7NbH7EscVsQ2dUu2V45oKa0aw1ap+Qu4cOrqZQqh5w1CzxfF3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lNeTcIgo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lNeTcIgo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE8B3C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784838633;
	bh=WOF55tDSgZAZdscqNmJ7My2vUOgfP+BR5Uo7BJEjTH0=;
	h=To:Subject:From:Date:From;
	b=lNeTcIgo5spk/mID4t45MJyyxjfnZXW6XYNorPkGkkTP2PKltLm6tsJmQxbsmm8Ek
	 bigb0VYgwtxgD4/O9sJ8qvrHDumnHMvpsoTw9CjYp2DuOsEktr4AfJwKBlK4w17ZI9
	 7ketl8qkNrhOM0d5Ucpf0piq/UB+CbIzpTfPhUms/PWVFTZSmnbSRShdOUU+DnL3Kt
	 89mixhMNMQ4mtEoUxJeobb/YSjHL/+YXB4OsVJ0yse/E5dvcNMTuiaVqTvVAb3W19H
	 SdN1sjAKUi4KtQ4YKBlcd8oS4nbZGLWsZs6mQ41U2dlnTkJMYnm/mlFWEgOd852vhO
	 cw/DvLfiG4i/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB79DC531CC
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178483863369.25472.17046912059418547936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7be5290b8999d450af8cdfe8ab0ce7f9095af783f271e8a7dd4b5cb60dfd8470
Date: Thu, 23 Jul 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784838633

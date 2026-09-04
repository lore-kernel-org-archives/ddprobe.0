Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5332732143D
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788489034; cv=none; b=Au4/N3WBPgXk+ij0q23LxnSFTKtiy9uEfJbZa3EgiVDZdta6h3Pytfn0EF4UGHpf31W9XkIxvU11QYvlI9N4+HhYa5P+8JQ6UaryZb1E86poy4Nc8XFUmrUk7IoHFrGNTPKuAFbUVKAIaowAgdxlJBlclBPKQT6DTSk6wfsHbtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788489034; c=relaxed/simple;
	bh=xO0ZZUojw2Oj/Y7hseOqqWnz1U+tWZsI7fP36FQYKRk=;
	h=To:Subject:From:Message-Id:Date; b=D1YdMZondu33z7U8te/KRkDSfR0UhEUDyzP3hyOgrEHWl/Wg3UtHap30k15I7r85K25jNG1Ptm+JjbnFpHpv1YtMUnKKSiBXwDA3tbOJ1tNCJ+/eLNn+jLuKvuYuN+yVuuQYhhQYlV1ZoPRbU8DTjkZXABmKFtaqSaK8FKsM5Pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MdiyaKVZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MdiyaKVZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0AA8C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788489033;
	bh=xO0ZZUojw2Oj/Y7hseOqqWnz1U+tWZsI7fP36FQYKRk=;
	h=To:Subject:From:Date:From;
	b=MdiyaKVZ8Ustq7VnEhsfh2RSkrdcS4cdmnUAP2EzaxYJ8nr5rb+8DulsMC+YQYYtL
	 sezXOSO/XeIxp0VWTrkcbjqNTkp+Ifgj+JcLlTusVzaPUzUrvIeE1QMJz9WisVIjH8
	 UTamjePaYLjG/HS6dplE2FtGDhkFEHl1nDwPpIZWIwgHibUmHwnkBpzhVi2xCtNOLJ
	 gQy3owlhW4T1ZlulIwXV8Vf8PwZ13Nn6c4pnU8lo0Hwapixl+P4pEv1m95Lm5qb/Xp
	 yRuu797Z20MSK6A3f7LJnhZDmXOPvS6AJSkOq2L5kfOoAEmYgcuQOQ7oyG47/WCeH5
	 VvQLPKbne3q3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF24C624DB
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178848903369.11485.17903593014326276787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38a721b499adffd458a62a4a37c8364188ce01465929d41dc4c7a3abc1b9df0a
Date: Fri, 04 Sep 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788489033

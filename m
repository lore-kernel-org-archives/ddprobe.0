Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DB2A305079
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762508394; cv=none; b=Mo6Q0Lv2iMWT4IRyC1Hdu1N+na780TFKejWPAEHSoeZGEVmKy8A2vouU8epikZoaMptETZPfQIrQLHguokWuefbdk/63WwpQJhUkvtKT1ZXjA65lP6yuC1oWkVa0I2e6u3rhEHpec1hK/qXw+ZBlSFK0Lg9E2JpteogHCLwxg1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762508394; c=relaxed/simple;
	bh=bKoZsrAjqk/WiEM8i6Z8kcky73YqLtlNLvToTrlfMZc=;
	h=To:Subject:From:Message-Id:Date; b=Uwj4jNeFzA0kFr51sw1OH0P4517DcU8IcJxjtqP+xpOhwYvWStww/1ZJJ/zF2AqMXi+s9HkKpxM4RDK+Nv+8xNAvR62tR9ezdn5hjSPwgX9ixhdF2obWt8s1/0Rq81YT2oGy5+FgW7qfGlMnEh4kfXvWXrvUoYGNK7rkF6SrL3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gdPg4vgp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gdPg4vgp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8BC5C2BC86
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762508393;
	bh=bKoZsrAjqk/WiEM8i6Z8kcky73YqLtlNLvToTrlfMZc=;
	h=To:Subject:From:Date:From;
	b=gdPg4vgp8dkPPNbWvviXOCL0iW+HQMlgoND3hrjxd4KzF7zfNWjb6Jhm9IkZdSNCh
	 0naZasQeaHkvfK2qqUn7Q70vo2o9TRVqfQUpvOwol3UgVowEX3zPPbTCjoOpDYPFva
	 crs0hdLmQMj5pYAG9agH/XZj/8Gbl9mVXT1W05oJkZ+TAJLTeWlMRwG8w5tqRKawdS
	 yOquavSmotiqxNNTMu8ioqQAW/wKEI71oVqEIPuok3XkwqyVSIPPl6Fg143wdFYx3j
	 oDVIKCBqDeSOcbPaWS4zXbKJPojH6RzQTC7bxuPMaXuc81liz6sUrruAcMKTdvt7jN
	 rOzWjQOhDvY5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92728CCF9F8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176250839358.10277.3406814668057638590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d017bd5aa6afdc66d663ad20a6c7aa2ca74d07f22864b74201811d680496ec8
Date: Fri, 07 Nov 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762508393

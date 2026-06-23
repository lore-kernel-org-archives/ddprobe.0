Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330B221A92F
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 12:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782216394; cv=none; b=of919G2eZJv1a+xJTieArEh4tW/XUQhq7a1fpiCQaWhrrcvovd0EKUSpmjxyuJx+i3aYGm5nZUDLRbkI5Xn9j12djg+ZEY6JkiLlzsPA+8Gn3WEZighpSkJfE4uxi544nq62q7aI6xtEjt3PLML9rQuefKi7bUyBRyg7lsK8NvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782216394; c=relaxed/simple;
	bh=femo93V9z31dINEL/U4jo197I1ITdbWMs+yYn4A77ig=;
	h=To:Subject:From:Message-Id:Date; b=bFHRW+dpuO0H641dIqLsRUmwssIGaoNwxx8i3X2KpqYNvekHAaY4RPptgS6ifFMPBunR9guGiCtIp9HK+uEPylJgQjzoImLtum2PJuElAbfqKkSn/HcoYkCAymHXlakCE1pY1TiaCFt8ln1nlzotNpGeAqcuASSpqH/wvjKWPSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rlEHLivc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rlEHLivc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D80E1C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 12:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782216393;
	bh=femo93V9z31dINEL/U4jo197I1ITdbWMs+yYn4A77ig=;
	h=To:Subject:From:Date:From;
	b=rlEHLivcZ08f3O8y303008vJAIr3KKYNc/ROZSt2jUb28/qwfYPwQHxOgOxIe4OpY
	 LP7PaE6LlL8yhJ9Tep7NRi3i0o5vDXQxGckNEqYMJVq2K1dIyyPb30EFjZIMLEPegt
	 Nvr5bd+3JccLn+lFGia4zzFfj8fyIYfktDis2xe01wsUsZuEyv127yubm2I3bUP9dn
	 RAABnIdCokahMGpyUkCbrjQPMtbTnU+838aNOQcviuF6Tc4U5GKwQ3yTkh1jhntiFV
	 ZYes0gNqUwBhXms/Pk2T05J/QMcDBxOAMgWSjofuW7Q2fUjDbebUZZ8Ww5co5j/Ilj
	 LuJv2PHaRPpPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B87AACDB46F
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 12:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178221639373.12684.12340139833599516763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d74a0b54f3d08404a4b9b8e768f20cb923bde3a087a38b8c4484edfb1ce5b48f
Date: Tue, 23 Jun 2026 12:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782216393

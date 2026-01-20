Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E6F312828
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 23:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768952634; cv=none; b=PqxqexppmKkNn4BNMhN5NA8tG2XSubfKvAPlngb5f5xwUKmjx5uaDNKEkfybtCCVgpUaN4493RaUpXR1JlhvvViB6DJ2zk1v6rrpJtvPVfg6uyj2V2TZs8w1l29rPFtK53LHGeWdFfKu98pkTNqQHHPFe4WR+ounqATsl8tTAZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768952634; c=relaxed/simple;
	bh=1nAsDboqbx5/rMs93HR5Wm/bKfJKuBxx/sde6AvWUyw=;
	h=To:Subject:From:Message-Id:Date; b=NJdo2pyMP9cgKpCbL3w7xTwfaedEzNrZMmv1QEXQ7T/he/fOIOeFoqmhHWhTk/FsCI/6GGaIgoB30RtGtVrfAOItER0yNt1s6ryeMhzSn7/Trhi32Du5itxbqaCkDmjAsNGhLRzuen0uTxd526X3XFVS0l+k0fpABf/EdxO0T08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PMkoTOG3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PMkoTOG3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CC1C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 23:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768952633;
	bh=1nAsDboqbx5/rMs93HR5Wm/bKfJKuBxx/sde6AvWUyw=;
	h=To:Subject:From:Date:From;
	b=PMkoTOG3+koWtozDxhyWy4lcO/QUjqyouf6Trq5txYclq6xaFPTIH7BAVuo/JR/kj
	 DXAGMTC/fibd3OFWrw3XPnS+cn2tD3O3PzryA5gGQRI5edZDPeB77J8J0Fp+BLD6f9
	 k3f3Mu+8JT96ecZ9wth/FlYzRakN1hU52GvPwFEJbaZD3XpP6VQeL645A/CUjZM3tS
	 pkfeJ/e2XE3xvkOC1SsqEjnBXnQNpOPMrAQY0ppubyw8qnG+yyEZZAshakIMBVi7I/
	 hPPn8Jl8vG67KbTzbrXzMLZvj6pIjvo5j2n/En5+kgLh/hi38berOECt6aiqkefUpQ
	 PYV2M3Xd3BXNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96449D262AD
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 23:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176895263358.25880.1680862896979937319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02cb564278609fe61ede5dd1377f9ac6d68e78dbbbf28e868ed22f1f1e2986fa
Date: Tue, 20 Jan 2026 23:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768952633

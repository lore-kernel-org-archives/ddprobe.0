Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3C3F336881
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786679434; cv=none; b=rff9EsAqKy3DfEhr3CO+joP/EUt6quyLHoDwgcjexbOmKN8unkLjtTlEarqLrM2nda2OjeZaHYygtu34EBwHikibyt1lGeycfj6QeDRB7Nk0HM2FLE4+CVRmiTAB9cWMoFXJOZsXmia/9kT6NlFOYHgOBNZ4Ia/6cw15mEmqlQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786679434; c=relaxed/simple;
	bh=S/BFGFVDAJDQbAG11DCkeKlSyGEOokOBBRFNUjFojbk=;
	h=To:Subject:From:Message-Id:Date; b=L4IQmSwo8gliLaUOrvDdikRMXRYznZyg/YTilVMyCqV0gOQPzWWcww5srxnElx7Qk5yOC+rtpwSvXZyAbVHSifkoFomTLClnGzgxHTx3AekXnsNhFRqSEiKXRD0xeFw7wQlVnJbSSc23yK9z6IuJRIOHDcwJfGB/68EmkCCpfZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A6RkLrCy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A6RkLrCy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFCB5C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786679433;
	bh=S/BFGFVDAJDQbAG11DCkeKlSyGEOokOBBRFNUjFojbk=;
	h=To:Subject:From:Date:From;
	b=A6RkLrCy9AtkWQ3424SAJoNk75U2CzKdMvQZN700tX0qeXukDwFEurqzaYKmetMtv
	 DYk0+/xbzAWDRDh/ooH0SYWh6+I0snPV23TnGg2gMd5zG6ECt/zybuvs3HzZvX6Ga7
	 5hYM3Zrd7EVXvE3Z/pjSUzFPhF5f4VyWms5nQ40Z1YXgkFauxjfeoZ8JmqlTKBMXZT
	 Jpl4JXG5QHKuQymP3dmu112kN22uB4YVyHO+pt4ukXgi9Zrs3g8L5l65lIRXMDCI+U
	 oGFDSG3qnOtPaYD28w3fNNJhRi4mk7I9s2x1n2s3wOYIqcbGdEo8Ze1R/hd0xmA5c1
	 zMegBfi1FzPZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE110C5CFC1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178667943368.5452.2120572370443243344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d20bdee8f094d8e48c6c203a2ed6628c16377454d7fe1035b2f491c9f09bd09c
Date: Fri, 14 Aug 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786679433

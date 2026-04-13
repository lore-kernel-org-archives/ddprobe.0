Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F16A624DCF6
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 16:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776096454; cv=none; b=LEA2uCZR64bOFJRz/KgwCN1FxuUe3o8abkxPnyMdrr8aAxDbAIVb92XpNPWZqutSf8fNopeKpj1fXepw3MKvYu1o0KpGvDBcHi1Dch9NdLD9tQEAcuIzVjcfYW45yL5LHkyryRhyjpBc2qyF3223AMaa37xyt+INhyvYLniwYzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776096454; c=relaxed/simple;
	bh=/BemqFRDQZ4xfwdT7D4hCArDWUvnptGM61htP4g0Jwo=;
	h=To:Subject:From:Message-Id:Date; b=o/75DbuJ65GoQjVSPE49VpuHQF2nKxWjb21PzMez3CKEy7vJzThJ7kpwf7Zx9ebkJ1nxkgt2wpBApLUzsGiG1xXza+/gQBfc6nS8FdXWZygV00fJraK5EeaYlcyzC0TUqRIhN5TwvI6X/EJ5lrdbWzpSnoe8g0ietJtG3+29Oes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lQjn7Tnj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lQjn7Tnj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBDBAC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 16:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776096453;
	bh=/BemqFRDQZ4xfwdT7D4hCArDWUvnptGM61htP4g0Jwo=;
	h=To:Subject:From:Date:From;
	b=lQjn7TnjRVVrTo4QtIfqkp5IdvboHwx+DSrKjY2yAQtMJel1ZaLmfJ9SPb/45PG4d
	 4l9+hdOWpJHxPRpX7+nXrJxoupQ460AM6RoJ4YJoZRejnxSnLMdXbB7xoivPtL1pFM
	 2kUFhcITcvAkGLDLbfcf/XtHBOLduIgiE1x9Fp3b4naaiBKEhqZFuzPrORsd3IRemS
	 aUfqtNJAUL+Jgebv9ugM/3TRI6VVZGS4e+xmSVoDjRui3nsUAJAmA9LjEQ8yEzpyYN
	 02JR/RH0n4OnghJlrCfdfpiJC5mbFsPrBJPEnM/hXRykE9NTN/J7bmtuiowvKEWfnF
	 2UMcsgGresCsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBE8F34C64
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 16:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177609645369.24514.14850140313009227376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 619be766aafe9f28c2746d0675d5ffab0bc6dcd052dbaddbcc6a079dc8aa5c6b
Date: Mon, 13 Apr 2026 16:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776096453

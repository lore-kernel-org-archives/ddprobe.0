Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8928F4BEE2B
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791826234; cv=none; b=GuLK8eNRq+i3GDoDHnfAZP+3FUaFCfyxz4ixXVQ3OV60VCvr87Xs0IbPmlfZ+rwPYKBNckGCLaOevQdWjUyeHtam/bT6qroy3QGuC6V2RqJPyju2bFdy8cArqOqXwiqfPwzKHCMvOHMVp5rVUJyu/TSeVEQf19KTiZZcjXQKoIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791826234; c=relaxed/simple;
	bh=/jniwrfxAmhVuggfRowEsGuw55UQWOkYzvIb9C+XiJQ=;
	h=To:Subject:From:Message-Id:Date; b=AcWnb9vwpNmbxkHG5sm52mUv+ky4eqMfImAfJs6Y+DaWphI+vguk3CavLah6QUbFo931ifYUX+FhxVJcmvXkxCYCwfyauFBiD0Q0ag6lb9Re1o8avWsaeBhekknTM8FvtWdmtY7AdD5umc2S+JehRb6JlEtk5R+K7z7olBOAjdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bVXaOGXO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bVXaOGXO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1926C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791826233;
	bh=/jniwrfxAmhVuggfRowEsGuw55UQWOkYzvIb9C+XiJQ=;
	h=To:Subject:From:Date:From;
	b=bVXaOGXOYhVVFp0mpV0/s/6Y+zhr7WPFYtIFUugY5d5U1BHv3Bpr+FFJj2lwnS16u
	 EXfTYzJxQpa6zmXr+e2Tse5AIYt5Eb35z2xxSef9uvZjec2zYotz6dljzBEskeAoSb
	 B+aycMWzR+L9S2K+RFB7sSNik5Ur2jv4LxGJAEB0m0iBx7aTsJVai5S+ixBvexsfcf
	 HyAn2Jf37jA7xvRoet+K92FKjLcSXnHCRUIi+qjQGoEmjqTvdJYatuQvO2bftY9KEz
	 YuovXKqT/aLVHdNei2AsQjqgquCkewZw50nDPAjwLCka5+YmG+RSWGZ3EtZsW1FA6+
	 QWq+bghDJVFVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC6DBCA9ED0
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179182623373.6642.3752921636687937466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12a9ad75441f28890c32b55c01e2df9aa4661edc7dcff30e25b9ac58281c6516
Date: Mon, 12 Oct 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791826233

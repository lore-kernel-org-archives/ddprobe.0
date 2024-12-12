Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4516F1DED45
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734047754; cv=none; b=UKS5w5b8B8QqgL3yrVnuJj1n6Vkz66u4khWlD3ptHyCeoRhEeomff6KCc/Mj2hfZ2hAFtCDA/1C8iBa40a9A3tS6rZgKh3w55KJF5ABNyg57oKG5Y4GRJICz35qg3Np8jvDURwXwtMAr+3Sv2Za5uw5kTPXDSrzKGM+FVMF25XA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734047754; c=relaxed/simple;
	bh=88/bF6ohRdpRk7Hn/Zvoa9JNnmxoSM8kKt1l/HrWHYA=;
	h=To:Subject:From:Message-Id:Date; b=OY6k8BQpgC4AVsO5AAXQO6uXwzHSbFarUoVjunnT0U6Tb9wFMTQGvm3Y1i9mY0RffV7MXuea8KCC9dViZhwYi5Xh4BxX0A8Ubuq5BIm4qi3rFDoIHQGlCIttGkure+Db4yoNX0QNH7YKCxEhLgAOpEo28ceWlE0opRGQN8aIa4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CCkRBguS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CCkRBguS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0B79C4CED0
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734047753;
	bh=88/bF6ohRdpRk7Hn/Zvoa9JNnmxoSM8kKt1l/HrWHYA=;
	h=To:Subject:From:Date:From;
	b=CCkRBguS0vUBOImIWLmDI9VfGpeVwH3X6DFzogziZwp0ZDydbN1m9ZiWFFVTdxLM9
	 P/N0DhlOTJuylmz1DMNOZakD/pbKTyKEt7q1/HXRNyK8Cu35KRiHplGvWBH9JhIqKT
	 KFm7dUur+5Nbdq0Fs2dSb1uwTqoDxc+CsLXLtBi85exjuTAm21ygV6z9CnEbH30rEu
	 6KqpLZMPyx8C3MmDagaoEx/YDYFMA+QpkF8o5oNJ5s1DGbosyQJkJrnxVPHoj/5PHj
	 JqNJobHHlhXun6EXoe2qBOOeBle1ZHhC3+6/l/8/Klyew8pqXpXMik0hyQkWEivmUj
	 s0VVIlsoknz8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7D9E77182
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173404775369.10143.5227010377244129070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9090b9e04e6b64cd7f211a5b40a572223e5c2e66fae37fef308a53d2d34de5b3
Date: Thu, 12 Dec 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734047753

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF918405C
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763072394; cv=none; b=pk2PZfezK+Kcf4i1VfQo+mcE6pb1vSC1AHtlX/EzBsQjqUBmW4XOTs8XkLp757UBviaMMIKNBA3gjGZWGzbyx60DS2j1qQD9xGWrqigiTaMWWEDosQ2mlNolfQkyNCRnAP6oB6MfSQGNEwpXPn6YHu4Gm/9+FNIIii/0q+01CG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763072394; c=relaxed/simple;
	bh=OznJBc7rZeBMWTEEmj92ebI69+XkRCRDy0QLfGzMPiA=;
	h=To:Subject:From:Message-Id:Date; b=O2cpWQ4sjtkytQ/SIetBc5rIuPhrrmcsLYxsg8YhwSCvRhxzUXwom7zj1AD916wZoTKqkW8xPQ6RdkNUtjhkKnMDUntgcA3r6aKVW1kE2TNPyR3FraDn35yuyVaMkq48NSS6Cb5+ZPO/DXGDAeK1HO04KRVgl8LTWJjpeJem0ac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ABXuN/Lw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ABXuN/Lw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C1D8C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763072393;
	bh=OznJBc7rZeBMWTEEmj92ebI69+XkRCRDy0QLfGzMPiA=;
	h=To:Subject:From:Date:From;
	b=ABXuN/LwQfJG3L21fAbWbTcGjfEjHUvjtxKDbtPU0y5LGoc2tXcBiEHVzLigt+QPX
	 K2EpvBj9RCFagcAaTj4jm2VH2v2AjsjXYwLa8I1YmVX94XzGBzDDA85OL9MMEvntU6
	 Js7ELqACiFQbQmzUnW89QT5TeRYoMSSpuc+1y02satzVVL1KHi6MsBoVYAYv2qsCow
	 LMgll5fo9Gl6oqB5wtbt1uAvfXRvXnp60wTN9o6YCco6WHRqIf5HYpJkR5TDquhQgu
	 /WJRnqajC7ml/FO6TbnZY3zsprSvWmjkOrVQMbtBnDTE415y+XpQRtUrKDsyK1O5qg
	 QlBqMYM3BDAdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90216CD98F5
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176307239358.3683.16460391951744492549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b963b3110dd6d38e0f4cd5ac361837c4e47cae35b1c602005cc99c1da22034d
Date: Thu, 13 Nov 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763072393

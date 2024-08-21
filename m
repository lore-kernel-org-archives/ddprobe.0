Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8E0416A94F
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724283353; cv=none; b=PMoTeuvh+IexV6kuQcT+6sIXcN3BdF18uPWpEoClqGu+ISqZ+HHjBSB17W81d60EZ8EHysCO2GBKekeFU8iI5yK7BTZGncE1YuJSjH7Y+qP6jdcx9EyjpL5j6DdV1FnO/1yKDhWnAAlLxcNvxPrKU76kka8ry6xRWPgJHX827GI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724283353; c=relaxed/simple;
	bh=somZxC4D9/VqFKgRt0QClSrldVuqaCiB13xMtz7AUDo=;
	h=To:Subject:From:Message-Id:Date; b=HAMtGAj+HdLxOGTq4h2H2rH2eyGMiEU2sTjV5kTMEbSXUQf1FNYOGlh2vaP7gYwcxkJN4eYvg0JZ/IJcGTkPwHOR6kF9HywybrQlSPEg6hBJyVybv8JwagBuFqKifhgyv3gYlMORSj2lVuYe0KHz6Hu1OUCShHU4E7ekbG8isnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uYZoCwdf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uYZoCwdf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57AAC32781
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724283353;
	bh=somZxC4D9/VqFKgRt0QClSrldVuqaCiB13xMtz7AUDo=;
	h=To:Subject:From:Date:From;
	b=uYZoCwdfuG1Yjklq4AmxWiEFyOJ/7Kjd+DLz8n2IW1esr7q9goPZCdAJ5XpIrXJEj
	 YXNiQAcYLVgTaIwC2GfkcfWFUSu3MzDShcgD4+9V9FM7+UIEc+ElZ4qPJt3wmmiPqL
	 9fhGFjko6fGybFK2HQ3+qAAjYYQrPAG3pB1Z8S95yF/bI5cbnZYFlqvVTZK1M34Sum
	 nxAu9Gxp6lKU6JTJeKDUJQnHN9/OwNrfz4FCk8sdww7kMnfH91gZhr20H5oqi5mvqD
	 Moc0w5SVtSJuh4k1cmvwOJGree8AzGouXEWku2XhPpwX+0DJaLvot9Iz/LxQdfDEBK
	 ldrUMfPFRHjvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F0CC52D7C
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172428335358.1204.5409171307558201401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3e31c16deb62c58b1d38c6cd1308694881719c0287d38b3fcfe2a099773f8ff
Date: Wed, 21 Aug 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724283353

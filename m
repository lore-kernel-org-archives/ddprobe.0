Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54A72AD24
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 03:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717212863; cv=none; b=uN+IiIYC4I7GmlvDchM3Z8lwr3eQBIqz3yt/tCY6npj0cmNs0KM98lNGzkWaccQdtp0W9eZnDpGdWWTfmad3LT1ZYs2XHnUAWgL9EICw4PgOxp1fkpDq9Fjvjp4AWqWLNhe5mGJUkSFDxFvBaDnvdMPD+9WHnhMurKeHhGE/bOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717212863; c=relaxed/simple;
	bh=fPl9wcfkK8iXJMX0gKpUosuFVMo976ed1YWzg7iTUGQ=;
	h=To:Subject:From:Message-Id:Date; b=Puwz+wtkmFghjQXZ+P3PRUvXtbNb1cL7qLjnKuJ4w7EmLC6BL/GnVKU0dW4Dg94GkgFKmpZ9XgWVDFqumKGTF5dMbVwUwUQLgA2QwjmAWzcIm7pr+43cTFIlkZLKOKapmXawu7IX5o7He8XI2zrxT2chrr2UXcsYJm9tDwm584I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ANyTg8Wq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ANyTg8Wq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB580C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 03:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717212862;
	bh=fPl9wcfkK8iXJMX0gKpUosuFVMo976ed1YWzg7iTUGQ=;
	h=To:Subject:From:Date:From;
	b=ANyTg8Wq6wOBaFU33slDsfGLuHryRzwNF9oNGqox66Uq9Ikf1oZ3QfHMkWjVAnGP4
	 TUZyNkod+T3hyH1w/7Fp90uGQ96SAUZD5pCNuPMKBqtHco/EE63+TD60EFNAVqBoZV
	 9TS5WuUGhKGA+H/XiglETcmQP9hYQ0mgugSaEyOUDxcFvddzeeplzvvqqqpRL/isvd
	 r275N8KkLM3SqK78sh6KYjGiGGHT2LUhAAi5sthZ4Kdtp2fPyAV7PCGfbiUEYrZh7O
	 6joxlU9ZhSq0DTOY0atUcY6o50DngOE6TpEvfuGeXmNOe//z6ATPIKelvYPWOSFLSe
	 cVVFBtXM2bYfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C47A8C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 03:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171721286277.18211.5556127406268050255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e067fdc5557c1c200e6ae386d33fc7b9a7dc8ada53a100d0afeb501bf790f0e
Date: Sat, 01 Jun 2024 03:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717212862

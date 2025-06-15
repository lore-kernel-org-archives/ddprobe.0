Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B50028EB
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749953994; cv=none; b=FkYg2t3ElwQ/cKyFOh/REtlLJqTtaXT/HtyJTo9zGT194rFjtAFYiy8HFuTBaBLsx279QZ5Kn/dZuppRHzCIdYS1tfdj6Bs9YBN4dFGc0f8nQod14TLspeOCzmSByM3h64gDxsW9nTy7Ughnfrb4zsvNWBHhxyrS9MnNB9AhptA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749953994; c=relaxed/simple;
	bh=Y5SgX7UTBTTe2qLjo+oFGLQJarR4+KDavhLeKfwaPtw=;
	h=To:Subject:From:Message-Id:Date; b=jPPrgv1NosH1m+7EUG9s4wGJEmCkkJ/flhjx9wZwJVbwwL4ykOsnKJPI875MR7EMTmMMxGzByUbN8CgLzjyBA/eK+EwPOXoByHy9L4IXUnAvBvsI3aLQHFp1oE8ZN8K0eGZ539tEmOYgOnD8TPcayKhoyJP9m9UNTU5+QAzFjE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=miHox57d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="miHox57d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9651C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749953993;
	bh=Y5SgX7UTBTTe2qLjo+oFGLQJarR4+KDavhLeKfwaPtw=;
	h=To:Subject:From:Date:From;
	b=miHox57dBbqlvvB7LS0zq+ggD9g9i3P6iiHRrZHSJjvp+Ijw1ClAyfI9D/YiaF2B5
	 RrI2lImpst38kPO2z+jRz4RvbQZZX0Tk3sDtxdTIIzdUDyfRWjKQ4nQIcjetUvMD+W
	 i0hg8y7Y/Qq0uoMtWefCDDj1xO5pcFGBG46NBdw5KkH3ePnSLmqtcc0g1BL26RLixj
	 jnHIEU9YEWk71zTDd6+DAn2ygwgPc/h5EAhkL1+KJ1JE0UWzlh2oyt6LkCexM74iVO
	 kn41UkAL3i54QPlJ4+Id/d7KaXe5aeAODviDnR2QVNR97OJ4Ehpw4LjifyZ6YyIqw6
	 WO7C2HhLiNKAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93425C7114A
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174995399358.25306.16609358691175637619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 901394b6d5b74f00aa0ad81ae6bf29f3ce50d7eecec2711dd72e03f9273170c8
Date: Sun, 15 Jun 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749953993

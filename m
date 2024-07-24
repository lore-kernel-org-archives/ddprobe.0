Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 428E818AED
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721859354; cv=none; b=d4UI6rXk2/OE7K0GdGXeIKTe1m58HuQkgAZHCKJHhZMZ1Zx6JJ6KxniW+h6Ej68LXFdeVm1TIFW3urtC1TvkBRrR/A3HhlrB8x6lpdN7IdMSotmaDPXShnfimP9R7F+9NqA09Vyo0mbNkcaZkzDWShRT3arvvskhBBynaCx56Ow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721859354; c=relaxed/simple;
	bh=rS20olCP9WhtCGPZBcS7LL7AmzmG26jB/PUgWs8cbvk=;
	h=To:Subject:From:Message-Id:Date; b=EnZYmJ7jSpImKcbXj+Cs5pHNrZ60mEBgEuUmVJwMeaoJUk/5htE5lEJiVuliheOzPnktSh6YkxiGgWB+ZG34t0bRujVtGOpZFTarp83V/wmZwxMOMEnNAXqczAeyKAsioa2ouDh6X0zSLw6eNnWeOFVxAKqjnJrht2ye2Vv7W28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Od/fUKN0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Od/fUKN0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE274C32781
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721859353;
	bh=rS20olCP9WhtCGPZBcS7LL7AmzmG26jB/PUgWs8cbvk=;
	h=To:Subject:From:Date:From;
	b=Od/fUKN0qPru8LiYcGNfuaPDcI6gMnhoMkiONl+UXMPk1bmDhf1GptVQimemhgBVo
	 p2bD6TiOBOi9swguI+H8p2/FwpWDWZe09T4/9eoOBdk5uJ/vRviMjj3o16CTfPIeHM
	 ovgYCy3FtSH5wXwFaMEy4nft+DN2z+vMQ8k/Wz9ns/pd6qt487wi9n86uco7SiG3X0
	 zM7AzHLz6siPvPxoiVeRybyyeOyLtVRycbzVgFch/OXpdqidY0QhD2dE8ITOAhCz1E
	 M9ZXSrjXk0AJ5beExyASvGmMpbCnXWek/UpHxJaV+3o1RidTxo6wB7SxOSRXnlZgLv
	 b6cgjp3TfXB4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C95C3DA63
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172185935361.19744.618301615210698059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba7e351378156afad80b65ecfe9519778b59167c5eacbd593892d577d67d39ad
Date: Wed, 24 Jul 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721859353

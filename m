Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31AF9361DB5
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792137034; cv=none; b=h2X+aDDG/zR6SDpaigLFYF5jtaP+imHvJMA97wGy0TTnFX3iLAYVDuoRLS06RyLmDS1v3PP5hVC92rhpBrwYTbiUqwNbm4gmGbNL4PKmzOGB09pEwIcdh/t1g+4u2DpJrFaZo/An4jkqEVoB8ihW6g2/4Lq0mloXUZA5wvlxaiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792137034; c=relaxed/simple;
	bh=C1RIOZLtZbSv2nNxITJJG7g4E3G8FRuwy39NYGXz2UQ=;
	h=To:Subject:From:Message-Id:Date; b=JtlKySbKxP5RKAujryQ1rHq2tdnI8IlVOUYPSdxiwVogZ9527RZS7XrirwbMjj6md+1P/OvjX2XGx/366MifSwlEqa3MrOKOV/2G+bOvNX9qYaQuSe8IXvAmRIIdA/Y90HroOqn5wCWiZWdmI1BweqsAboX25nx6LON1ccVQO+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P5EZRm+H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P5EZRm+H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D25C7C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792137033;
	bh=C1RIOZLtZbSv2nNxITJJG7g4E3G8FRuwy39NYGXz2UQ=;
	h=To:Subject:From:Date:From;
	b=P5EZRm+H4qTBLqa44TUtBD3Dmzy+DnQbyHpbukazdP+RYTVGLR8EIlyuPRdiHQFR1
	 kszTIxlzfcgwgRqil+uDa6Z9Mlvm9Lnyc0bgK7PC+vaIReK+5wcCzVEir0rdZ2mVB1
	 2YS6V+aT6kez0nGpZGCByx5av4VdIsqSox3ZvVuipf9omilNMVN4qNLfYPpNdrYumy
	 rCg02s59ErXwuLlpocOn4NwwA0ug7ozAJjFWcOvVKlaQdOuY10rOAbmgvrpcGSq3XU
	 XEzzCp2y1ghDTIYbsGKp6zx0nYcJ9eqC5VYnchvdkecfEH2qppVJVfbEnzwYaijtT2
	 Ey97jiav6IZcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0BECCA462
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179213703369.27544.7157479210991512734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f9db556432ae91504b387c4fe2d08e999668b74b65f9da410f88bcbd36110bd
Date: Fri, 16 Oct 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792137033

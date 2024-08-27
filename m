Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38EA73A1C4
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724740554; cv=none; b=mjV8ip7gQsF3I2t9/CHImzYel72UgQPC+Gdg9cGYPlKxGiYvBF2UsuoW5QnSTAl/34nmhjXhOsweZhJcnmGMrA8tU33i95JlSJVm4M6rICK7gcfn1seRwOE+n6ix7Qj9zoObGVu5VW+bSQGUZnlRcd2geJXKokAu6KxGoqnhnwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724740554; c=relaxed/simple;
	bh=V0KXKR+484TR4G3ZROlMwepsMr5UsUowHMK0ZB55GHo=;
	h=To:Subject:From:Message-Id:Date; b=Ir/uskicmtSy1vXd16xsCXvGLKeyVquaNo+x5O4210XKn0109xDyUNaVbQoW6QoN4D0rLPgoOqT0gFM/jOC1sHGxGQA8Q8tIRv+y+v3xcfF4QzqnDJnyrQ0I4QSkBmGQQcLYLbk2l9nbeccN9LSzq9Qf7EcIlz1Y2wS2xWWqQPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CpSBi409; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CpSBi409"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B32B0C91B7C
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724740553;
	bh=V0KXKR+484TR4G3ZROlMwepsMr5UsUowHMK0ZB55GHo=;
	h=To:Subject:From:Date:From;
	b=CpSBi409phhAXL5sMFr7GqzIHXBc0oAlMays8Z9yESq7CnG3QaIiCxMUICcyv8K2c
	 hDVzEVoNyZwRCCCZN78TtBOqwduGvEIv9zz+hiRAfC1e3KmmFBOgiF9oAkYdpymcop
	 dzKvnMrNkyfrrGj7zP4jfKy1HMTqEJ+rTHhHLcVHp2lJ6Z+w9qkVsDOckW7y0yUYPJ
	 DCunxLsQv0W4TXnineaw9xp9QoSYKvBjDiM4rLewHpH9uRv3l9U/xlZ9ihb9stcdF/
	 p7y9lkIEi52gbcPCESBWS7QLrGRXs0FnjKQ+3IGicglh47RdyNT4B2lXhYnhczIcZt
	 7KIR9HkptN70A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EBCAC52D6F
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172474055363.30600.13258645398362498474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19a99cfe08c587deec2829d0664700b518d1ec5d3fdb52277b622f11de642256
Date: Tue, 27 Aug 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724740553

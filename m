Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384551C6FFB
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746958794; cv=none; b=bIUj8uERvdGbzlPHnsyWJUc0wUoCYq/Pcj9jgwtsLR1GIoCYVT/shgZ6ZBLk88lTcQZ/aqfSS43hTAXndEDnWQ1/Q6Kxyua3AMuy/KzuJB7EQXE6CqiV8X9VoHh/j6gUcNk9l7ZnLfLVN7kMDtm0x0vnzUdlRs64DsaIb6Fd6Z8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746958794; c=relaxed/simple;
	bh=RoWKRdJXBkZ4x2uh/bjzfoAhmO+YCeWFA4QzJPg65SM=;
	h=To:Subject:From:Message-Id:Date; b=rDGlvb2Y8qRpjeKxhhN3q+/WHAhzy1umV4ebYJjstoj8QIIzlGo5K33zInPE1t9MleaQEo/SIGFnX80OAdAORqnTngVnhhgF1WrTqv1461r9CfdqzmqlYkwP/pcAPmRM5oE+OZqdbVJ/Njbzup+zuHH70+jhYT6ktcNvlnTkF/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LgwMf0CZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LgwMf0CZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61FBC4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746958793;
	bh=RoWKRdJXBkZ4x2uh/bjzfoAhmO+YCeWFA4QzJPg65SM=;
	h=To:Subject:From:Date:From;
	b=LgwMf0CZ5eR8s6p4ab5NjGSWrIKq+A2PhoxR5yX+lmVeBqFVwQc0evkyekDtMpaRA
	 d+LJ82eXyF9OmYgteQMVxERt+v6gEWmWl1A6r/Q3tPaF6EQxuYTPzm+Hxela3Y/O93
	 8Yxw0uG7jbKN4AMlTA2qNJ3LdFKOcogkyBbuhIKxJjUFwl9Y3ermqGXfbDLW7HmV5D
	 kvphcfOosoKqFBE8soNcbl9aNhTK7C03kzMiOqXyrwSETw4vC4zex1uzHAFWbPsO+D
	 lJ0p9Bl0aXFupjHd2UlpItCGfbdOAA0EsUjEyE5btjqiIeJhv6Et5w5FZdW2hrI7AL
	 gTn1FMiU5SDew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F400C3ABC5
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174695879357.522.14227974015225758392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ecf11f7a9daf9309db8b51a1d0795cb8015d81152625fd4ad0bb46d9fad347c
Date: Sun, 11 May 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746958793

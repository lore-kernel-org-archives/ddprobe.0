Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B59127FD76
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788242434; cv=none; b=ZN4INWvqD4Fk49yUQ3sGAiskIIJaVZ9yr7OlMPyU8dhiDj8Rr49Yxn+PRXYpf0TIpfzjOzTuJGLdlt0iHiSXLIBUTH4vNGcyuObKoYESjslAWBZjwg9G1kq43AR6R+bQLfb5UcA4XRQzotz3Sa+ga4yON4+1yDPK4JVhZsTjcNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788242434; c=relaxed/simple;
	bh=sEPBC/qGLeLMvE7LZ2X+/xOUqxAc6nL2rg8bfvMtUvY=;
	h=To:Subject:From:Message-Id:Date; b=G148zk++C0xBiR3782PJbeFxF1GIhUWXZPpVXH2uIim4mMvq/zVwWA5nmie3oT/xhZltKySFecXN7beL8CIQhAWx7qlsxgBLmuk6pDE37Bzfm4cfQQNb+l8yR1vOwTkJHjWGPeTu8i4/dOs4fkhcreJBZLb86mcB32AUmg7vG3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ahQk7nDQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ahQk7nDQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF32AC2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788242433;
	bh=sEPBC/qGLeLMvE7LZ2X+/xOUqxAc6nL2rg8bfvMtUvY=;
	h=To:Subject:From:Date:From;
	b=ahQk7nDQgVfEMhuFaQUgD/oBlYJO+XlMqHvgkKZRyGr/hU/hETYlJCmiUI36t2cYm
	 BmOSk6Sul73OudTHXqyAg7V3z4n+TwY3jgwHvs91DEuxSj1LXSbhWylZoflBI/4Nw9
	 Y7sYRklwsOWUJPakxzDcx3gD5ssgo64Jl7CsVv9/L7h1kixFY1b8hBIE365hjSJeUu
	 kbeMOi7kcbzTmS6xTtgIK2Todnt8iwHeznU+vwEsb6zT3T2v2jTI7QnaY6JEoklQYh
	 PzY2I5oF3C3m1Pursul/1rJPb64hUBJHzabpd7xiS3QgHxeEDBOT99h+ESPUVe/rkD
	 y0zCOzv4Owm4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB822C61DD6
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178824243369.4350.7582781391091248125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67ed1a4f16ef757c1f16e09734877e09c82cc3d1458e9ccde509a05e8ff69891
Date: Tue, 01 Sep 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788242433

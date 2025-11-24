Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 190A432E758
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 21:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764020574; cv=none; b=f0S5xAu123q6T0QUe5y8Tc/IO1coZMJ7aikGhfRIjTvyU/jpU3tNgQR4X/HRImYI59OoH7EDXG07AH0yszxHKGGn+FKLVLT4jfiKLx4xwGx4ln/0TiXMq8a/fwYl3a65evgNR/n2dXvEEA9Yvo5mHtFX2UDncM1FteMjqAqV29U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764020574; c=relaxed/simple;
	bh=CuygXEjgTbh31IfpcKZ/lT6taldRtXs+5vsSO8ZF6HU=;
	h=To:Subject:From:Message-Id:Date; b=c7vR3XCUOB+fZX9jFLNL7jlUAw2IL+dICZtKpRbgHcvSOwlXligCRNPmwyXi6zG3a7IqI6s/4cKU1l+x16hvyBqc5h+S4+M5IyysaesF8kXNAP6IFRSeFnrpJtAu0jbejjHZzTI19ETGts1savjWVtVpeXEdwNKJ39oW/bxA2eQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gfuhsxut; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gfuhsxut"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1582C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 21:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764020573;
	bh=CuygXEjgTbh31IfpcKZ/lT6taldRtXs+5vsSO8ZF6HU=;
	h=To:Subject:From:Date:From;
	b=gfuhsxutd1GsKbGwIHsZAm9OeKIdf6Bpx+hmqAZ7MgqrbiWPaebf3Ronkqb4KrPW8
	 LAG+dv7/139A9wRg0lRaSdstcF4aIXLxTgxvuarHMIBE+hpk9UWnNXzmLJWZBOucBP
	 qV3bpg0VFB9LbTpbpwvYrdEei/pY03ypr7pTwovmAJVXoXSCSY8Dv3cUwlAfAvXW48
	 8otOAV/4r5ziy8Q4mvIRAStxVoLdPJnQAg5OJ8FGszctb60AePU3Ntyf69iwyUOgnB
	 KesupmLprA+3+GxcSj7E9Ez2kmRDDJbBIdCeeEE+M0nAlWSKU2fEUv+5hiNkK0gwpM
	 sPfO1YCVSobqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91117CFD35B
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 21:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176402057358.28977.5136942643762272129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8b2905f43dcdb63b7e028bf28d52777cce00bafc9914814e68d9c703acca1da
Date: Mon, 24 Nov 2025 21:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764020573

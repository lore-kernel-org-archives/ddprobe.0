Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1955C15FA7B
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734674154; cv=none; b=Muf4WdVT6wBF3lRR4xqbDHsb5y1q5JMoQVJUYVNl4KMRqaLiIpys4SuE6Wn4Ln68Z4kDFt6Qj5Gpqw0lAkuaBd1avUlhDGF4UIu978WLZwu0aIxIt3dHMdlp36XBwt8FmYtbEbvR6Vf939V251CY1cGSN06T4yl5slDBmS3FZaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734674154; c=relaxed/simple;
	bh=0uU2bRpB5xM3M6s5heWSFnwOjBh04UwMg3SndZMj2rU=;
	h=To:Subject:From:Message-Id:Date; b=RJaIHK61d/FC/WcvLhQDmV+ZMV8i9FjFD5HEcdNfokyBqXvas1UTZaH0yMNtz5pFh7XtStdl8nqvJMF7ZIo8XazSKQs4zNorPixP/qbcVu5G2knhh2oH8xTRjnt1DppRa1GSTQoIaiX6q73WaaXwQCQ1IXDy6PD7wvvt9Mab3h0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q4B5kckK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q4B5kckK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC00AC4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734674153;
	bh=0uU2bRpB5xM3M6s5heWSFnwOjBh04UwMg3SndZMj2rU=;
	h=To:Subject:From:Date:From;
	b=q4B5kckKw53rbU/JyFtbuOxhfguyoCQ/jbqxMrbkBIfQY2p+5vnZUQlnn5acffTyU
	 2mrxyOQ+Iz3P+leBV3RucR5k9pFdlSCxf9LAghCa+pnp0vpIstxxTgx8Ftqr9zf7Tu
	 VSqN/mkWxJJQ5cByEkNHgm8rkWubUWkElXF6Kj9mVFL5+xJ/M4coCiqlQOSrTzIGn2
	 eiDExDq4qhBvIIqEn38Hn2zVf5DTuJP99DU/bAuKmUvh6ZxhseaRQI/omJKGOhSba4
	 hZHAS9fCkQindrmNK92teFIfdnuD1uOXitXm69d1ZSnDX7YlI8Tudgw9cOvES+mSiZ
	 w6nx6DX/Ip5hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AAAE7718A
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173467415358.9860.6610956966920789729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a26629a14eeb7399cf214f66469df738bd1980b0a24e3cbcd3d7541e73e12bdb
Date: Fri, 20 Dec 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734674153

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BB861802E
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 09:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718875823; cv=none; b=pISIEPKNGNwDO0Gdv3Vz6h8MZNgjHt/eJfr5XqF6VKlV2D1dU+0UGORWNPb67mbHmaffLa7p68SpW4PBmjCT5Q6QZBmM2Lvr65gtdpcp0VBKWTThTEbhaPUjRhZZBgPpVgZxXsbC95CJk6dJZXjeiqu+oa4QJGIxjYfGJgWuNpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718875823; c=relaxed/simple;
	bh=+mwSCRcN5j9szFW8KukkXM45M7LnWjYZ8a46A6P6LEE=;
	h=To:Subject:From:Message-Id:Date; b=XIM/b6Pr0w2e3FSpwcqH9EBVBgJbODUAAG6PhznyDn3NSjfuLAmcvHVBjrUTCejudlJe+1D4sM84RedxhDqIXoHwaLvtHzoq+zvAj0RqO+x0eitcJcigzX8cjxN9I0B1YejKS6RkDmAClk/mKLAubnCH5KZZ9zrDS9i6i8kdPDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QeeOirG3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QeeOirG3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7395C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 09:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718875822;
	bh=+mwSCRcN5j9szFW8KukkXM45M7LnWjYZ8a46A6P6LEE=;
	h=To:Subject:From:Date:From;
	b=QeeOirG3J1vrmCefAn1zy9yWt3qzLq94Fv3HjhtVnTLjngzggHF7WFGAkMUPzG9I5
	 Acf6PQSJR3fVx6zoKIyygR3+VssLimI92dYiUnfIxnvO8GFzhvVt5g1jWGmhamp/tY
	 HDz0XH6wETSdFpswK5oME9yUBEj3hP7+zpYX19eNfNhcjpkjFEcriC2EemCzQx/OHX
	 0EnVLeO14GQbWyt75FX4b14mqBhg/1zAIyjbtUFXDNuWEphL2HWETm3HA9suJ7mZGm
	 Ygdjd4IWxWnsxro2P2NoN35QFNUfv6d3Cp3zIl5OMLOb+z1Q0TKdNcVsktblFDYQY3
	 8HS0w1EwPIDVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5079C27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 09:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171887582279.12763.13628470318143224442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c928e678afc9b3ce3ef5bc442e363bb662c710ffb1ba6de95004b7823febdbd7
Date: Thu, 20 Jun 2024 09:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718875822

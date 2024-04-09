Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C6CB15887D
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 21:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712698697; cv=none; b=S34ORz+jqw6AaKyFR/UviEmnW/qOLeRNW+XasEAe58zRZUAJW9DBZ9FYUKhGF4DKcWZzsw/m1RktRcBAKbBigW3q1x/4c9ypQqAOxSY0xsjTwNwJslzRFj95Stu/cgpwxRiKjaNS/BneR9/pGSGCAfz2GsYmZ/sYPbuqYqoCEMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712698697; c=relaxed/simple;
	bh=9lpjhDuFrqUF8h0hgOD15n6BuKyHFJpJz7CiG3YpmLI=;
	h=To:Subject:From:Message-Id:Date; b=Az6ETPyFoN97MfI+ybixd1VKH+L51usM68s25k9fTLaUfOTd4XOHW75bt20xUGYuGAnlsb/bdIQmiJ1dSEa11hUovGLjAiHcWYXhszGKIFlD9nH1Ff+R/4RhB4DjUR1QaivOsyIig4jqZaGCAWzKDHJ0Me6r6jmqavIO1JeSHk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mXTGyqEc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mXTGyqEc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E5E0C433C7
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 21:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712698696;
	bh=9lpjhDuFrqUF8h0hgOD15n6BuKyHFJpJz7CiG3YpmLI=;
	h=To:Subject:From:Date:From;
	b=mXTGyqEcibmIeZF9Ek+a+Jr+i+IymQs2puYtJzxJP3SOicpsAfk+ufxVnRAREwTNQ
	 2cJ0EdMKrVFZc3X4j4gNk2/gT/v09tKSYBtosGevhSl0wdLLL8zAjdWqlaGNSlS0Bg
	 JPSaO38OXPt3+DdWGjETOLic/O7S3YBDKglDadz1SFaPakkKfhNIqCXRkDF/lVM/QF
	 MaIzznPaIp4wKClBqIS/swxxPxkSiEOJfLW0mWQY9hPbykyxg4e2XGLqN/tAYvEgMP
	 8W4+B4xWSA4pbfQ/bEi2ewl6L60U57J0MsOp/EKFIE2WQOs2pTriv1WyDy0Z8hAHIr
	 cn4ILHkeMbwDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76071C67861
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 21:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171269869647.9281.7915664922566995151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dd104a550235a396a604e65ce9350db5f2c1bc023266c7d40d6652360551090
Date: Tue, 09 Apr 2024 21:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712698696

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E461643B
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 01:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776304654; cv=none; b=rWMGnTBfD+c80PW5u0gEuUifhv4fkGQLAnQMA5UAbP0s7EPCMTqIG1OkheexzmVCZwgp68dhp9dLAh096NvKTCPjX8c+Q3MKo5m/h1ILqNqDVYdMrknmNfzy4hKwOkPVJ8WP99Azy/2056KODk9tjU7UMl2szHe6e8t1b5qH+CA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776304654; c=relaxed/simple;
	bh=rjJ/oeUYGHNWeEkoPXTJRX7+rwZ2sfrhsqt7hc5cc5c=;
	h=To:Subject:From:Message-Id:Date; b=AW6xC8UQ/sc0FYIHUHlTi1iDd7GK6NVVXkpqWmdK3vYB65CMZ8RpD1QFneoRe+MXyJ/dNaT5lYFikuqFbT6rTuw3uIf1bLNx7aBR8AGxPbFTf70iQZwWO9LkrKJd/LZjRoSBbC7J1rFQP8koaJ+QszkyR6xCu6Kdtc6ufFl4+lg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sJQmq5EL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sJQmq5EL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCB70C19424
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 01:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776304653;
	bh=rjJ/oeUYGHNWeEkoPXTJRX7+rwZ2sfrhsqt7hc5cc5c=;
	h=To:Subject:From:Date:From;
	b=sJQmq5ELRrxj5ssgbNviSApQfxCih+Fb/kiWkwdo1Z22ne1y99xbFwM+s+jKDmyfW
	 ebBrT5wg1vhsf2mGf+bSYgDz8mn4ggdxS0Cd5dxD9u7b2Nf2zrTTWL0UdJtodTlBEY
	 0GxpXwGQH8Pi043HE247ze7Nuo8zblIJ0iLXgqHoxyesU24vUDmjfjKqB/saZXVffd
	 TlX/SNDU8SNTFgysjBUUfMD/KRsopZU7HfH3tGrwEUb0O1d5ptv4zjAXSSc54eiLtF
	 JS8dXcR9zANnBPFIiDio5H7lo4wz3p9tZB+N0tFnP8trAfu+Oj0LwT6AVVo+6Ow3de
	 lL514Q+ZCwyDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC30EF433D6
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 01:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177630465369.21072.9950235167359387782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ee32748e50acd68465d01f816f07f38568875e8b6c4c043c512c08ffed87aba
Date: Thu, 16 Apr 2026 01:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776304653

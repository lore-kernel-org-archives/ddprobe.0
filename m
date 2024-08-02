Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25EE71E4A6
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722603354; cv=none; b=LQSlw3p7URWX20w7M7gU1ZE/OOaHFot3RV/fEGPXZ7bRlJyeGmCHKe5XATGhcYhbksY1GUJvhSu8P+kprz+TEIytJg21o98vYsrQNFq08zdpOuQCC6Y2pktoWzQI4FQKplKzAKBFIDo2zrSXVu7UgvZYKnFsX/qBkSvctJuL61Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722603354; c=relaxed/simple;
	bh=OfsDV/LP+LwIS8Fp00eodQP/kXg8QH0b7uVFdr/pZCM=;
	h=To:Subject:From:Message-Id:Date; b=m4Gqi50QHc3FC/aN4+T/nQ5BNuBDs7goW4y/wJlZRv7ZSqmfQq8oASuf0EBU6vnL/A97ivCOQdn0tsoE0dMp2hwh8GF6unpYbaaPyddyDpn96UASg4BlCnchwds9ySqIo45jZUUou9RV/HssjhFjKKK1RE9t8Lgq0YArFsLRxXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=em6QGzOB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="em6QGzOB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A105EC4AF0B
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722603353;
	bh=OfsDV/LP+LwIS8Fp00eodQP/kXg8QH0b7uVFdr/pZCM=;
	h=To:Subject:From:Date:From;
	b=em6QGzOB7U4YGRA7EmcCesWrpGcK78PegVuIYAHXuupievBkmhUy/53JZ9sIAybFa
	 nQVJD72c2Df7Ut8SIurG8Qhs+UY/0PsMSIY/GZHDWegbQ619EtUJmcEu4oVhTRUqnT
	 hDOMf7Q8Y5DXwcW4EuZeE/D3iHaJvY/8BoJf/TB1niE+Wv7nOYVW5D/aBUCzrH+ecG
	 ub3sh0WdelHK87O1+T1q/QWkkacq2vKOcbqRUp27doWLCUnEKKEeAeQ+MiIr4Hzo5U
	 9hV2SaR0H2S6882vzXzb5mwaMKpZVKC1QvJPK4am+Er4Xovn8G1dw011MkatcZ3+ik
	 v04/oNjPC33Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F52C3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172260335359.13622.12774928281505072767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdc94efb5725a5b51170878f56fa40ce2800d445943f2549ad36be0f8007f21c
Date: Fri, 02 Aug 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722603353

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27BE51F237A
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757558395; cv=none; b=Sr+ED4ReNOU4M1UXeoUhsocXRQvEJm0H9tAZtjwdev1wUL9cQZ+rJucPPKl8QR6gumcDSF2DwirwYYsJ686sK21VkvprYahWQi+UlxIvDfen2Y3lw3lDIIqE2s4XjH8ONkH2ZpRZEQrnP9WY0F0RAVW4ihBZ2II0dRALcPl7UpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757558395; c=relaxed/simple;
	bh=Eag0UZztS9czIcUcrIlTI31C8ONeopeNykEiboQ3sWM=;
	h=To:Subject:From:Message-Id:Date; b=Cx8Ybw5UHcysuUrb4jmI05uqyyz+izstc/b/wJvixDLeRB8HUxTryQIX2wB/hzwt1cUZex2E+7iYyCvQq+OWuzxbMrsAbCQRxBuhHFbh2jH1xvhK2TMVnOm+pWUGl6KHSekAXTdBLosUEiRdXTwEhj3t+FOG6IfavQLC9+bda8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RDzQdv2L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RDzQdv2L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA07C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757558393;
	bh=Eag0UZztS9czIcUcrIlTI31C8ONeopeNykEiboQ3sWM=;
	h=To:Subject:From:Date:From;
	b=RDzQdv2LLtlLeoEsnQvFMGZdaprZi20qNC4tzeh/Zld1NUpMwZI09gV0wy+qVzzoS
	 gAzHxBY1CZO0Hfgv34a0U9SjUJS4JYiYTZCLx5Fj3PImP0gxLZEwPRJBkyKjWyo4TG
	 od9DE5P4aS6/WFkz6Qhpr+UC7atvNL9+7gcbQ+apFANS2jgoqybTyZhDfoeS+wiJ1P
	 Xv9aPB5wm7XKyZZ08Fb1B+eoYV/n4qJB5ZD9wJiyF3A9dUoLV6q32Prl6Ut+raNl0x
	 5hZEdW9Fz9KThjiTI/TYJz5K2UM9aaKg+Kul3o1lE7oFB5IOcZWloVJ+2poUX1nfzx
	 d7ezTn8bqKhZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED15CAC58E
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175755839357.9150.5797799555189244901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 266d7ef38637b57754263cc43cf701dd9781a6e901c7b9a35338eaec0f7069a4
Date: Thu, 11 Sep 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757558393

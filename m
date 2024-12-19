Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E25B13AC1
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734572154; cv=none; b=A+yT4Kg+W3gA/WIA6KzZRPM+va4L1rZCSFEM3k0g+V+Ylj9w+lJBa9+KKs3goxU4Q3nIlp2lITD1m6qwfKFBdC45/NMUdrcg3Yr8ebkNoZaDg/jAX4z5Gpf1XWE1RoXFPqjFVsppAOYGU6kYZZuG+xis+7g1S3/1q54rtw3SR6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734572154; c=relaxed/simple;
	bh=zhLyYeZfOVgc4t1AmcKjKk60k22GM3eux8sMYNoFI3o=;
	h=To:Subject:From:Message-Id:Date; b=hayg8J/tlBpFFktiFYqsP5Zuf/ch+sSagJYd4CC/rpXaqn1fB9ilBg7UZ/vZ06rmszuTcvWxiSzxuoNwif1tevL8hDW46ldpdiq3INAntqQGK3QoYT7+6mPolx5vQLsdMFpAAzgMHAbT/2Eo3GpcE+Va2jaOAWzQddIw3+rNbII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q6viivxR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q6viivxR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E89C4CECD
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734572153;
	bh=zhLyYeZfOVgc4t1AmcKjKk60k22GM3eux8sMYNoFI3o=;
	h=To:Subject:From:Date:From;
	b=q6viivxRMBkvyQqvvavuZ/qYJUAsvHAM8QifPKDErGtV8L3RRBbKqFYWHpF3jN11E
	 Z2MZFM8UFuQwFbDd92q7xyPiOcjdUWDIXYNl+4cLFMHu6oLw8dY46zKpQAM0B7gjiu
	 JaSVQ7Y/qrUnKeUcJdU5acEJd9EPCjfETyYF2BEqXh22ouVEo0kGlFgwASwt7L/5/k
	 Nif730fS0yVNkJsfC8jp+5N3eQR0BLFd1RYOg+WA5fWssGDymAf+8Nx2b+spGZGQcU
	 7FOX7Z/3fkTeoqZ+gt5aLwWLZYNwLFRCgJ9SKPZgh8qCyVz4MncpiBxJFX/mo2/0rQ
	 0eXy7RSQ9g9vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94813E77188
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173457215360.32411.1392854137530255860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfa43b36196cb7c4ea76df5e517d054ac26f5957d7045f3854371c98fd5639b9
Date: Thu, 19 Dec 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734572153

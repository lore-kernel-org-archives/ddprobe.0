Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C931E3A5E97
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 22:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778194654; cv=none; b=Z5L4uUof01dUxShgP0vyHsiYQxUP1NeLcpAWF7UelptxKXiWlR2sQmuBbbVQnSF7+5IzcvpEEZqhBsp7nIoy/A8piKV6P3Xd6g/G/0dH8U/Imp3fhGLaDhbQiSEw3MEl5X3h3+mSsZT6aK2BZkz31N6Ww/bY+eyE6iM0wYuKAqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778194654; c=relaxed/simple;
	bh=5JAoJNZIqYaJdkinnzXr7KMBdVlzl17pLhLi/SpFLq8=;
	h=To:Subject:From:Message-Id:Date; b=jThqXp2mRSsUoH3OOxX/5P76ht/5bI84n9zyFD10XrEtVequiccKimfNpgzWDToSy5nd1dTGOIocwRMYxzJbw6gI21KVaZ+NFDYTzWGrAtqSACS92kXX6TiqRikP9Qbz9InYGvJvEcHkytReMdjvd4NByX3oFtG5mSsjM7oBMok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iQ2iUO4q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iQ2iUO4q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B96EBC2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 22:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778194653;
	bh=5JAoJNZIqYaJdkinnzXr7KMBdVlzl17pLhLi/SpFLq8=;
	h=To:Subject:From:Date:From;
	b=iQ2iUO4qp4euUWUCpYJL1OT5bjczxUcmJbs77TB/LPUGaVhO191eV/jO4VXGGJmm+
	 K5dk3Fvk1tURrnOcPu5pxt+zMjqUP55677IL3bB9lOKHPfP3PwN8IzdbLmUztLeVl9
	 0SMu2KJbftjzvPygjkRPBFzQsSEgBFKe1mA1PhFh2ZhgEtE/WOZ+CAGngWXr62RiOk
	 UBdRcBQn9GwvQe+dZaJ7EAmVIF7RH9uL1ywEuOoAhNmIHV8DHQBRCVkA5EwYyNJ+f7
	 2gbXKWtrgZ8dhhQS/3CO1x4lO0+mhKfNbP2K23+iXUrC84oDfTFHpsLY7lyObJmNxN
	 DrDPeFk59XDQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA379CD37A7
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 22:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177819465368.30992.16506545114130205487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ab7ded26beabd0b6490a7c8bec4679eefc98102cc0411c9070c6892e52af942
Date: Thu, 07 May 2026 22:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778194653

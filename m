Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B97F143748
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744226394; cv=none; b=S7KUE7Du4udjfgsFTzE9x7Y2sWxwqyqrtMbi8jC7QRidxebSIqyqJjA657VQanFJiUj7TcfnaaINcalpZNJLobhv63DqJFLC3LT4biNaz93aPnlAMYYbGQr/nuRUVYcxZumnW1lcTIgR5UTOm052WARruIAUcqME+c8KxLrmfoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744226394; c=relaxed/simple;
	bh=p0iwZNOJS9k7fKmlel9uhNytOCGlfwzogiCR1zsXu38=;
	h=To:Subject:From:Message-Id:Date; b=ZSOs3xyE1jMIcW9nqIs2IJl1zTYRLshkUsnOV8DKnBqXxc11arsL/FSWM/SBYMWFngVYUK3zt7oXMzqBylAb1chrpt7jzJ2KAWmOfF4lOnCrtGnIEsxlynN3pd3i9ekacv1XRKNtYCkPyqCmk20tIdSgVxZLi0vXCLSUYzTYqiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jdJ3H03M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jdJ3H03M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD722C4CEE8
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744226393;
	bh=p0iwZNOJS9k7fKmlel9uhNytOCGlfwzogiCR1zsXu38=;
	h=To:Subject:From:Date:From;
	b=jdJ3H03M9L/CNdjRe/mHWYYda4PAkCBfYJz83Ss5kGCi3v/EurXs3JLViMiCoGQDa
	 PEWfcksBQ07EDFxCHajIA4wngrI4PpoR7UlkcB8N1DJV3CFB6JBJtuEnHAGALucll3
	 EJnOqM7ylGPbdHyDPY95Ehc7LsarIA3sZxtbk0j2ZR1RJbjmACiPUQWi1FIYVc/c7Y
	 rlmUbJjfZxaR2hRwHCSe5YlQ3MMhiRARmlijlxm6iqxMaroEg+fOW6Ujd5sU3S4h4y
	 LcN68EkL7d10r894pAgp84GQb5MRnzXGWi+qjC5x8T5sUaQaL6aOHXrhRfBU4+Q/FI
	 zJekHXFHWx1wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BE5C369A1
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174422639361.19388.6946835881354219105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9436ce6a18a077400bb5d32ca1305a6b2bfdfc3f7996ed2ee130d7776159894
Date: Wed, 09 Apr 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744226393

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407511E5B9E
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755926395; cv=none; b=fp63+l3Jzzf9sMIOs2DJQcejKGF1ci1W/OqR3WgbENDdWj1Y986OimcXsIIgr0Pimf+vllNKyj0/KtzmXuvmyds5FKOXIFEIBD7/jUtgQPuEwBYAqcXefUFtx6zFw5scpAs0mJf9V01c0CwJ/raPtpt1hLYkq4m3GlAgqrVaPcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755926395; c=relaxed/simple;
	bh=NNbEaZeF6GvKsRuEkdO9QMkWdzVX4MDjDdFgcJd3Thg=;
	h=To:Subject:From:Message-Id:Date; b=GllmiV621bxHP2ZVzfHxiew73ldaW2i3ZEMr8mw2IhpfHbVHC0JZe2kSqjoI8YGek7dsK0i2wJyNZEZBzozCDyRHlQ8KJ3o6S/R/m/oEuB5rV6amz8t7UeJCt2FNBsz/WEDQ/T9/EDKuovgycp1DzvGwDOhmQdqYVtVGsPQoeRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=erEFfeU0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="erEFfeU0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1D45C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755926393;
	bh=NNbEaZeF6GvKsRuEkdO9QMkWdzVX4MDjDdFgcJd3Thg=;
	h=To:Subject:From:Date:From;
	b=erEFfeU0tlUfzIgCWHR98p04UNGsLZM0vG+hBvJS7BJC4SgltjhcKlSStN98N+uOf
	 kv12x6W9795ZY8KeSPKUOT0mAqAu/7au0MZQbghszW9HOTgz8E/vUmKj+C+qoywsXx
	 SORqn0o+Vhh+KHYxf7xTOUUlONgOYoFGOBmjGGyWimIJ2BXts2J4UGxiv1yoLaePUA
	 AJEjQEDJiuxeWxEgb94qhSdwZYwMyJPLxjGLc3wwywbLWRohc4Iv91uBohXEQUKVWp
	 1+JSRjo6am7NwF7tuDF+dhHeTMI6FKI62zqUkskhteLmW3Tnah4PuWrf1wekwwJcWP
	 8WQg3YZLlBGCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A02C8CA0EFA
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175592639361.13642.15130532955336424971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44d81b169b20cae405d6525f8b26a8712d5700e27c78000c21121f8275031ee0
Date: Sat, 23 Aug 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755926393

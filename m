Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35FE61548C
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760200794; cv=none; b=J5i7B3U/WKRbVI1UriI/w8JeKDcq7h2hR1XWwUGyXh8fAydCZKkH1GGh+Nd0qVfVOvlp77bR6vOnefQh3gzumqWtsi0E87bm8X4inWjkflYo0CzKYekwReD5XuwCc/LXrADHgu/ahr+PIPL7tm9Cx6kJQlffyFKG4vK/VLSIe+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760200794; c=relaxed/simple;
	bh=X6gl36lIcrGE1HYaz0ygmJj9VE1BIZnwGMqbZZUcgsc=;
	h=To:Subject:From:Message-Id:Date; b=oTz3vrJ7t6/cWio5Z6KS2cGL6Ro6BsTHjEJ/igmiOKfHnqwi5RNVVH1WfoNpLPJSDIIQf/Jl2T0yhInJdvWM6v6iE/W8JPHgSyALYFJEWhaxM1QkVkG+v9eB1c1pnDuMSITOpXdEAWeGl+bYoPj8ARbnAshoe0snwNT5D4W8M18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IVcbuLHd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IVcbuLHd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBD8DC4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760200793;
	bh=X6gl36lIcrGE1HYaz0ygmJj9VE1BIZnwGMqbZZUcgsc=;
	h=To:Subject:From:Date:From;
	b=IVcbuLHdGhUZDT7vqG0QyEQGmG3h5D/lDuHR5lTtOaZON8YjdjTxeMkwccPmQdEid
	 YTO1mHmbNdvcCZzgWBqq5kyleJ7N723fAYAC7t4oCC4zjXhOZVZI2ksmOWl0MzeXC0
	 jsosgyLwoIChcrgpRRgWYngLCAjTIy3RtwWtNlcR4R0AwoNcRkk6ORMPhp9AJ2fF5Y
	 01yPVXDMOfu8525/sUtplwnnTapU7xJpCX/Hc8yVBAzGYw6l+T1u2L0MrG151JC2Xn
	 Kf12lhI3Um3EBOOVt9m5z6JQzJ/N6EVfAeRv5Q0EVDLESdsvM+D/q4P2628gPxrr8h
	 MkYVOLNGMYZtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0B65CCA476
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176020079357.14084.4683016808710767610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d9e41023eda61c1bb3efaaea571dee8c717aabe0837a2fb74fe316e9ea9cc6f
Date: Sat, 11 Oct 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760200793

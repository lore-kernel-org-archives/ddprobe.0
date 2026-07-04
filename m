Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4A4F3859EC
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 04:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783139914; cv=none; b=FPVkbb+5BdcEr0PGJZoqMN7iIEAVwoUnaYMVtjyrWEKN5oUwDYaLkLGOqPEUvqNQq/5JHknnCUniWsQo0uiQm8SFllsmlj2b014UxUPTEhMsZHMlunvVhmfc1lea1fH1SDU1jf/URW/yDdJbtsylBYgATxUwqnllFGJIdxw5mUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783139914; c=relaxed/simple;
	bh=9w89XzOoIMpmgKyYOE7qGAWA+41APPfx25nSsYuAjYk=;
	h=To:Subject:From:Message-Id:Date; b=XI4fgwATeksOFbQRUOxKaKCGbwhfpj5PnexUdoYuRw4Xqb9NPEr8CxjQY7UKd8F3r3UqqQFm9Vds8je2Mj53Th2ejAGpGM2iiLBwYAqrDzjZ/+AW9CODhmaelJX8tr720J8FULgc7iYYvNcKTSPIfCw2llZNi7LYAFysDkcBonI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m5GrXZ0T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m5GrXZ0T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF6AFC19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 04:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783139913;
	bh=9w89XzOoIMpmgKyYOE7qGAWA+41APPfx25nSsYuAjYk=;
	h=To:Subject:From:Date:From;
	b=m5GrXZ0TEzAsGiQ1eEmBTJNMyVreHWzwCnJ/zu2tQIGugqyV43xMgb4pPONGTKvd/
	 wDNTSqxPkirX24WsJdiR24GdirKZMwt575bBjBNeTK7qVKHOE8LrpYwlZNPymfm9i6
	 G3e4dsSESa5WVTwSpNygkMYFr7MJ7ZeNeqtpyNcyL7Y9atqyXFiYIeqJcM7qYLZZeX
	 crUbgdhBP8KxRQLRYtUumgiVrvQTk6l9VuKBLToi5LiMQ00O5sJJ3PFkXI4dAoubyx
	 04PqCgTNEbJuYyM1UUP9MasnMjGxVrsD8BseJ9TYssFoJ+A7jv5QPJcLLsXdLT3dZQ
	 RIANyAlnJVlvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5ACC43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 04:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178313991368.9406.14635299338241741779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: add3c3734c6aa17cec5870cb53e54cfc37ae98acc57fbe4400bbc7b0fe576b1c
Date: Sat, 04 Jul 2026 04:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783139913

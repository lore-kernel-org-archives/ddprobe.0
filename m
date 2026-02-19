Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 206711EA7DB
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 11:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771500894; cv=none; b=Qx4hC/0TBsdDUouWYwtgkvoHDqE5+57e6yHp9QBxg6LRjtOiu5HXOHIUGKy0DpdDaTiDyoAjqHn1JvXVYg+N1vh6TKrUUuiUOpSXVWlp4SeY8J0903fOfHZa4+94SqpqHL1W/SbWXzAyWgEe3vduqcxO1IiArulEE9TDvWXcXE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771500894; c=relaxed/simple;
	bh=pN31EX5iS4o1HAsyQtpDPudxA5itmWfU7GOfW9KNsLU=;
	h=To:Subject:From:Message-Id:Date; b=qojMKAGEnIo5tOwWfn8IT9IgsAHJAGZkwRTk8cr/qq/a2vGw/5FzwtFmO4ziudx6dy3jppfvZHnbbflbz/KyLYypmr12+/KaGssP+plCsHx+WP18mUJY/glGu1jPXKOTUeoq16I9kfw8rFr5cuGw6Ie7O2Ii14JH0H9n1LEfsZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VUTmteb2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VUTmteb2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC33C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 11:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771500893;
	bh=pN31EX5iS4o1HAsyQtpDPudxA5itmWfU7GOfW9KNsLU=;
	h=To:Subject:From:Date:From;
	b=VUTmteb2K8kJX+zGhaT5hhB/azBbkgsjws7S92Ev08fAYjFN4680RgknV2f6Rwimb
	 Oui/ukEkAM8Xp3j77e4ylS6Ju6USIE8fAJlquIxCYz7Jb4WTbbOdcXIpmF8S9+CIn0
	 7CqvTqMpiWa0jn3xnOtR9ltJnM0nVEilEJEEf1ZnV/tiAluD6XwY4v/DEu1yrhCQpS
	 /pBxtqyA9XaebFfgnjOlacge6Pqfv11qva+8GLjiS1y0JqVKREEC7D7hNczgpQk4lj
	 4GJs+hWrJn3xRoZSd/kDyhiw5bFub1cdIUwO+yWCi+ukH6Q3kkQZXet5N21JqMctYu
	 j9lj9vednX9rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B36E9A03B
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 11:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177150089361.21121.11119212473472177744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56e981def3c389f4702bb5126a616399f38a988dc30406f25ccde0b1e93ae53d
Date: Thu, 19 Feb 2026 11:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771500893

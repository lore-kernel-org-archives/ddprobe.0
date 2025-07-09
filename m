Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4943C14F9D6
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752080995; cv=none; b=EJSjpzSdkWSDtUevn2+xdzn7D8NTqnhfrENa3C4gMEhE2jFs4rBFBC5vTdWBkPTs1fSKBDWpQoWZuTtIw0p9pE3Esj+bgk7ULJxGXU391tw9Szg4qcD4wCfU8V9bJLcp2EZ9bv94ItjTbwjlYxYMkqAUComMrLAqql3hEcgahSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752080995; c=relaxed/simple;
	bh=3Ax+5WllOGiPWlKQaOYeHlJ/AasLaTnYeu6rj7biewY=;
	h=To:Subject:From:Message-Id:Date; b=UhXWJ6zJlbLGYck8pkoHq4utrfQQ6MUX2/h11SNyonYvNheZLmWXYE2HS6gYTyNw/uNb2eCaCu3WpLCfHJGi5FbI92ly04NFBH9ksSkkz+jQljCgZPKAQMfAZyR+BhGUSpS3N7yxsLEZ2fe+nVW52zCNAw7eJFycfm8oiZMlSW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bYe9SJqN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bYe9SJqN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C2ADC4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752080993;
	bh=3Ax+5WllOGiPWlKQaOYeHlJ/AasLaTnYeu6rj7biewY=;
	h=To:Subject:From:Date:From;
	b=bYe9SJqNNkp5Bb7KOhlc+qWRd7GN2WmrzV8dkoHdTzI0KUvSvYYvRWty9UPV3AJjx
	 b+1y/Zx6HN1OkQ4Wg79IYIqzh0F8fdqKXaBw2QFT6zMTwEvRB9ABlQxHMfslt776Kw
	 gX/Oj7uQysAaCDs2XKcvfsv4kWyzq8KTNiJSbzMpRBhf6GCEBs03D3v0hE3XwO2vJB
	 4ASVXyTm5mIiPEIPZceA2xkFDcIjZzFNTf5Cl2EzEmavEsI4lv+I9NagNH2BA66iex
	 VV+dIsqDIspw/gZ8oppkgKyxpRACJOOfolCI9BbKUWbF274aRuBQo0oldC6z+EzSIg
	 fXRcrK4ZlUfeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F57AC83F0A
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175208099357.4363.4131700731471310168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ae051f14ab18f405701739c0ebe041a3d1d5dec033d8587e1f27bf3e9b2f7f2
Date: Wed, 09 Jul 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752080993

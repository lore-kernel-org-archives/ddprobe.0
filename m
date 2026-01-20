Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 595E837E2E4
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 20:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768939434; cv=none; b=EXp9rU1uIhR93jb7IvMEazBY+dfGZvAlH/Awr7Or1C8JrFxnbDeAyx5xK6eL7ctFKPsfoCF2MfxO+lGQEH9iKFN+/TIG3h7O1zCxHgXlAkIUxa6ZyHw1A4/uci+MyMsC8xutZn8egGwrz8Nh1KVUYI1o1U8MGImb3fxjOXnuItE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768939434; c=relaxed/simple;
	bh=wl6KQzUJE4z9IT0UBVXo0YwGRk3k2dm76WR49ec+5Xg=;
	h=To:Subject:From:Message-Id:Date; b=GRWvFlJvuVaR63JZ6NNgx+2B2zkWHms6Bmc62P95axqePxibmeSikHShNHc5ZPN2QRtP6ie9q3VQToeqwzbAvuxMXWTIQfNLB4GzNuxfShAD3ilYJ1rlTK8XYb3vlNXRmhTzT0XRQrsE9LUjinrD2f7Jm7KX7QWgWMnWaiCqYo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RFWzwRUY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RFWzwRUY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF01BC19422
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768939433;
	bh=wl6KQzUJE4z9IT0UBVXo0YwGRk3k2dm76WR49ec+5Xg=;
	h=To:Subject:From:Date:From;
	b=RFWzwRUYxlxdkasUiZptlTPjkrq21omJQFq2GMnrRAt4dPeQe6XOISeslwVZa738n
	 y9lS0KOQALRVBV6as3g7M+YKeyOTorwPsGp2ehSVkJ1AHYPqhg4mJ2qf0tAlOzLi7f
	 GNvnrXne9SOdE2xkNbyTKBu0wiopvYqaYPVmqBjuJkCc+4qNCBwItDGJVW4sWpQ9Md
	 7RSuDAMnrtBOfoRDX09YTUWNUCJaw7y0QT4E3u0lhHQhrxCjdngx05dZdzjihwM5I8
	 WagMuO4XGYpjmHiM5rKm5LU7d1k7gTMv8inKwP7KIl/Mfg4BAMeRyZEbSYXK+cVQeI
	 C+Bn31Fzz83/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99DF2D26296
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 20:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176893943360.32399.6788479421904458943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 671707ddc51859ee57756d95357c79803b31b493697c7603934cae399b9e086f
Date: Tue, 20 Jan 2026 20:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768939433

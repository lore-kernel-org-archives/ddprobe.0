Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2035E246BA8
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759916394; cv=none; b=X3vRshQuAcoyFgHjACff0ifUJE9GT9MLCM+SOXGbsoPSq4P/Z+uYb/kV+qtX5izmu2bDYZ83bMjJNSElvR0xNbZBnOKqNvZ9aIwcDwLQmGnzrjQstJUNdsxwl9vXWIBpPk4ZczN4CXo9sUAmVWNKZjF2UYd51j0IysiGsehB6/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759916394; c=relaxed/simple;
	bh=pgR5Oo6ClOWgq+RWHfHy2xHQrCw09wAoLo50MdTpwG0=;
	h=To:Subject:From:Message-Id:Date; b=MujbZruA7+n6J5VsgBYWgg5HJU3uPqwoZdCJkMICG0FwKGf/wQe8bDYr77rsRQ/9L5y2nP0C1QXEdbACFOd0Bbqb2hXCHmtXconOHhbNnhfkNkTv68p92MQIT2ykfwnmvXQrYCxHRA4hPJaZjO9D5/16jvv2Ti9Q48bcvodtac8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A5r3hMrv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A5r3hMrv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45AEC4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759916393;
	bh=pgR5Oo6ClOWgq+RWHfHy2xHQrCw09wAoLo50MdTpwG0=;
	h=To:Subject:From:Date:From;
	b=A5r3hMrv83rqmsYGPrXOFd2OlNVVBS3KR+joefJTIowEZyG3rp/Lu6uZEmQZ+x+FC
	 cWUBQwS7INRYe3xBemFDGsi/PrjqdQBuhrfDy8yfqvsT+WwsXWX3r7t6WgOy+U0GwC
	 3DOcHvN0VJmZrM3BRogUQZ886nsEAZW1qVyaasjSv5E+nnlTijnuhnNV/jM0Uur6ch
	 54JyPh2cya+AImfebrf5+BczCKPEslu6cK9gFDb8Q+zz+DJaZxVGIzesr1ZZuvjEwT
	 3/gzT9sKXjhKEOGQJCsrNWLAcek3+CYdIr5pEGKSBkDle3+71Qj8eC4yqf3WEg8og0
	 e1V1pqosvt+lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC7DCCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175991639358.1767.13870468308799475219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffa2dc04d9255e117b52f96d72b4d83f80087143f17d7ac4c8b1a3d5a0d9c456
Date: Wed, 08 Oct 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759916393

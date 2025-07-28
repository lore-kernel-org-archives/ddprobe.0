Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F984FC1D
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753664395; cv=none; b=BfN+kxuaMGZErGJMPzcBIi3JpDKcDlK6hBZK4TemvFr+Lv9V2kr2F0MvZUJkAPZGhid4/0l6uCEKDJz2qjXcSZT3kTV1AfpVoNfluxvHiO6LXQ5qmjAsgwJqEbXZi6WgAd8SQx7N7aYo+Bwch++xrrvWh6NgGyKacx7iPGN9FJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753664395; c=relaxed/simple;
	bh=FnTQz7XyZzuAg5dAQQh7KiQs+n/siQWEOOKjA0hjC4g=;
	h=To:Subject:From:Message-Id:Date; b=lAKj9lsVIzQ12DGv7Q7Pn4nhTr7TZ83c5oEEx1J0BKjtgl3ZH0H4EFvgmkmiSj0DVbZfRXdyM2zp1Kw8jhXuEDF8zJkM7ovo/M3Be3GKUaP2YtNscWJ4UyYZKynrP4XiZPQ+Vm3RXilEs0lVBbquFUzwzctbpsK4D6N9aFtkqY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PO2D6S34; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PO2D6S34"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5196C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753664393;
	bh=FnTQz7XyZzuAg5dAQQh7KiQs+n/siQWEOOKjA0hjC4g=;
	h=To:Subject:From:Date:From;
	b=PO2D6S34gmBYxq4CnLWvY/1xUx/N8c3NtscBSbr6/hRxud0mROVNg9YT6mldJFkRI
	 hFZS/7GoUGCT5BFsyzytUayfl99xobzfI+p1JSG5bMeNJA5ZbS6vybzDXp32Em/FgV
	 zj9DLqrFueOjFoP30Xjj6YDJlOmMVgtgHX6WWcATco8IHNkXRZdUrXNOUcUbG4mZQY
	 RxI8EmtF5eU0Sn5t8h+GWC3z+lNo3L9i1fWblPMydxOzZC/MOLLk6NTcKE2/4P5IZP
	 Ftn+xb9VfKjKDQMgIeDtvXZxIi009WInTg5QYhybXqHTEyBAWmf4c++YlJC2o3YTZg
	 RGVxH+NHA4MOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9154FC87FCE
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175366439357.19920.8216097392118979476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7bb1ac348864917213152c1fc9d9601ee466fff754e2ed3129aa8cba1f1d00a
Date: Mon, 28 Jul 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753664393

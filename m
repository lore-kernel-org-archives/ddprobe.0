Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 102D518DB01
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 07:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775199934; cv=none; b=GMCvxZF1fMla/NOZdFJbL8CrzoJfkfGIoCo2loCRzXwDeAtAoeEtMEt8HCNYfQTYqo1r8hML7VEb8asds6Q5IPXaK2uWSJ+ToMUjBDobQXm9BBxkakWKeb/IfWjzp3EwaFIvkWSsHoVyBzSOrAON300a+WpyUntV1eM4nQM2p/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775199934; c=relaxed/simple;
	bh=4VMg6vcu4dJ6uPb9rYxgXFKbJOESZMZZ33G/sN/Yqdw=;
	h=To:Subject:From:Message-Id:Date; b=l/OpkYTz0lmrskuH89p2Jndl7RUw/gGBk5TUH8Jt0ph9PJ9+oeBlTAIWSMWy0VfiNZ5WxqrD9WvsLK879f6R0gHhfRLfXFvUZLdU9LhVGS7F51S022EL9/ESw/BJS8acSKgJEaWvaKkwVQ/56gKF4cNY0UAkaVTq4fd3HKkSZpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nsgdsy5O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nsgdsy5O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9304C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 07:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775199933;
	bh=4VMg6vcu4dJ6uPb9rYxgXFKbJOESZMZZ33G/sN/Yqdw=;
	h=To:Subject:From:Date:From;
	b=nsgdsy5OTCukiKb8dRd2EKKV7I1MvqlHsSIVGFLYN9TninheKLKjAfhtgCjNKAX2z
	 yw2MiGufK/olkJ4nINyO/DE0KyZcTJpttE3pyV5fBUNDgDhL0iH35t1P27/7q6AzJA
	 nB83JoyynhZYhyRq2ZKa8yPpvGnnLpMwYk4L/uxt76InFb+Rso9TBMyIaJd5i7z8Nl
	 oiejzG7D9qZlup6d1D06z9aT5y+A4/FOsUWRCSDER+xlLeqJYb8A4uE0DW3OXUqhIF
	 o5zY0OZZYueHz2PvPebElbqKAm+fGPyzyM76DzqKr2IjRm+t8Twl3oGgL9hrK3g+YH
	 TtaxH3ZwSM+JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA75DD730AF
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 07:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177519993368.12681.1583384245873525906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dccbf32e4c43df69ef579d4b69f552653171bf77f4ab1a3e91f53c7b7118403
Date: Fri, 03 Apr 2026 07:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775199933

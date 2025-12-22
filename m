Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F6DD21FF35
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 08:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766393634; cv=none; b=ZlJyO/ulHwOOnxsDFk9obGt4waVbblryxub33b8z8ibYN/eckmUFEeB37MX9FAa0kyfjJejCz9P6IyDIt6zQPkM6tEF/lmt/g6dLf8fv1yXMnobpwxXk60yCmkuBFY6MLD/VqdP/2ymEaFQd4SAMPp/Yn63MFKgUdehAOn2vvIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766393634; c=relaxed/simple;
	bh=ni8xFvR0rvcYsaQjSUPQVH594PydEJ5RipQJ7eLBXg8=;
	h=To:Subject:From:Message-Id:Date; b=Rq3KBGRojY0VINNIpsReaJ5cYcACdLAhrxFywSRLK+GhdAZbE0DXwHtyxrDqOf7aChcQWA69Q3kn1anBjtfs+8ClfXVWsKmuAkmGUgLasBItnd7+IEZc34ngBFwJ90ptPIrNvJYqV6KyTMcoWEqSwG9c+lPddWZXpytzZ1MdSZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N2v4qIai; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N2v4qIai"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26FFC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766393633;
	bh=ni8xFvR0rvcYsaQjSUPQVH594PydEJ5RipQJ7eLBXg8=;
	h=To:Subject:From:Date:From;
	b=N2v4qIaiMgaRStpiaoaloEKiA8uW/4TRDTYWJX+GZ1fIWPo00g8fJKAXr/Rjq9Sv0
	 f/RFvVImhsBfknJat+IEfOmWgZxHCcW6QSjh8SVhlMQUqMJdZ9He68p+xwPTdwlQcd
	 6Mh3NTYnW8tFIJkTHQSZN3jo0iaePc/KOqQnv3S3xcHm3May2gB7QlMMhuDSlZ1ssf
	 QtiJCYi+dBBqLcKhOtz/1uyDltl3R+vFPvwadK0HR0WVXemI0E9pD4uArXes1cUwEz
	 R0koSXO92vQlCGZgxCvmEdDzLu64tTkcpYlx8jg6zJN/jGN3fx4mzsdg4SJ737n0RM
	 IjnnVxA6GbjBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9001AE6748D
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 08:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176639363358.13084.10293769254685784812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f17904cbb9c182f1c75fd110f1fe87bcdfafc84e3c35c2efbb59a49b22702c84
Date: Mon, 22 Dec 2025 08:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766393633

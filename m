Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F852610D
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756094995; cv=none; b=AeHZg3Yg/1Qipy7+aGG9xI6D7yOhu7AzJMdInZZvharPNjF1kugrqSyEofHlM6xdUwSaC3n06WTLfS9MaHj7X5hZ8TXcV18KOde/53sjJ2yyaeWO+bliFdeZJw913Lk5RbEp2L9OxaeC01tToF9WCKVFAMeJXU+LXwfRBagLOOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756094995; c=relaxed/simple;
	bh=kvUAdhYwC/EuSMTmU3gE9tTA38fUT2wKHZZ6ZQUjqWM=;
	h=To:Subject:From:Message-Id:Date; b=Ut7f7ap1gekEzajLnb/fgHjUVY1xch8hOKfa6TZRi7NXsbIgiQB49I8aqgh4oxjesMhYiKR+YX7PO6+X6KFCnkafLx9l0FtTZSrzCzZzTtR3NxxCVM6YuWbml1H8WyuDgmkW7ye0pypbqfTg+ESfeoSypf+2zy1AE3LmLRdieAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q4OJBZl1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q4OJBZl1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48D4C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756094993;
	bh=kvUAdhYwC/EuSMTmU3gE9tTA38fUT2wKHZZ6ZQUjqWM=;
	h=To:Subject:From:Date:From;
	b=q4OJBZl1Wnm4CHpRqAdOBCJ0IvpKChfmRS8jk7MlkUGNw64kKo6Oqm4R2kRUD6f3Z
	 KE0yr3zypyGQsb8ZoUvPyijSVLZJWfsBVgaazghhO6acFY0RnezOuDZkUcRfryci4u
	 34AnDWPQh3Xcw8xkhOu9YW7RFJfpWH+3GV64oQPusyIWe7/tH8/Yu+mNhKKt2C7tJ+
	 F4pzO+0pvJ44rlxohU7tCG+xgEfC1MDMTqYrKXzrNh8x1sRAum2JGezhtcUsTBqBd6
	 8aAdyVZIZfDQtoUP38wwFEsxyQ74Cwi7T8Hyjx/cYXoUtU4Vt42P6BnlHzT2Z0uRSr
	 WMhm6gFe7Db1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91870CA0EED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175609499357.6541.13309088557903002733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 754387d1428e4465f76674a381b62f0cc2ea8f42c1b579f21dceb529313d171c
Date: Mon, 25 Aug 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756094993

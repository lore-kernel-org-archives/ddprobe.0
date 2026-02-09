Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260D434405C
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770629634; cv=none; b=gEFrrqlovJ5IhkHz139tUMP7i23TC1DLcAbnhiGrXxp+QX3koxWS3i7OnXBBcP1DD+WYYEdbFS7Zly1kh8ZvHnpaN27ZbbOF+L9K89QbdrWyZoayVHkYtOLuJ/6WhB8zZHIWPRy4v8E4l/FHYgBbndkIDA/mD9dYFH7eMUfe2lI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770629634; c=relaxed/simple;
	bh=QsWJTnGEgNENj8rCO9wUudlY9E9l1RxZm3pLZGrFWw8=;
	h=To:Subject:From:Message-Id:Date; b=OZxsfmXdUxeUohuEn4oj93Lgr3EmvdN99RmDSgq4IdAY3oismJDWfvfv0yJgXzc5+KRiJhDY1bYUb0n9oTsDxOXDFA0az293WIAThuJDH6A5ZBYk4w+qzcdP6ZzmBH4a+RkpiZWIbjiS4YOlRkUPSNj/smhvnyrIX3xRJqzDx4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Laokjo93; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Laokjo93"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C840EC19423
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770629633;
	bh=QsWJTnGEgNENj8rCO9wUudlY9E9l1RxZm3pLZGrFWw8=;
	h=To:Subject:From:Date:From;
	b=Laokjo93MrDd7fQwrlF8dZbAtsELth+XbGccLpM5zwiRWpi2tJPAL6Wrzo3LnpUyn
	 inypngE4K2eF/Lz5ioa+TCDkHrT2FALzumQktRPZNrDvod0OdO5GNjut45PTtjiiZ0
	 EfG6BRjNV8yOFQcBpiarSUFE3mv5b+JT6VAnRYnTdd5fm64F7Smbw9Wk3xu9ey2ws5
	 QxMk6Ufbt0X3BMXsM+heOM5bmu7m+nr9CjSgb31liu7SXZ8jJJOdfVy9n+4I7uLhv5
	 S9S8JWf9Nurc4mcZEbs+XN8NZJ1nkTvxiQkhj3pt4ZdQp8DTPz//lbNDdbUBLNMwgu
	 irwEHbTUKWURg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FCEE7E0AF
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 09:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177062963368.7464.7153384407504016138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe06acc6bf862abdf16a642432317ebfca93853c38129ef7f957dd9260719b2e
Date: Mon, 09 Feb 2026 09:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770629633

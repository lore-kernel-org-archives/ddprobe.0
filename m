Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E492E2DB7BC
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 12:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767874435; cv=none; b=dHj8vyttApMQZsLFJ61J3mwYxzOrUvbWV4P8lQ9CuwwyMsC7D2duAwf+9rLh4FsQGUNTpa+kWwNTwV4W5OJIV3r+0hS0s2bRBFRGb7tylC/NrrFtO0WkGN6KoH7OgUG+SAPngKAjH9O/Ijo7PUpSM00l2V3TJ5CnpxbYyEIyCd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767874435; c=relaxed/simple;
	bh=+Ar79PWynJ4Pjwzvl42MJ6GWKx+jIvH8L4EgB3NJY0o=;
	h=To:Subject:From:Message-Id:Date; b=JsGhoDrdUV7IhyLlZGMvhT8bywOK4Y7KututLpMBsrAMJj7wR9gm+J+xnwuG2FZtwRwxkU1MJDwlW0PEsTnF1EsiNUd5gWlkIBUG0iK1XElj+Bk5Ap266JpY6vg/NmQa3LZJ5kuiv7qqaY6rNV7WKTid5kv5l2hhjAPd4MGc9zs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fiXVyEee; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fiXVyEee"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C0C1C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767874433;
	bh=+Ar79PWynJ4Pjwzvl42MJ6GWKx+jIvH8L4EgB3NJY0o=;
	h=To:Subject:From:Date:From;
	b=fiXVyEeeIaWDH/7hGqjsftE0CS4naEEM0SvexckoNA7QDig/sdkMi716E1Iq17a37
	 QUj0IE1yUA0NuclRC4bjadRCC28TemlpQR+509Y9bXZegaGWhsepIlIajoq2tiV7TJ
	 majTVhOp4EwMDSoxUC56wq/2O6ICaI70wE34uAX/GdJoiBqLVoRTWst0a2jIUqBxyB
	 7+sxgIUH8+Pa28tdUIoFMaDt55a91u1ZMb7W0FCpq0NLDYHZR+DXFb/mtnA2HEN1/9
	 6RVVia6UdVvDukdl+IGp7sbsaqdS6yUFasS1AtWyAVYSwCuyWkwRbFNZVhTYN4r6Xd
	 RJLCOfjIVinDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED5DD185E8
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 12:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176787443357.12770.7408407483300654678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fd6ead49690eb4f7333934e975f19e5e7e1260e66c896d0101b25aabe2ab0f1
Date: Thu, 08 Jan 2026 12:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767874433

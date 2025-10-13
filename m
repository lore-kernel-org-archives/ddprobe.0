Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA0426F2BE
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760376594; cv=none; b=bdbiYzJfS6p0ePH6czB78bRiTSoeSD1IB0l/W9awsiBtXv4vVFqCGpUZahqcBtISv95DuNKlI4CsZW4aA6Fw88Bz8KhOyellNofRw7GdoicdB5uXlSNHUA4k/IzMqXvAAcw0eKaCKKiNMOVXq/cOTXjp5MwflV249rP0L6O1EJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760376594; c=relaxed/simple;
	bh=vEbC72pcoYK5SqFLzWaTqp+Y0UfE8idhcXWn6hZZfCk=;
	h=To:Subject:From:Message-Id:Date; b=Ka1DQMA4XFXzSU98LuvQONY6XEpgez5jUJewoBzpdNh13tRrEMYrG5DBFT2PeKEaqcFQD8wnFNEVMe+2bb1EeaJTiin2fOYPNs49GeFFK5j9mD/qsIhSZtuH8FnKqhLB/TvdbhLBdNn2+gx2qszbVh6lqKUM3B6bjQoP10wF0xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oZJgKvsk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oZJgKvsk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18E5C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760376593;
	bh=vEbC72pcoYK5SqFLzWaTqp+Y0UfE8idhcXWn6hZZfCk=;
	h=To:Subject:From:Date:From;
	b=oZJgKvskZSnD635iRH6V1s8lnSHL5Kxp76RNJPoV9F/IQdOCUEVfQDaejilUxDieb
	 4SgIN+tUAc292VMXh2DECzgJr81kqWCptvSBXW0THpA319Jm4kltW5/NIHBMuEcO9L
	 9R0aiReS+jdz/8rvrS6UnNigSSDWuN3Ly6KJQCDlBIGzvXhDVmrxc5HGWwOU5A7bU3
	 r2llEnU21NystbAnqSrQkKHdcdUZ645mS2aYXpIgYlcvMoXHLa7pgcKv0e0/p2HBur
	 W5twrZbrEXapcKSkSbK1hm1h+t6RgrteekQaJr5M43Izx/wacSzh0FyynT4e185pJh
	 CdzQs8LaOSwIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F762CCD183
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176037659358.20113.290348664845951554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 243db7b2acfe4fa3ed8cbfc5603aae7f65bd270eab73c9e0b48bd209b04c545d
Date: Mon, 13 Oct 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760376593

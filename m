Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2560B223302
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751109594; cv=none; b=XsupI99i5lWlVzbQA9fr8qb6uPq5zcmT5ybCa/wvuPyCWjSEjZsRQRgXHcZV/k6PVbXzYIsSaMrndZzLWDV+3Z6K7exE+AEdsUG67cGpvxnhMMw/tnQEq/+eRFKz0x+hRNnODgkPBe2junfSq2OhiAfI3insuvdVlx8NbB1AdIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751109594; c=relaxed/simple;
	bh=MHKxJaPkg9Tl8LqgC12D/F8vE60hF7MK3bSmfUGVwPs=;
	h=To:Subject:From:Message-Id:Date; b=gm23jSOpuesZuqGhDzss/1qcMtYL1F+xw4knN9ZaUioz36z7R8UeA3jtIJI7J02JMavaBdBqlZpvkYeYQYKjJaFzwPReOCBJaaMWVSnRn3zo0aTzmR7vEdK2Bu4e7ctRStAlRClOYONbI7Pj3PA5y09bFwFK8CsmH76UlzFaEC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jfm+Q0zv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jfm+Q0zv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AF8C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751109593;
	bh=MHKxJaPkg9Tl8LqgC12D/F8vE60hF7MK3bSmfUGVwPs=;
	h=To:Subject:From:Date:From;
	b=jfm+Q0zvFK7bNKVSZva/cq8jZ60KTb2jFdmyDC0cDsJi2u13pJCG/J4GJ9z1bX1qq
	 bUhCA/j0kEXWdJ3RD2i3lzg5dHTMIOO5aMZutYFwabD/ZtmIy8ARWB0HhGI0xjdRGq
	 E+3f6QxzEmANZHi9T/sQNfBQbOe66RR6nmEIhzzK1imnKseWc9OpkdlFpY3hDCvaRo
	 Sepp12/FywnHZ7emuMFt/FmX5T82ELkxn4kmKXJu+vJrX4QEFh+FvrxVbujq0WUqOH
	 MFeD8gwBNgYCRSXbKV8Nsd5SDyGVoAI9EaRYiJL+xvWkuNw0FyDKOBkhA3KkHfHuA+
	 Oi4dxAiTzjEUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95852C7EE32
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175110959359.16151.13107269948980881334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af4de556743d40d9246f4807fdc0867c4264fafdb85f7d95ffa10f1fc6f441d1
Date: Sat, 28 Jun 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751109593

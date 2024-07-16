Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F7D19DF59
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 14:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721140523; cv=none; b=aPXEbs3HW9HskApZJI43wKQ03AXdsurIXn6pAtDpUPhATp3DUkBURTtbbZPqNG2+9T0OkBvRV5TPwtYhA95yE07HNPlVxK78rNRspZmWVdOUqAZS/68haszKm21bJNr8tyxPA+9fhxcdYp6O3tsp2SuJSERwLgXHeWlLRjNO+jQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721140523; c=relaxed/simple;
	bh=XdZ2sp1AeHbEZ9fei5x7BWOfGGdyzjKmgDZnu0hMlq0=;
	h=To:Subject:From:Message-Id:Date; b=FB+i8fC1r48xSX3TPV98J6QKTNHX9MttAT+u/HhbOgjJnkrAKBMyEvDr6VI1EGsXrZZk25JjboFaWSyFSjSw8WjDSIitJ7L0XKwwpHm1TJFQqZBzVBY6FHrA7q5OnVceBDom0eOcSupG0q50P57PnC8xUU+Tf2u2ozXpn0CvI78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qHWUo6mE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qHWUo6mE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D30F9C116B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 14:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721140522;
	bh=XdZ2sp1AeHbEZ9fei5x7BWOfGGdyzjKmgDZnu0hMlq0=;
	h=To:Subject:From:Date:From;
	b=qHWUo6mEeGyKNzWguFqC1LJislPFUSdYiAvr8NB0RqjBruF6B/4k7vgPAA8DC/o0/
	 QQXVzcF0w83J8pbN3fWeWXSPcDHJ+KlX45kOsBXKR2fCjVhFspa36z0bI6f1l+RiiH
	 G/wrJLc8OWurtQF3vVXK1ladK64qljV5E6qc2U6Fvy778K9E9E0vQpmnWv5f3hGtgx
	 7o7prhxCDXh5KlvNIHuQeXbKpzXY7hv00T6XHl/kwrEBSX05Hj+cxHwPDWgsFHBfZe
	 K9rI7TvtrSpDTD8LFkr6WyNX6OREFvpfKvzWL1HCtJClK72ZiDyQA9QGy137V+Rr1V
	 JmL7KTujLaaUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF2ECC3DA49
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 14:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172114052277.15057.4509251399607352627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7388bd89c973c2bc7056934365b121ce92e68fec409a0487414eb07694a59d1
Date: Tue, 16 Jul 2024 14:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721140522

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54AF44C81
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 06:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715580743; cv=none; b=NPuxh84asvI6sFzCXqkwcYiOEAkBLlAM03L07UsCHrDpGZQmF8nj3SlFdt5cgUz9Nc2abmiKbGSoGwbDULYFZpXunxC7q0TSZ9ht+FvcrNp71DM4bT7Kt7pwmqhJ8OvY6P6fGYmQHTza/Q/ztpAtT+AMkfC5X8/XWAI9TH67uAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715580743; c=relaxed/simple;
	bh=E/wYx4ibAYmSD4BVEoH0tBrtvec+nPJKyX9SuSFsGbo=;
	h=To:Subject:From:Message-Id:Date; b=LkybdcAbFh+nP+OCK3oD9xp2noQ3RDJ6HFdpmQxYJRAAI6wpFlNvATLD/tMNzYaCL1PUaM0ecz9FX3SQ4KThqrJEkMK6gG2wBgEekRb7atk/tmuhMPFra3qQa+NpLA8tPoOQ7wHmSjqhVS0eXnJor9RxHu+jmkCcSzVVeJbyjss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=klXgPWdA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="klXgPWdA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D46DFC113CC
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 06:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715580742;
	bh=E/wYx4ibAYmSD4BVEoH0tBrtvec+nPJKyX9SuSFsGbo=;
	h=To:Subject:From:Date:From;
	b=klXgPWdAa07gO0Xn5uKf0NQ7if72YounR3XfMgutMLtQC4P0CMsq8Xqd3uhjuRAs0
	 naAA2LAfBi+IwMA3M/jqYlGwjX5eXu7lbZrwLKB+OHM/3oPvKgXitQJekWcMiuQ8nt
	 ROpDbaRyeVCVVIS3AM4jV76tSwbL4NQDOTfdHdJ8GcBa3i3GRf0vRDXsUYPTJdxNOF
	 Wo3HnqKrQ+qvD0UZlFbyHS2sjpAmMfdZV9HmdKswkGBj91R+mqd2NmiGd6fzyYUI4h
	 geudEjg/wBKIWiPViE1qoeuC02cCT0oFsex3yX/f/mHmwTEfbM4Q1URiy5B6nAG0NK
	 svoGB1NYR3b3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE338C25B5F
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 06:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171558074276.21884.6272172116679114814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e6b459f5bcb44cd5cc47611f1e0e5de37a8d97c3b718f249d75b7d9ad64c7a2
Date: Mon, 13 May 2024 06:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715580742

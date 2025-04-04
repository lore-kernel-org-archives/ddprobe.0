Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 425271E5B7C
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743770994; cv=none; b=q3v9GAfcfqIttQY6u0tHYokP8mDQt0MwY/hqwk6H9hM6Sb75lXR33QSbCz/RzU2hMf68TMSbH3G6G+sIE2Uo8T51arBSqgxio2yQ9i003fE0HHhWW/fDS/V+ZQuvvAGvPnsAKofy/cEop4l0VZ7R3bfmDE7MuEwc2xKpAiPvAwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743770994; c=relaxed/simple;
	bh=7vjqHkVdExNQiJsU1ZN7dkumrCp8KVbx1HiQSiRU0r8=;
	h=To:Subject:From:Message-Id:Date; b=CRN8EtGFMWIiqMg2pbulw5aMAMgoXMkZ045EFpfHQWE/HiOd1ycmwV3EmOWvXlwT+T5DP/sXLvcC6OhMptGS1STgtKhtOqGmJ473LR3kUpqh3YIqgWtuR+wY4cW9ufC1XMGGXdgYVBDGgNl4nWIDkpnWJXYHBFPZ+4vGw1Ay/Lo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qHP4GIhK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qHP4GIhK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6CCCC4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743770993;
	bh=7vjqHkVdExNQiJsU1ZN7dkumrCp8KVbx1HiQSiRU0r8=;
	h=To:Subject:From:Date:From;
	b=qHP4GIhK/v53SL4oL9GIMMsOrBW8imfnNJiY/i94TAK+bY9fJAmi7EH3Fevjiv/eP
	 +0V7VKWWlLQTv9b2TvqBO4nZJOMpp6HwvH95mEbMMbYE9iUk/jsugU4qOJglUqawFy
	 GGQUNNkYdsPAqT2bqCzeYJSm8XYQuR9NdRepRZe6Gn5Fu60fkMmJWQKcWGvqBxmMkl
	 ekj9AMRa/yjol3mGkA9NS2CUswdStXEbkSoIjKjea1iJedsRiFdtI2Y5s11bh+IrHJ
	 C1CZp2hcuRm4o2O6y0Aw4tWH8r2FwhhBx0kcB52rFWC6YpJRDeqcd7EIqYSxmJKrEE
	 OXuohPn1t0GnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A41B1C3601E
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174377099365.27207.17295952178075400156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06401095e699d9d6f7e43c895d4b1577eb50a61efdaf4f812b7e2764b0339583
Date: Fri, 04 Apr 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743770993

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB54215046
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742197194; cv=none; b=DEeCSoVUpm39GkeSbsPUMPX0JJUHvCb+kXUBsQi9eBp76q0TVMRkbNxZQx6qHOUyZb6+c6uXLZHTdxUOCRzMBgQzXbuQitjXDXj9IMv5uTgat8gNHnPMgEuuxLsESugArnmaCUz4lAQCt94NQ4tfZlrBuK1k3vgiJ6HHpC4+NbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742197194; c=relaxed/simple;
	bh=rLvrD8DG+i4S7aOu1+wu2LafiJo+jE+I9TWrQfnFGyQ=;
	h=To:Subject:From:Message-Id:Date; b=dm59QUx71hg/4K0nUZ46Fynb9nbfD/BmJW7EYUe433M3sN5XLaFbXHZ2WyboW/tMl6oK/Zcg2WTFEmIZzgmcREVrOp6Hl+OhvU0/ol3wGSnfdDxGVJPW1gkABZiks0wrrOz/wvV4q2oGeQnvVstzDr7SclkjrZfHZ+e8Mj1BSRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R1Bn0rZz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R1Bn0rZz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B28E8C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742197193;
	bh=rLvrD8DG+i4S7aOu1+wu2LafiJo+jE+I9TWrQfnFGyQ=;
	h=To:Subject:From:Date:From;
	b=R1Bn0rZzeWAvQfTcDZFNK++52zP+Jv9L0MqEn8xNqq7Duqt8nq/r4u/XKQ5RvVTzj
	 5Dj+fO2k6QqgAH36RfRl5waV6aKE4w7NtLHhduY1lJ8drHTDLIIYcqs9YTGbOF9auC
	 wGKLvsEU8uQ79Ny/GfHjZH6sNGbrSMQ2+lrzgaZaHGhcU3M0PsQIujAo8vHiQQdbN4
	 /Euuxe6oupnVZLAufSLUmOyc4Z/kh+Ibqpv0XPTXsvwM6ELMk7JFhxxTrdypfmSrIN
	 8YfV0WGgR9YPHvsm+w0JhcKQBdH/1SGF/M3KrdMqE2uS6gfKNwrwzwo/jzE1UOhzf5
	 dB+S6dBAwH2sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98375C35FF3
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174219719361.10394.1065229409322164238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 376c593dfe6f3d699cdcb8aadb17b7882528679cb08201bf014bcc0d5a0dfa5d
Date: Mon, 17 Mar 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742197193

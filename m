Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F70E370AE5
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788262834; cv=none; b=n4AjMn9ZWrumgYGljMDK8JAf4X9h1gmPexW16vCn+uMOgr2/tfw7lsEvCkKPExagy3W7esLz6J1bBsCsdOCJKJ2BDmtaqUov5Dzj2RfQ98wXK7BDtSD6BmQX5iJxkYW2o+DR/q8HEG/KcT/Kpdn8VKzOM6M4c64i95OiDmWDkXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788262834; c=relaxed/simple;
	bh=mBwt6Vf7Re+Y8edk3N6CGaN70okTFq92AtGKHSn97WY=;
	h=To:Subject:From:Message-Id:Date; b=czbNz4AsNRYto/zYl24hSCQHGhpqxsmpLzflINATHEYT6yh6wsLpFjK26gw5ybZP9tC9faQAiKQHNN45dnua4nqsuroXXf8M0Iue7dIUwYiIBHwLvVQm6GnTaSqucxj/Ukn5yZ8bXGNR0oYymc/vS9mOrUCmjwmtpt+4JG/N6Pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gXd9qIBq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gXd9qIBq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D35F7C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788262833;
	bh=mBwt6Vf7Re+Y8edk3N6CGaN70okTFq92AtGKHSn97WY=;
	h=To:Subject:From:Date:From;
	b=gXd9qIBq8GJsb0tWLSkmRHo8RoB9EJIn/P1ThYLuVtZ68Xf+WUwrAK0Z9set14fzs
	 ydQJyTfHQyXOEq5jl8ig2q3I5QaePj/9BZ1WuOc6suwbwLhf1a9bZAWIclZ6y4LyI7
	 UgCgLw2hIOi4m9pPGCrMBfT5UxapjQ9ei3bzjPagbiRtE0Z15aHhdlW7HBxTGNcfU6
	 tGSg2NJ8k2fDAVI8dKMwbWEmq+dVNdbzQOagqIRabLOiGomD13Iz4bZJwH1SONWPNf
	 a6Amzp9POVZRHz27rMGgzuJljHU1wwkXIONUiLwGVFQUNf1cWClFjkX0MulmshhP2K
	 vKkiI7yy54wuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA65C61DD3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178826283369.29782.2521508324481336496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 822cd73490dfdc59b2df18f1e56021e03f8226a211b93a76f3a84141bde6fea0
Date: Tue, 01 Sep 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788262833

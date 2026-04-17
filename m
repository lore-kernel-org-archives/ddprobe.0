Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE013451BD
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 02:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776394654; cv=none; b=EYw9/7ZZl6GOs5vz7F4/tfcfh7v2hEZ2IOllce8JxWKfDsvjpRfiuoKYgMseH5L1ZX/PLlmqW21y3uqSdiASFOuG4mcX9/tNCydAB0anNHyrceib5kKVHuZWgcKgwBSAQR6s6YvFu+YDV5g3lnAOj25vfWkIjxgYC46SHNDki0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776394654; c=relaxed/simple;
	bh=kaZj7X+h6grfGV6ht2QupOEgoY85cOZgDnAUp+bMjog=;
	h=To:Subject:From:Message-Id:Date; b=fB3VqePMQlfBOCOyFPPjdkjleuUfIzM2PzxywrhCU/xbH9coggcrVIiKmj8ZvuqxNzmDLXuLHel3ygXq1g/kqm01YygajJyEOTWyF012ELwtRJqKqc6iusCkezeiO7lxO74AW1ZC6Cdw6cyNhhbfwUwrA6SOluHWIAgiXvQT4Bk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DTeghwbc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DTeghwbc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBED0C2BCAF
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 02:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776394653;
	bh=kaZj7X+h6grfGV6ht2QupOEgoY85cOZgDnAUp+bMjog=;
	h=To:Subject:From:Date:From;
	b=DTeghwbcKFKSbnrvp8bYdeiY8LA4J5cOhEUoicak83PCcmRwUEfCK7/kWyr8TKpT6
	 LhYPBSpj5gOmeNnjjWYQowKBa9bV6W5WrAzPwXKU0fmQZif+oEj9TJK+iVHQDWyCDq
	 RuT8D3khIqqBN0l8ROE6ho6Gm8d1kydf5reG+2bIIY4Hgy3as2DBTIE5eWZP6UnuV+
	 CXvLEKF62Usxx6uhBAf9tWkZCHadr9iIXIb/ZNfhWSYMaG74wciumEcHJKVLbDbzlx
	 znYVYTDXQQ2drx9aaIZPSp00X8DvCsIZFu8+QdJu5trMmdApKdNZdBZkuo2/HwXutS
	 cjaM/IgzVp3Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA75F8E497
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 02:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177639465369.20790.11733336308912629938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7626cc9372fd2b93f2f32bed1da0bd19f70e63209037617fa0be18522c37ecec
Date: Fri, 17 Apr 2026 02:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776394653

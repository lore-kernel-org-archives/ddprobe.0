Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5307C27603A
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785029434; cv=none; b=l323AgciJbeCTVevbuIbJU/k1BRvLvxAjyAxlwNhtaldqXZ2rSpR1bdXSW85gsJ3h4k6EKd1g86Wp6gckTDyq0LLMjtlWiS965C6Nubq2UE8GQY3BRLNxMQP//PsblirATbIyyxjGrB/0q+YqfcdRxYd/HGMnbUxIG7Xj3LNnOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785029434; c=relaxed/simple;
	bh=Kx5+w5uuWVJw2XpZNm9y2XFquqw+oQJVF1CnsbFLAmY=;
	h=To:Subject:From:Message-Id:Date; b=XLrQP5kB0TV9oKhMrrHvXmr2XQW07siK2G3Qjk8RHl5lrOk39SanRLPfN1ECK88xFJgG6HWrpTKfvtTRWyJxzH1seoov53PxETzUXFVT0/519R5P0TYQ+2qVzQKxKYUQKTkiyQK6vJms+UIpMsWC4KAVrjmWMRxzv5PcLk0IP+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ntju7KUx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ntju7KUx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB90CC2BCC6
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785029433;
	bh=Kx5+w5uuWVJw2XpZNm9y2XFquqw+oQJVF1CnsbFLAmY=;
	h=To:Subject:From:Date:From;
	b=Ntju7KUxxJv2kTHrODD1PNp1YdV/XW8iUJtKkIgMDy75EjkUFLLyFTea56mkrPLsV
	 OjvhPqwsAklTmRtjvwZeI9Xudkc/pJ15wh+iF9ILIbznsdbSJ3PJRdTLO0pKGIFCBO
	 D4aQrzFOioARq5AvxJxtzc/gti8YD8Ez3iQCsphdPn7gVxAtXSInwQPSocVB7aKhfx
	 4owLgT0sFeRU61GBJJqapTvHQxWfL5hU6A0B2g/Z+EbogmpzoeEWqqILK53QKKEWRx
	 aj9LfSA/7i304wxpKVYnTXgd9qtR6gnSDIGNwpJoBiCIBVWTVgbulnCh3+0YXn265J
	 5c7x5UNQzS7nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A840CC531D0
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178502943368.13549.984764108857673439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f0b87276824198d4ba86f68124fe0f8f1740e602ed17270858cacbcdd9a622d
Date: Sun, 26 Jul 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785029433

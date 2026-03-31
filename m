Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 039E93590A9
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 22:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774994694; cv=none; b=ACBFwrOTXIO6Rz3C40cquhEfmhcvJ5JNHH2zN5IQHnPgGfik18OFgXN81CteGnusFdh2ZJB0uxrvf+nW5JVcwhXxdyXPnqXajre7zh8s2fPEcTeMEKNMrNApGkfNcvhGuZjVVlSmLfiCiTVstYR7MEFk9ygoIKzf+1dPGtBV+7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774994694; c=relaxed/simple;
	bh=xPe42xyw0WHk/FHQ2iYDQOk3k44jCQcKmTVYzK42Qz4=;
	h=To:Subject:From:Message-Id:Date; b=CYYZRhf6JTbTjixTv4KwZUwtwHiLG+axYJbykvdSDkt8/Ua6mzab8tfT5cOznx6iRUqXCTZuOXbtKRmN/Qe8T+ohjGnov/SMZTngtT94J2eHPW3y/H3RdHkPMEQoVXMY4zsNXVParJAGTMmH62afndwmsp946CQexbe7Ix1OIb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hMvHKgyp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hMvHKgyp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0564C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 22:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774994693;
	bh=xPe42xyw0WHk/FHQ2iYDQOk3k44jCQcKmTVYzK42Qz4=;
	h=To:Subject:From:Date:From;
	b=hMvHKgypLyDgYjwnuu796L4bGmMzIvjqs5skorkDIA7kjH0ajtKpGQ/Jf0amS/wUU
	 9lA3T6gLyq3X5Ud9xo9fHnf86M8qllQx4RIGQo6RZl+btPdiHvc6bhgz0LlA/dosgm
	 X9hqQNsi8/lq4mV5kp/2bYgdX6l6mliYR9C94bpnktpqNBswWXl0VfGWhGJF4RUUlw
	 jMLC4WtO4BcJ9nFlCboR8s+8xDDXg2RLELFkGwZXUlhgBd6LjMmWQmnEgMMAdEOC8b
	 aVdtq5tW83yE779YBzWgIUCjkXWw1Dierditey5iyz897eliMsxofvvPETAlVXk/4p
	 M9OeRID1VoruA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9591910F9303
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 22:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177499469360.30946.2293442483998053833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ba675911574592377b2635fb09f61021155faed08a18ae9bc7de275d107e462
Date: Tue, 31 Mar 2026 22:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774994693

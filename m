Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D28C2561A7
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 06:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776493054; cv=none; b=TDYnMGkvbgyhPL+LN4Dom+0+uBQydCfC3s+IX2OcX5GlvDLoA4V2wNVK0fNG8rt0+0tVOCt/UvOPtxh7EigeieGaj5v/eCRtw0KytgxcRknUXJZibIXkSPTSas+kOsx73Ec93+0umE8FY77DMo6RQ7b5tHlHp0cP9w4M5LVMsOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776493054; c=relaxed/simple;
	bh=e6679MpYwBq21lT7ktAGN8+W3Tu+uoJGgHmYoKEDTqU=;
	h=To:Subject:From:Message-Id:Date; b=IL3A+D5FkKvumqP/0686US1evg2grKIGrBDJgZA2PgDuoDL9Kh5ZMDlOlFpHVOtQ71Ataf8Bfu794/OnR6soIrraaTCZKees5qMycb4DBEBFXlbBca6vR7QIkOq8+e+caUYO53PvzvJhgPXPFakUF0o50TELW0+SiDCVf2m5r/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uDItGrnx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uDItGrnx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C287FC19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 06:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776493053;
	bh=e6679MpYwBq21lT7ktAGN8+W3Tu+uoJGgHmYoKEDTqU=;
	h=To:Subject:From:Date:From;
	b=uDItGrnxCR8P0SLh03w5PtZjOA8n/sYiM5MwxahRvW1UvWR1Zp1NUXd8jLaevIX+N
	 a5K/si3I1GiGmPyt3IQ9lCRdzkC4oX70Zzkm6HlblLJ4M1uOemd60/MqA1SqAjbf+v
	 A1I8RpYnpqP8CcK470elHMyR08l1R0jOKfOf4M/EWxWOLSpdm6smEesayd8D+SiK2V
	 Caq6Y84y+tDch+5ObkmA3n+CzojjiiVs5XfzRDkJKnrJdkDiWC6Du5OwVMbjqjs3d5
	 czPDl7C925M9uTz5rXKENIgGf0/w7h/2AyWQ/sioIA5XN6Ifse5SJ8kRoCpxSjED0E
	 nu/OSgeQ8zzsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE18F8DFFF
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 06:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177649305368.4844.13588425598038242827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a93e4d4bf382486a57ba50b609f21a1eff6ed450e5d9fc70f59325b850cbac1a
Date: Sat, 18 Apr 2026 06:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776493053

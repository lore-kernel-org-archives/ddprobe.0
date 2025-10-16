Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A4BD334374
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760626794; cv=none; b=jGIKfF+M8MO50kb1i5rNWY0snkNJzxzaYpPb0tKaiYk3FukEmovX+yH1PDI6rVdpRZhKre4O3YW2P7XbdMMZntRQK/8iZ2A2WelExREkRdqZvS6szcdoaUm/dGWr9BkouVsn/q7uFPz30ndkk/nnZvT70HLuveVWCDhmQUWdoCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760626794; c=relaxed/simple;
	bh=pin+gY0uRs8U3/0aRxr1xTsVxd9Qdg2YuDUrV+6dPpk=;
	h=To:Subject:From:Message-Id:Date; b=VbS4gpyYB0JkZmx6ic+QNA2zU84eXZjlw/aOldLG7c2pJ8bnhEukxfPnkEbkqSDYuICxp0n7/ia/FxS3REhR9bqt8BIHyF8Sib0tISC0eOUwvauzjNxmTqwsnXlooQq737dGVy6OYW+uGKu27QQVpf7Tkpo+RMP2dPvfOthQfqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ObWLqDP+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ObWLqDP+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC1E1C4CEFE
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760626793;
	bh=pin+gY0uRs8U3/0aRxr1xTsVxd9Qdg2YuDUrV+6dPpk=;
	h=To:Subject:From:Date:From;
	b=ObWLqDP+BNRI4vgm5yURTqWUdk34Urf/o57hahIJYvSnuBFj1awJBJZCfnlf2QIQt
	 CZGw0xxZphNxPO3JrKUoN+F5M4Sadti1xItoiOMsDjYgJeRD/BMBy7zRuoy9Uc0RAz
	 frFLvvzF/u/XiCEsTA/ypO64Zt3Qg8JlZ54ZL6xCCyyMb3JTAebEF2XPJ6kjeevqW5
	 jJr6Z7NdrQK/N3TRoxKbn6w0RHM0SxizCgDYqnyWVAdVWL1LpDEJhCOh8jjZ/pmchM
	 gsSBukuW83GDJ3IRkClwJJ798qOVoTBtprdCf3gth3jnEggIRT1QjKxtvQLSIWmyIW
	 u9YdYxs0xGHJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D89CCD1A1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176062679360.24277.819368354588836541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d545dec3c03b02f1b4e8e190ef0f3efdbd259cf76869d3e5a85dd3bb540d974
Date: Thu, 16 Oct 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760626793

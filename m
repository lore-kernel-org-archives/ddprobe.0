Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0EAB1A841E
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742882994; cv=none; b=IMKjzzWsBHcHIenv3VwyFTay+s5SnCr9If21Y3bOWKhb56O8+OxUtkyA0h+lfrVAKrr6y7RRfjl5Efde5xStHpQDd0pvaB6G1xySR60thq01w7fQYarurRvZuVvZB23BS6sueCZv9UctJJYMJvMlMrxKUaa/bNdPFCxbbKUyMNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742882994; c=relaxed/simple;
	bh=YTcCHFtNt2hJs+zU847lV/OLZ+CGeou9sMZH628KO0I=;
	h=To:Subject:From:Message-Id:Date; b=WItFyXKeXTRW2lRbvTmhC+dXn1Av4EprTG5dcBbd1i1dhuK2QyrLLP6hJ4pzcNKxf3pLNuz/Q+rNXc0C3f9Q0aH0hpURz6ARLaw29DBGjtSmrlsD0cJS1YbljIfazwPPvpGasdQzCaqsdnf0mHe+61V1a8Y34OICzl/Docmcwx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XYh8r3Yo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XYh8r3Yo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE02BC4CEE8
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742882993;
	bh=YTcCHFtNt2hJs+zU847lV/OLZ+CGeou9sMZH628KO0I=;
	h=To:Subject:From:Date:From;
	b=XYh8r3Yoc+yTCYnmblUHBA6uawcQfxqtVvx5HuinYgIaXzBdQfCwuhSIvq4a3MS9j
	 jbmhfgR0/YGbCmm6HP6c82fRshF8vZOGEf6mDn9xkQaPgDDIHXB3oM5KpJKjsxahfm
	 GAbinpgayJjF2Bki0MeNboa5WfpeKX/aiQz8wMoQjnm9ncCPhOXtMcRJdyocdtIcmi
	 dP1Sslc47pRjNfzCtsWjzrQjAhslzk+ngSMBNo4CEX5SvZxFPKjLMgy9MW+XctbSR2
	 t4gpxEj1MqhGVey2hmfMn/utjUyiiIfLUxVUXwQjlkt1fAYx8mn3u2mcvu4J/F6eB3
	 BkroGhuTOdhVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8EB2C35FFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174288299367.28010.8960734375713954885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a9940744a53d2801f8fcd1bc9811277cf1ae46b98f8df2cf7891b94b4e0f138
Date: Tue, 25 Mar 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742882993

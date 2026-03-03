Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33469279917
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 03:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772509494; cv=none; b=BxT6EAvp2CS3zSWmRowfHv6Ury2LTHHhlDlU9Cy9ZwuNpLxeq2aD62dWqaLTTc9n2ttiaooVvDimdUeCFYWJrNGtQBu6nDayRil3BesKuePsIamwOro1NFq7yYvvgUHQk/8ctAQGGmUQI2AmkNATKqXmryvbMmc86rEYHx52RI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772509494; c=relaxed/simple;
	bh=tYznTAkqrM/xckLaZ4HjFSMJ5t0jArV1w0/DE3GX6jg=;
	h=To:Subject:From:Message-Id:Date; b=UWoYD5flgC63szSIi87IS5MotRjvYpzCl4aB4+dP6Uh/Rpgl3a2tLYuSg9hgCFqoxB87YdcbIN+8XcWVS5gQWDPjM5jBcf7MoY1lzv+H4qylrFm65MGgkoaHIiv4Vd/Sgj8zCH6UcAy3laguiHK/999kK+q6BT17OVZxsfSkraE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H0DgchmG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H0DgchmG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B267BC116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 03:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772509493;
	bh=tYznTAkqrM/xckLaZ4HjFSMJ5t0jArV1w0/DE3GX6jg=;
	h=To:Subject:From:Date:From;
	b=H0DgchmGCFh4QNIEHS+MlwpLiA1d1jQhlTwZXGdDlLMGUVmfVKBY8CqW37Q3E9qtQ
	 VWWFGj687kW2Rh48sMZt20lOL3OvdnHSCltv3aWdOGVdiUs6+CDgOsAWpJbhiO3YbR
	 CyWP0zgMuASyPrCPaXOPQPLPe6M9FW21Gwy43zD1mjmuGMA6UVOZLX/N8wuwUFGKTO
	 VIUaJp5F6XuTDiNUeu1AV/EKvkJLDjwHJvDDn1MnYbJMWdpPotxJImqZiU5JrxK5lY
	 bPx01Nd2/5g9sz27npd8Ah0FBzL36yR9NsQCQ0xms9L1OlPfzn3v9n7JCs5zDQ1WUv
	 U3jznA4k86baA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B956EA4E18
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 03:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177250949362.16146.13636655610518622180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbe16e833c106708d0ec80c1295d95e78449a0ed93e50f3a3f62903883b5eb7e
Date: Tue, 03 Mar 2026 03:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772509493

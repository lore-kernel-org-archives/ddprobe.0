Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255033590D4
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 09:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768556634; cv=none; b=goZdaiRMjCjgt+/KYw6+jFxGKF3K4Tf4usKEp1eDLSRjob4ZQrj+5cyAkNSNZ5VHttX/8t/EWVEX35MCQxfM5yxOhcIxmvOgc4rNA7vyqsSgM7juQGnoFp1OrIUfX0mZCJyqsKnWyXttey3Yfs4hnq+TMCC36KzxsoPwhglY38w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768556634; c=relaxed/simple;
	bh=/dMDLwAYZwoX+tc60L0TkO+NPiQ2q2jAQy/D90O9uGA=;
	h=To:Subject:From:Message-Id:Date; b=e1/uwKmHp3wVKV/dXPuaFI5ZiC0HF6t6pT8cJlJrMb7GMgCbpUPU9CumMB795MJlF70Jd7HXuvaCpzsTA7Fz5Wmji/Ewa35mwyDyQF7614saDaJBviBAmGH0wJVX0sqgjY3eBVmGYItN1za32BZKLInjNastkOfjISmZSPW+Yfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h5UTNj6a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h5UTNj6a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE11C116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768556633;
	bh=/dMDLwAYZwoX+tc60L0TkO+NPiQ2q2jAQy/D90O9uGA=;
	h=To:Subject:From:Date:From;
	b=h5UTNj6ae3Yvv08/A764GVsVQNajncddk6yqACQ0CklrcW7QkPDlLS5RwEbPPQrnJ
	 g+AcEWUsZiT/UGTIIc7fkL/jpj/6x+laTCQ/+EDjZhMo2c1XTxt1s9oRVupqKym/pT
	 ko5FZMRWQB3j+YV6YusO2cp6kJro4ITke66yXsO+UqK0iiKVpPRDjjJYeVjjCEoLtI
	 A+xDwH2LQb18qJEZMsaUvlXkQnMvejN+MnuXABy0X23HjAsp6+HF4ZACX/oHWFFpAl
	 VGALr13hTfG5FmxuKKYMhqXEAYCUPveNgOUApn8GXDnxcfVb2wNjwTPOO8Io9qPEox
	 /zGcX0iD23Wqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F426D4A61E
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 09:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176855663357.18440.6427942389416047260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f305848d7419a9b32a427ae491cdaaccb7b60bbd169ad2dad9e5e06a3d6c7157
Date: Fri, 16 Jan 2026 09:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768556633

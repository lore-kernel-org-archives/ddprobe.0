Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D5C842A144
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 17:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789235435; cv=none; b=h/fH4f/loxS5JtS5AbTFstJAamu+aL3/dcsfI5C8zuwljVkyFjcwFTuQk0YQvr5hTJ3pn00ncb9WnbOMcW6kjLwbbuG5ReNjyx2zt7GhvkZP3yd14jwl4kMYg89tPIdavRr7mYAYonTV/ANApzqqaJnd6K7kVIJCglAckAw1Wmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789235435; c=relaxed/simple;
	bh=LSXkvCQXTs2tQCvC71I31PfezOH3WxPXz4SBMFHKiLo=;
	h=To:Subject:From:Message-Id:Date; b=piAlIhdS3STmOL3Qc4hSywShDDJgyKcZdNInOOS7Ym5T9+iqVsFWWb2HaW+7t5xo0syOfq6PifWPTG78EQz16bZ74ZkD0sdOmIxq38TXpZh+cHhMI5koloIg1mwji8ieJhWx/dhY0CRTht3pEmPK9U2aWlIzO5vUAH++jryHFBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qtj+m/nQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qtj+m/nQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD162C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789235433;
	bh=LSXkvCQXTs2tQCvC71I31PfezOH3WxPXz4SBMFHKiLo=;
	h=To:Subject:From:Date:From;
	b=qtj+m/nQobXmD46/1EgRXjWzy2BKGjVMFZid+I12I7rk/YfgD9OM4eDYdXmOaE9QW
	 Tj9nmrCqtNCSMOnKeNtpdxMcvgw7PAHyB29CukTJkM9UpawCj9rskxDkrDTfwt4llr
	 MuaEtUubHAv2issnudB4LubBNvycKARfEAB6wo+cfhh4OKa3u7tsqexfqtvcMNJ9nA
	 SPRkC8MRajp+NZYo/sX/hd5UQVFRYq/bEl+G5PWR5libsByw/OiG/jI2uF70q0V/z+
	 gAdY9ZEyqFQMzAdSy6uCSkPEyzVvMMGtmdxg6OluNFA/2pnktSUSTnHkc8dywJjht0
	 YQVSsh04NEgPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A88C88E59
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178923543368.20917.5862597341611710419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e46670543bdd95de90f643b3f9e5bca06827f97121c420b4f4ab2505ec63f55a
Date: Sat, 12 Sep 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789235433

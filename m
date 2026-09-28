Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48BE63955CB
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790626834; cv=none; b=UOpNfLyamxXeIqtmh171gn7Q49/N6Wklhk5LLgLIHj+kQAHIOvz8YHqtfgTG1RrN1pUpkPtmKX9JM+W11nGy4tgRyh1GvubZmnWJAqwX3ADbC7yxVeNVJ3m6M9OeMEXWm2gjO5YNqRdBVV2AYg/HdNqJt8PLuQvpSp8ZW57lmiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790626834; c=relaxed/simple;
	bh=MLfytODmFaZ3a4zzbabsLUEY0HzHO+5QemQjI9GUOvA=;
	h=To:Subject:From:Message-Id:Date; b=XkQ4EHcvimKyZhGf3FHVNrfnXyt6yKrnnzJs5n//4lViKF38xlemZhX930YO/N740x58pLyrrhdBsE0GwYy9yKEAFa0F2uxVcv2616ftN02ByVhBD5qjjfpf6iXUwrljFwjhVYg4Qbrob4JudunJwd2+40+m9BNbEucSb1DbVAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jBAdnMu6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jBAdnMu6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3AC9C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790626833;
	bh=MLfytODmFaZ3a4zzbabsLUEY0HzHO+5QemQjI9GUOvA=;
	h=To:Subject:From:Date:From;
	b=jBAdnMu6GqPQ0pPMXgqovVRzkaJ6Y+11BA0+cepRJ5Ttkd2xcCxSlQPkY7MTKdSWo
	 IOS4kfHWzfA7M+I10uzq1LW6Jmv+XGsLc4IwR/aqlZ2u5FYDWazT1kSayWH0eYQs6i
	 WZpTPy9xA0DLcXRBVEoby3VwTHfw4jtCy4F5eTkT2ZECXm3xLmFiYazXVMy3Kfduwu
	 ZoPkYzL8h6XTU/EY3SEHyB3AXwLq1pi5sH8OqqRDMFwWMY5uMCl7We1zLMGfMk+Lh9
	 S372NPqwmGmzQA5WTqkeESwLW141dG+3KyMY3dGUovN9xwowpHJvVCMnJ92D0rQM+P
	 2f7uoiY88mNrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF63CA5FA3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179062683368.26784.12084526721993844603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5248d2ad0ed4074770314b3ad11895bd0ad766c8b11f13ee58a50aaf7c7a4fba
Date: Mon, 28 Sep 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790626833

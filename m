Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EE861632C8
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753367994; cv=none; b=MBsBWwi4reF0l7lgiaMFNG75gh1bs89K5wwl+x+wubF+7E7q4VObVeOFStGEZkb/wqe+khNUVUFr1kANsOujmQgRg7RTh3oJ029d7vKwK9SSHHYCYrSmz4/gqCLMWmsaLnjKlDWseQtsIX38Gdz/AFmgc5u17T5XNNxqq2c4GRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753367994; c=relaxed/simple;
	bh=ohFfZDoWV4w1ClpRAXCjX5jB3boGpwgmHYE79MzRpl4=;
	h=To:Subject:From:Message-Id:Date; b=PDwUU+e7OZSpkQYlLzANocEWBoAAZDnpH5r4x3MrAFrvWjMpE0ApwdNENxoN2cE3liwBeqgelBPQNLkjpu/TTcjO5B+uMlK9g1B7/VC8EHmeVBNLTu5Jc8jeKh+nc3h+sT3xHaXi+tu4mosuUHwdkw7Sre7cUFvhuCIn5qfNQBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ua+XeGGU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ua+XeGGU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A081CC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753367993;
	bh=ohFfZDoWV4w1ClpRAXCjX5jB3boGpwgmHYE79MzRpl4=;
	h=To:Subject:From:Date:From;
	b=Ua+XeGGUX/b2j+ZMeJIC6khEdqbX0ytcxXzyrr44DXyntJh6l0CbqZruRt5N2+r2j
	 wPA/8R9SPv8Ug6zAl3pQrO817AV+acH/o9Zmq+Wj7Za2SVUey2UftpgYXLO4N28L3g
	 3qjgIJl9nq2YAzVqDwNtjI/EAaR16ELOX1WftIje/LftjWAwfUXFBusMcdMDvgquBk
	 9bw54S7+BgMGqAg+NJREc1NpdmvCVwEasfoX2f5qeDUAfDaK5e1WPNYM8tHKxVC5zS
	 gDsGd4E/1R2am0dFYHBoZAjt0zdqrHHwnMCasXFuSega76/f/w6XvX8nMH8T++231R
	 J4scMPTHpd1vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92818C83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175336799359.17742.10599615414733518369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efd28fd92d86df0c2b717a16463a6308f9ca38ae378a340e3d59f8e1d10a6a9d
Date: Thu, 24 Jul 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753367993

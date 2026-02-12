Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C66261668
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 04:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770869094; cv=none; b=ACD8ns2elUcO9laKrUkOBMIkxk9sYONgbQqqHaxWT4stC2WDHOBFghP9yQ+yBmRU8zY2FyeamgzDXUP1rVvIzMM5IRtwiW83MQClOQ36bHn3t3Z7Tb8ACzs0Nx7ezZKNH4zGm+DxFW20knlY1nSMIbDe+Mk60kKVgAZOZRpKyhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770869094; c=relaxed/simple;
	bh=XXW66lNHg8+4Tv65fHCne3b1FGkRB7DsvWim8Mg0DUI=;
	h=To:Subject:From:Message-Id:Date; b=N8K06o9N24btoghDo5HeU6/iLniu9Zrwuq3EslM55OZ6RnQO0/oAuMbXagAg9F3fGy9lvuUQPEJMgS4nfLwlUDKJcCtJBoPL66jptgFRNTgHlvNNZb9v3yQ40U1+o1KyNpkMgjER9aTSAXtyIbJuUj222SavGYC7PwOj2aZqc3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EbjCC/yE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EbjCC/yE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0409C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 04:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770869093;
	bh=XXW66lNHg8+4Tv65fHCne3b1FGkRB7DsvWim8Mg0DUI=;
	h=To:Subject:From:Date:From;
	b=EbjCC/yEvgFzoe8KTMaOxC7VktZxhiFozqJjvJLjl1nR7uOj3Oe+gkcff5WackTdL
	 3vVZcILYrpFj0pGyHtKuk/d09eeCy2MHMRTzUkhualTeEXcD0PClpPWCpjSN7ZeZKY
	 uE30oenOlNM19Ty6qx7w63zLHxwS4Kqc/LDv2ioIUtGJJeTgZXFtrMXNhDOny5qYqM
	 FVXC+XLyb2xrA1BslipjsLatBHvWICcJIgYtvmz/VnIFS9FsXW5IpqYjl5Ptsltrko
	 1B43Lk+T7COJ7ixO6Dh4OeLrOS5906mwrzD9QIHfl98R/oMHD+gdgKsv7buGYa8+gx
	 rVz3E3+p+Y0Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA05EDF028
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 04:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177086909362.24865.5928108233350684067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53b5f17d60377160c62c15f249a449efe932886fce232167a427afdc0af24326
Date: Thu, 12 Feb 2026 04:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770869093

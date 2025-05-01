Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE7A1E991D
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746089994; cv=none; b=fcB753UcpshfT66MV38f0SOG+/hkx21/q7gHOmIbx3TqRYuloF12tg/tnKUsBcUJdpb2YiUgnnZBku1eWsqDdlX3DNn26582MfCOXu5RfGuQdhRLj9spTeOQOmOOhC1OxwiVU//mS0kzlqf5mq/z/6VuBs34FefxU5zyjxnTmkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746089994; c=relaxed/simple;
	bh=TYddTomeBDLCWIzXVcKbb4U0uX3/SVcA+mkA6p50Hqs=;
	h=To:Subject:From:Message-Id:Date; b=M2Mj9cEHTjsI3gDEtHwaigyFZFRNaNEzGHbJpwXXLVrT+/BbBUaE3YUWRwW+ZWRJ7y44UCCkgnnlziOuqMAY7xostEh23CpsUp0TBNi/AqH8y4mPPGITUW+BERGbeyfVfpqwa5yBQ/jZ0+SVdENvd0Hwa8kRk5NbMt89vGShATY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hl/U4cNJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hl/U4cNJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53B0C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746089993;
	bh=TYddTomeBDLCWIzXVcKbb4U0uX3/SVcA+mkA6p50Hqs=;
	h=To:Subject:From:Date:From;
	b=Hl/U4cNJwzPSx3B3Z/d/v4wNMGZIduDV40mogkVpC6SUAubOYyPWK15fi0XV8cBmx
	 MzBCoJjUkcnSipIhXCN3JByUl+nJTg9uEa3ZGEBRSpGwxbLvlcqJS4JPWk7eV5uSsj
	 ch7Q3k7tlxmkxEKTZ+cBDwo67CHSqcuAQXmkuF4jgyunGF/ML+VJsM/mnfFlaBQHtd
	 oHTXNR4upOh5ikex5auVRsF1EaXeaz/zu/8AdD8Nv4YnitTu9jQTYTDudsdz/T7eFq
	 G0P3WbXCRGvixU470bNzFDmD2pUor/FQjYovjSPmVcZup7FrdkhaIYtWylvSdH2bI7
	 0MyQ9In5a1bNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93647C369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174608999357.18415.10884569550609897694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2928c6750e01a17261d319131f2c1d7a020f1150f899c84e0342813d4a39686
Date: Thu, 01 May 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746089993

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB76846D
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 15:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717513583; cv=none; b=AK7v1BzwmyVwBdALsncb2se0PdnDHRPTDSGGF8Rk36WbPlmmhOaw7YqvSoOYAs2W5MfVXcGZqjb3RiPx/bS7OUcoT9bBs07Q+3D5wB43UUwzMcfYig2JwiT9FX+EGFyZsCx9bfC2wQd6liQ0pPJpMmD6/ZV65aQYJkIP+pDbbOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717513583; c=relaxed/simple;
	bh=oQK5owrS44R3XHzxjt7jA3659TSeIi5ghkReKKKcq1I=;
	h=To:Subject:From:Message-Id:Date; b=H35a0FiABdWx7UR4RAdvRWTX99BIZ3LQMf0zetObBIhZIObEaDfeEg/PToSowsdZgzHLZ+3CqpmHnVnHRUrMljeN6aBpp3oBRe1JuL41u+N207+mkQ/xdnn3ggWfq8Pc9k24unfiLGFedQwECvc/J8hYAGkLCMaBRAy+6Rq8hQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CIqgzOQq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CIqgzOQq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3DAEC2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 15:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717513582;
	bh=oQK5owrS44R3XHzxjt7jA3659TSeIi5ghkReKKKcq1I=;
	h=To:Subject:From:Date:From;
	b=CIqgzOQqw23yBMxbmDz6p7BDgK/q1TeVB/E688QMrEPojhmJhO1AngaTyrmQlA3MQ
	 /XPVDXPnMS+pIIdAhkmISM/8qTRXsn8HuIl0LVO7nVlhoBBxKU5AZWL3GedN+7HgZs
	 fQBrXS3RXki2827UdFcIKORNbJRrtqLNR7tUOO/FpkGOCndiq2UrqjxVONHQrQaesk
	 ZjIbFRa1TR23maEaPw5RwSr+vc7t7VkofMcEwtg77OE+d0LjygTY1yAbDmYc1eoZz/
	 Hsu6qfak9duRI8gtExt46MlVdgIP9XFY64JaDlmMq/4tkxR434KICkpUpBvBDQsTjA
	 JSQiWFbvKwqng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFA7BC25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 15:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171751358277.15125.8155638723413606094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdecddf556acb38ffc89d1f294d42ff4f91c74b794a61a8a7a5137284fcd946e
Date: Tue, 04 Jun 2024 15:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717513582

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B94718C32C
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735638354; cv=none; b=b8SpfRQ1QJOmnyagTMejAbtAuCGU3f93zQtvkoaUETuUIvzaviIgFYplmLa17oRcQi4/hPanrRim9WGNcDM8v5BGJOIuEmDyCovDgK8j4ZK7lUSOfkLGG9bUGjdGo0T7ZuL2C1aJOZGJJbtbxPOahpKg1jLqvdSLg9QtIBlOOmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735638354; c=relaxed/simple;
	bh=xCUNYUAI83Ccjrsu0l7qe73G6NvNg/BJQyurdYlG0hY=;
	h=To:Subject:From:Message-Id:Date; b=VFTO7Oltgh4AFVujCmEc4NVVrQCOal/u7rsbdo93JLhDIQAb6KMoKWT7rrhIDM7zIU27sTJlf4C6TquV8/cgIbJm+mppRF3NsRIHVRLjyuq/ejcjnK5f2mih9/KJsOx5BsJEJqYRIDOBZasllIk5S0vxCgoEcR74c6Ki29BhMEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B0HQV/Qo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B0HQV/Qo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99336C4CED6
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735638353;
	bh=xCUNYUAI83Ccjrsu0l7qe73G6NvNg/BJQyurdYlG0hY=;
	h=To:Subject:From:Date:From;
	b=B0HQV/QoyqVyNRgIF16feKp1HIbd8Rvm7h/6sJcK+JL9qk3FXTHgpeW6poBds/KoK
	 IynyWV+T/WApRLFsFLR9Wsxpbut9NHNqlzYBI3OEovWy85txJ7/kM+5KRgn1o0T+n3
	 Ai1L6PJXk9d5YIqwXLB2d4Q4ROT9zyEoB7JeGoyQfY3TafMFDM+1XuljUOnzo5UWOA
	 Cn1QEgckv+v7SZbJTFbZth1sNSjtAdHKG9Fs5LMh8xKmmYxC7Oziv5BblwJdtAw8L4
	 QxbPXJ1aiq0uKM2CMn/bL9sPyr9yWydtPKyJ3Dqf62JLTlndL3jf70X7n/a1CYJ8uo
	 A7TZ3RW7GxUZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ADFE77188
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173563835358.18409.15201438614582840689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dd5e9223af2531a408b218855f7d3b9819a1d79c10419fd085cc970cfa3babd
Date: Tue, 31 Dec 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735638353

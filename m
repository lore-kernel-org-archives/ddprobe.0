Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6362D6624
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 18:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767637434; cv=none; b=sMyRA/TGgzUVvOjW4syJOgmSn1seYj7pHwORWWU4/HS2kRJdo118oH3Fg4u+eKwAud51raJxPfIbauNey9mkqY/pa/HzOu8AY0E/H1CFSfN6dP+BpY3kjcsYju4SVWQcPCcYO1IO2lPaBxJMMZiY0SqLIteLbiaSL4JOoPznBww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767637434; c=relaxed/simple;
	bh=PscH2wbbk427R7iePCHByJslsdDPbHJlfG6fKbspU4s=;
	h=To:Subject:From:Message-Id:Date; b=SpbDLxZPvQb/QN7IXusTn9lGBY9N4LNJOI5oJpS5BYJlP72O9H0S+7Ho7ARLL1SXk6Z9crqlVkuyHqF0Da1TKtGa7bYjc+te2KBai1iXU4D3jagj9KSXSqyfunujRmKQM+zxvl+cIZpXKqquWqHU+eXLQtnrb/AwGwhw+mW8ggw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mC63pjHi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mC63pjHi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B36C116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767637433;
	bh=PscH2wbbk427R7iePCHByJslsdDPbHJlfG6fKbspU4s=;
	h=To:Subject:From:Date:From;
	b=mC63pjHiah+jzVTWpw29uDJgRsjcbM9cvDAYZbYSmoWzVXcEBWEWDQC8UPZGxlpWQ
	 aMOijSZvMQFenaMvZLWr+RiT33ra91KmiPQmtzUQp+R4GzcfKTMWXdWWT9PZopMl++
	 oQGDA459OaY5ByO+XnaUNr2T7dBrCZvxt23G32LAprYXn2GCpj/UCjPLMcFnCk7AX5
	 CzYQyI3JAJRyTHq0oTCqtcjjwqH/ikzAJu4E2JDzWUg6vwbQdm/Wud2bgXQCCIs0M2
	 hBTRzKeiAIRb1BVUX6+QlYYYhAyWbMCYJdh8ZbWcmP94RiBgaLGqp3uxGD9zymfk+w
	 m3ozRb9FPfeWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BF0C79FAF
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 18:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176763743358.12354.10693322838128007901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f5c85595d6625bf1b62f949c41185ffdb750f9cbcf7e97b482f1d71e2c7fb91
Date: Mon, 05 Jan 2026 18:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767637433

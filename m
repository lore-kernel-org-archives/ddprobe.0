Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 648703A4F5F
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788934234; cv=none; b=J1hdi3QxebV5B/QdQ1bGkSCpbN8DFqVS5D6OTgE2zVnYBu9s4toK9Wvi3tjke8O2aPwTQLNNQUXTJESOCzEhxssEI7wb0L++CYjPnBrzDVd5cYON6J/CVvrGNfCRljlBD6Nws1yMXOw/sXulia39e+PI86uwFSDnl4rxUf9LWYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788934234; c=relaxed/simple;
	bh=L4sh/PmymLGOJRNscSUH82HhS6MKM7KN4aAGyef7orc=;
	h=To:Subject:From:Message-Id:Date; b=ItXhZpgIh3rLcY9XrQBj/cfO0hS79mjVS98duO6KQ3gfMmt4qOn6GD758oXla6VPJkCYSTth0Pd3KTfC5sVSrrKqJ6T/Kf2wvyZ5/vI7yofWkh1BV9aCNuTT7RtozIHygyif9al4gMcOdMg27HdKB7dNzhXw19obWsxb6w5c9DQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ek2zYd3P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ek2zYd3P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CADC1C2BCFA
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788934233;
	bh=L4sh/PmymLGOJRNscSUH82HhS6MKM7KN4aAGyef7orc=;
	h=To:Subject:From:Date:From;
	b=ek2zYd3PIh6DY5trtraUtThpRUiX/GG9gmlHdyfPZfRk/sm2WlaZWbFiGr6bWcekR
	 WxBXQDyeJB5rXI/Y0MqQ/Wycau1Gll0+vwf0hf8Fk5n3NpBbxerVbyG0qy+YYDkT3o
	 H82W8D+Mjw2X+XH6voFXJIIEFzXqJHs8Xlpsp5eBVQgp3c+kfM3GgtzVsuWDciN4eo
	 eynlvWMNgle2WMD5V4ctmxDRa1u/eoZW5cDEup0PCdxqJmjuVnT9EkBQxvFOmcFlyb
	 e1/SZrQA1QfT3xh6h/LMWhAs+5TGOub7nduSIim2jmq7hcXfYoAkKvLl4zPRNmoIti
	 Q5iZftWAHufKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA532C79F8C
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178893423368.11523.12273417871427694637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ebfa7885b015fa88ae46c4191057835ed78949f2edcd925bafad1ab74686aaa
Date: Wed, 09 Sep 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788934233

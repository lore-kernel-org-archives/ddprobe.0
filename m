Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D7D4F613
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 05:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711344497; cv=none; b=R4IIG31vE9aICt8hVJm35LW/5dtJrE4vhTfQwIvltQybxQ3YNZUivLiEvc3ps2GQg+cR2pgg3uWCHbmleTIYShF+jG6EBk35SxpxxnUOc3YpuvLZ9W87j4ji8gQxFPXzLT/PV4AgaI/p4DZeztevDOeICDbcnBuKSr/jilJ8r3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711344497; c=relaxed/simple;
	bh=XXir0dIfTUg7QVczEt1/gzlJEhmnIvCpoRQQN//R3xE=;
	h=To:Subject:From:Message-Id:Date; b=PKycl9YevPd0++AGJFnwANCyHMnNRxuzGmf5mXpAPpSXs4MqRDYCJEtzdJ8Sl1c46Dkl8DEbmpCtbMt9mHJqCm+Qs8Oitq0+DpOa73NAx3Y6+kNniOXuciWNXDoinukQCjineJGTLDwXBFLz22mGD/mtHrjNJJrTZ0U+TUiW+PE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H/vuTeFA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H/vuTeFA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95CCDC433F1
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 05:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711344496;
	bh=XXir0dIfTUg7QVczEt1/gzlJEhmnIvCpoRQQN//R3xE=;
	h=To:Subject:From:Date:From;
	b=H/vuTeFAIr1eGAeM4/WoIUl/Rz/qYh7lFYjIN2tqRteqHYjt1TP/gp2lZSw6tw9BS
	 1tNOybhpS8SGBZZw4WC5De6Dzr0XFt1E90LIQk2KwV7KxjHUlGhK5OqsNk1lrCcNh2
	 UC200o1GPKU7fa4wZnsoKCDg4GiUY3gYXmfaahu5nVfKGJEsiWQ0iu8g1sf7761Ds6
	 gPRIlqXx/dkmDiNTYq0/28logwGBnt8o55bHhc2bb1VFsUxFWE8tu3n9+zTn68Meq5
	 teOABASs7MAjLFKz1IwnqIIsNziZjwolM8tdR3wHEhMxJdEhZ3eyUS7sKnMO/oNleL
	 0Ibb/qaqqE6EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 765C6C54E58
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 05:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171134449644.11650.14022514846200289440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e7e78e2df891a6f965c5dae0f4220249c7ab30e7c348c7ecde805d5ef0350a6
Date: Mon, 25 Mar 2024 05:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711344496

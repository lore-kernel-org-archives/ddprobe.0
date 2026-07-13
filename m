Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B2C14E2F2
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 00:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783904314; cv=none; b=O9e2+dJZEI0MJ9s6isByVWdQke6+qScYWjARAIgWEGieGQi/LBeID8L6qcrAfvZyUlwI4lZK/o9Hlfw1Jbl/aTZjHZbi8VdcYitSu1OXZCrtS3scn4MUMssPkk+RCVxyXUSsU/FN8ptzH7QrfZ4SzddQ2ftnUenM2KdpYqyJocM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783904314; c=relaxed/simple;
	bh=SEg1jY5EZ93UKftvbM/GHUUdcrGVkukkQk5Ui1VJUaU=;
	h=To:Subject:From:Message-Id:Date; b=FAIFeYP33Dh/ojfHtCnbfn2bVwoR1Ju8CmSpE9QKnmT0AakQYLsd7BWFgxrOUcIY7iltVKctoZNlVPlZxgiTnia+0U/7KgeLaF/b0gu4C1H55LLlRyrq4RRlgX82UPSczy8U/Ro9T9SAqfwwSxiZqeWoJqhV9fhYT/I8SVqzpos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nwPWRN0L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nwPWRN0L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBCDEC2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 00:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783904313;
	bh=SEg1jY5EZ93UKftvbM/GHUUdcrGVkukkQk5Ui1VJUaU=;
	h=To:Subject:From:Date:From;
	b=nwPWRN0LjJLcdQqSWOuagHmG6NPCKARxA/T7XXKIR6oA8+sL1u1rvKgB7LQd/hO9o
	 C4AN0zHTeb5XkeEQQ5C0wE/8gNEEaV7NMr3BvWo5MyzSYmE1ADXHd3wIK+q4STVJeI
	 b7y2lCyukldtIG8woYujD43UIRUYFWWamzMPNWGCj8kvpeJE6tsqPXmxOWmlpB4B9q
	 ykzlucoLnGWtEpH01cBmJrT0k9oWyRpT82jEAKtni+7NJQQE+R6w87xQjPzYpyr+Cn
	 9Clpahwm2sR/mgbeUvJWiWeNZrFf/GQEMEJJDbXEgryokAUi7Hn8VU7UHy4VFuO9sF
	 isR1nmwzViiWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9750C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 00:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178390431368.25120.13353318435003252195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 362670d4a9c563a2a1be26df919dd5e530b24d49a18d59b88054326e81c63068
Date: Mon, 13 Jul 2026 00:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783904313

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19959309DDC
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757060994; cv=none; b=SgSWIS5+IqS7DBUGfoz6pnD4gDAitRIv3sZZykHhBCuuwDf8bnJHX9srRvuP7JwhlVJ46lixSgAa/pHeTcxwhKczDIpJfTS94Ce4dQsJiPQ+/4PoDLdQIfmvZ83vyqCf2Ai9FOmK2sHcVKaHQh1rDkDILyUObkLDfBqglmilQLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757060994; c=relaxed/simple;
	bh=8MkSdb6GRGuMwmvjDb3S1Vy/RapIFDAgstPcVVOpk2M=;
	h=To:Subject:From:Message-Id:Date; b=sv3NGvDDMM3Xm7eZi56xTEMzENjxS4EZ/ahiYXprEfIQpN66YS5PjorFPkpY4eNHRMv85BfgorF2q/Gm1qC7ilxZU/M2gJOkk45ITsDz8mOqa0wZt5WHtqWr3+B8a7z88Zqtd2iMIYlHEgZ1k9pWaLy79lF+IMEvZmxNpKwoKyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VkXMaBfy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VkXMaBfy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65F2C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757060993;
	bh=8MkSdb6GRGuMwmvjDb3S1Vy/RapIFDAgstPcVVOpk2M=;
	h=To:Subject:From:Date:From;
	b=VkXMaBfyrSLWeJXlZ0t62r6zQZ6Iji1MHK99Sy07NfKVcOluTYT2MTbzD2IR3flDH
	 xcMVy4pCcEtFVPjNWZEsNCye0G9Iaz4pbv9IMgyNOM9tUbtJWhHd8qan29kUkER74/
	 LLZ0KGhJu83PMGx1leZ81kKjXXx7neWlDoYLusK39EbnE2hC5C5B2m5vYmayKDUwLj
	 13VhYbQhKga3gtMMqRAWgy4p3q1msuF4Dzt31Y7yNsdpfiER9bTU98vpfy6mln8Rhv
	 c/rIzVJhvjEJFve/pvqkaNREmKvs5VxWWdm0N04G6FXGJU9Enud5sipsDaMNQ843Kl
	 j5PvE1Nypk+fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9128BCA0FED
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175706099358.20252.13042061972015362127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d63e26c526e21db91d29632c86fad3adaba8ede6d1108223d710d1e26cbfcc2
Date: Fri, 05 Sep 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757060993

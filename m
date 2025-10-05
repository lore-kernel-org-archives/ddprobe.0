Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3304834BA39
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759668594; cv=none; b=Lq4MsRxwYjBXnjriF2eLPKbdKFB0n+SXobXJ52RRERTgWBldyUtfwKQvJuh1ovZMDBTodsoTPAiMCBvSYb6xebYt4e5Lt8L9cw0SHSIFyewK9NCOI/8uEUpNVr3JB9Fd7Vj0V7S4wVirltCk13KER5BF9Tpvc/bMhOoBJg6IKsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759668594; c=relaxed/simple;
	bh=0zyBqS+XKfBdC4/Nyw5/OfAy/MqaTodCPncxUuIMjG0=;
	h=To:Subject:From:Message-Id:Date; b=FsjjucJsC1Vxu0FV9ww0SuDUGpQCc8IUp1G+yhFCPCY+GWHxErKdLBT+CpwoenIizp7115kkdhMZeQSCsFMs5wAW0IST/by//qb1jprsOCZV0oa69nDDhnKWMl0h3UvxvgxQegFSIg/64VxP1gY04KzqSefxo2NOXhhCxsoYmbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XZROKDGy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XZROKDGy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B75C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759668593;
	bh=0zyBqS+XKfBdC4/Nyw5/OfAy/MqaTodCPncxUuIMjG0=;
	h=To:Subject:From:Date:From;
	b=XZROKDGy4uVeYeSihVTacU7whjcKi9AKY96CBwXCWbMAu9qmZAlwgt1g368fqxcKs
	 pRfOHXPv/rgYwwxwTNNAv8RHTvF8l6zB7msqmcpOa4nfGt4B76X/SFRdUe+u6i7ox6
	 SGaO9BQgXvxRWXDvYplbbBlPfd3jn5/xuwNO+RSUVvAvHTtVrtgyu2IOL+wftMhwEP
	 ExpSZJMg++EQp6Zvcn8AZVR0spIA/XOjU6Z53IlmInRbQdtWDCRJzTy51/pf6oWFaU
	 hWwNMaAIpUPLLm5/s2vI1t7hVznzGAEySPmkyUAup3zKNBQIz8M1LUZ3dYPO6Jo67a
	 SfQaetTzog/gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91647CAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175966859357.12352.80721332056162862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ba0c876a5666a96f4696a92619f8288d2e2135494e882c185100f148b53ce1b
Date: Sun, 05 Oct 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759668593

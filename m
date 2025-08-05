Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70A3721766A
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754428794; cv=none; b=V2/6U1cHGbwixPAcilQ9W9avwJj6q6OnSYCUZj5LcXDm8M+1mridwXWSJLmAQde02zXpn9ORcE1Iddhlw4diteI0QH9c01ShUIZrCLut5annRHiODRgfzy/bEu+6StK3dyqHecoLtCfWfGBXhlhKO4VNVOjuplktCc+u9N2iTTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754428794; c=relaxed/simple;
	bh=PqHhDhLO8i4kSEBZgsTA9eflsgtEyq31v+g7AxCfzF4=;
	h=To:Subject:From:Message-Id:Date; b=Zk0KJzXKSrKatudYYdNjQ1JX0EtN2sJ6gWTYcgK7lLjnXosIwN9WbJs43jkkflwpqxMFOygdc243hW69B748JMQqgInJIrPCZ4T5RtFOX4Z39PtOIPHs498oHvBxWQJpqxzT9oCyFqmBTUMD5UL0/iWnfmBvWwP3bCanDgISB0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ucx1basL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ucx1basL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5F2FC4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754428793;
	bh=PqHhDhLO8i4kSEBZgsTA9eflsgtEyq31v+g7AxCfzF4=;
	h=To:Subject:From:Date:From;
	b=ucx1basLOscJ+MoMvesgTPyhXWYD26rCnur8F8qffbYC8i+xjTWYKPV7ryu3gRrus
	 Sq+J9ru3UZHywjtykH3Qb68Ptbg4Nd78yvY2UeFh6doBKRg9wMKYQ8CZmr219JMCl1
	 AQ9Y3sOZzsQEqqX8yMxtbd7uGMqe7XOAwq54U9adCkG4WfRw3bQHWh/E0GNkqYKm9g
	 KLlJdOCdrR5OttHurXwIu+KOdjy+cFmBLPQDj5Q39uC2YhGfhaoHKEajgkLH2ex3xA
	 jQla41bq61zLmqQDeNJanQs3Cr/l2BtYi3G6GQCZzJKty+AFpI5w3PMWSj0NxXzad3
	 oUs6SaZadJLyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A442EC87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175442879364.26699.8153576804041048756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5600e3f4cd18fbe61f80c1620d5683f229625fae802ce1b0950f948a484e4f8c
Date: Tue, 05 Aug 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754428793

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BECC41BA7F
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790872234; cv=none; b=LAlld7lrjUBPs7c9m8GuJ78611NZwjGMvyV1RkdmPbkTupxauEkF1LynlE0bCu2avdZNc6H1tdFeF7O6UxmAo4bMtPocxVk2fReepEb7IPDWFuwTb6pefm5TaTWmbgbFaLsd2Z0Xsn/PYCsCeZy24gT4QXjE5eVgQ8M4U3MLSb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790872234; c=relaxed/simple;
	bh=qn0oeaEl6rP/rCenwWP5XHhvuX8guRjhiBZJYKxKwiI=;
	h=To:Subject:From:Message-Id:Date; b=f/fnHfct3twg/tYjZ8iARarzDcJ+2+hSN0CfZuD7LfJPLA5GglsQ67usCqDP+UljKDTn+tG4y+/evvD9iSZBBrTtKOx77kYySqIdK1ErwpCYeGXNmYHJUUPJcMbnZWDTE89Abs7nvISX/8TLGC4C460xhg615y/46rGmmMcKRqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ps4zh9MB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ps4zh9MB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8E84C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790872233;
	bh=qn0oeaEl6rP/rCenwWP5XHhvuX8guRjhiBZJYKxKwiI=;
	h=To:Subject:From:Date:From;
	b=ps4zh9MBPAar+VaOuRLgYAFq7Ethf3JnEeq9E7Cd++hERgMQyX0VU9OIJ0L9gyZm9
	 4Gms3ZZXlWtrmsEBLRMo3zJ2Mogdhf4e96xeR5YYp2DVj5iNdFghb5e0+84RfAMevW
	 extSRWxQLyZUTDkFlAgYz8S3lRnfoDB3amemrV/IohyvxKGibfOB+VBpH+iT47oU7g
	 EWoki3Hs8E0z3VDx55j9ZB3S2rFQiFfmg8DBHPNR03y6/7EHVip7gxn1gBqkVl6tk1
	 DGOcJoyU0dy1qfRZVKZzscekQbXV22bgdyvuS30jvl5SGG23cB+u6GIxmw4bvfcRF+
	 10uJbtb627IRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4851CA5FD4
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179087223372.27492.3455744313251345479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27431381905a365a705de3488bfb06b0cdeed81ee45c00bc6d1444f7bafa26cb
Date: Thu, 01 Oct 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790872233

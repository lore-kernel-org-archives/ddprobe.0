Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6050221A952
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738706154; cv=none; b=bFpDgOjzks8AIm9idQ0hB7Pv1EElAPzqYDErap8Y2zcUUhje+6wCnySh+UUlEjgBKKH+Urw4L7Fz0NilD+cndmIgjIDwPETgVUWijXJ+/TIdF+pFKq4V3JNubpPVxzUmEcxn54AwEXhCPCkqf5dRSn971pUY3uE0wM9iunIdxgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738706154; c=relaxed/simple;
	bh=SaZeO/8oofHChpcso3x0a9iUKR2oodF9zxYX6QK7Ulo=;
	h=To:Subject:From:Message-Id:Date; b=iivyapZIw25jvhwa9jTP5R0mdKGEhhGiRYGweSk79InMzfV1QwO9a8aqFBsfodaXyt30uDUB7GAPuHtr9D1MwLPNz2zOPu60C+Ti4TDN3Z3e/37jktiJEDypdvZc2lo68PN9uOJAwbv2h36nGma6CQhsSwJsAmwp9VifCtvh63U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lf2s5hwC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lf2s5hwC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5C54C4CEE2
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738706153;
	bh=SaZeO/8oofHChpcso3x0a9iUKR2oodF9zxYX6QK7Ulo=;
	h=To:Subject:From:Date:From;
	b=Lf2s5hwCLpYWQ0SBZQtF1GAiLKvYmh6zzibDf+y8MleQGbBrP/gt2iU5wu3iNpLib
	 tQriSfJiF/B4gR5lN8eBcFpQBrkqOTBh4ppREY5IWpzD/HZXaymVfruS0wd5gwWK8/
	 GPjc/O93GXq+snC2Icg4OCT/3iwLWsAqcmjxGAMyn8eInIN8f+n28eRUbQs/yQN72p
	 fZMj/ynSrMC6Nf5zXdx7cz1EfV4nmmdeWXTtBEtPJexoSx1fv45r4j2pckH7G1TumA
	 tX0avETcyCcJeo6YJyPDE9zAua1YhvOvMP7HAKrEbUB/1dU+NB4sMV90ODhLUe36Ke
	 K6gKzOzYQ5rZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FB94C02194
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173870615364.1458.1899749138876548393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c49d075bfd8d10c50af314c015431f809c0d03cb06ff75b6630241ed7461d0cd
Date: Tue, 04 Feb 2025 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738706153

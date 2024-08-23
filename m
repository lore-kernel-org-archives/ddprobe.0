Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 494C3B66F
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724374554; cv=none; b=O4Ms4SrkjIXnTZ0eUhB6n31G6mt2bVIvlfQNujrqe4jTbFPH8SZMq38lyWr//ZM7QMCSF+La5X0PPSPF7c6jS/OgJLtpuAbukdfqENg6PRLUDQJs5Ihjxfo74m2ltnOa3tTrsR6nLkkc0Y+DIxhDQTq9D5ek4oqJzMOI7CdvjjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724374554; c=relaxed/simple;
	bh=Gs8ovNlz6obmhYtVtK5WnzX12RsH3uFX6ruDM+SIJoo=;
	h=To:Subject:From:Message-Id:Date; b=H+lEo/NMXtKX7H9nUtfGHZtSjHrdRc1xht/dQLWPEXWnpemybJhOk8fQQN1/D0eU0jDLKyXr3f/gis74BZXTG+MgnH8gr4Y+qe4Qbxvxp8MPJNuFwAGyYsWVbRSTx1lHs6wi6zJhguqRZSagoy1h613CuerHDtN8HE2dl6zwFlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IRIDG4Se; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IRIDG4Se"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3DC8C32782
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724374553;
	bh=Gs8ovNlz6obmhYtVtK5WnzX12RsH3uFX6ruDM+SIJoo=;
	h=To:Subject:From:Date:From;
	b=IRIDG4Se+3sQRE5mQBC1auyBvp2hQSbhoKxG2pylDFdu9j9a7Y8S+tpQkI2eL0zGM
	 QpgDMqH+QHObTMICWBjz2kI1ljW74OInfZcYoqRbDDxJy6Is8dCyanBO4GVSyegncO
	 ea3JL/jb0zORqiVzC//RWzAcbrMw/wweEa0NauDNKLhTWcyj84HHb75SUArUCtvrWU
	 S08VnDlHKpAwnKhhR4+IbkCkAM74asuE77sy80ls5S0z/LrHGOHqwv11KOqa3K1txy
	 ygh1es5uGBGvdZkdY4DIC04EDwaiqhaREss1u8tSuz4sxatrQMfSxxUS91aAuT2zcP
	 oN1aQYboh7FHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DFF1C531DF
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172437455360.21675.17692845329765608499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bca8a604dc334a913b34b54c27c2c5a22f86d34f3955841a4b78a6bddc0e77e
Date: Fri, 23 Aug 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724374553

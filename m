Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC5224DD15
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 16:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779638554; cv=none; b=jChF/U4cLitn+p1LtxwSa7jwfPWvmZjIRE2vpTzvJpBHoQJgqSzsRu2Hk/o+Pqc8UksGrfrq+igdk1dwoHsEpX5hw1Ul+jgEMaHMIlQS0iuutAkIDXQKqnXcGtdsu0vhVGEa4HZ6EpRrLLiS8gT+eHjfC9XHY3TAEufFvmJc35s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779638554; c=relaxed/simple;
	bh=zAASVq/OFwZZvEWlcc1GsfnzE6IEvEIu1Dbr4t8AjiQ=;
	h=To:Subject:From:Message-Id:Date; b=UwVF6DXM2P3BS7phwB+RdwnTdJH3pBlHUB8ZLZ3qMTMaQAxY7RmZ9ms3dGCNeoUXtp4wzzLEHYEIdkb13lAN2dl3B0piia80oT6qttD9pMs3dNWyG6PCuA4ad1q0Ku/xD+owDyVpGzQAvpeVbxXHv1MIj0Ltry7wEkpcUA4ckTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S8BwJulG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S8BwJulG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C88B8C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 16:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779638553;
	bh=zAASVq/OFwZZvEWlcc1GsfnzE6IEvEIu1Dbr4t8AjiQ=;
	h=To:Subject:From:Date:From;
	b=S8BwJulGAoKn4mPW4DQz7yWDrfiq1l/kY3ncVdZp1WJrYXCeDKGR0LwIjFc0dTxHM
	 KyslfNzTohRXYDDfz+O5TUUBPaRS1s4et7WkXoQi/r6YXtLUY/puSMUgwKB4B/5pdN
	 MW1HHUe5GXO96hckE7blbJuGzvmycwxDte1NyIeqw4788iMpb3HrgQy/WurwFncRGW
	 bstzaeGKlwOpvZFKhjhCJiJKiyqKQ/0u59wst6Ag0PEg8UIpAl0JFNL+VfqeOt/tfy
	 Xhr7x5ivKe/gOD9x0EAig06o5PO1ZtU2iL8i/tHAAuH4iiJ76123mUsPGmN81wQQbj
	 ZdE05Gn8jq0+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1599CD5BB1
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 16:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177963855369.10150.5346630057763317099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c990cc73476f1a0e80975ff27b089d795b85e413dc28d6c2d9cca121d636b0c8
Date: Sun, 24 May 2026 16:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779638553

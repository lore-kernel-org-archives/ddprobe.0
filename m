Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C5A146A68
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732980354; cv=none; b=XuSUfkpYU4/ar5nQsaPqdE83vo0wRTJc1ZUX40v2lfnfJ3aT5W9blvXin2Gm+NEKFfbsqFkYf0AATqYxqtA/NNjLLrcJ7co3RKb9OpEzfZAnbfVG54efeF4hF40cjkJgChvNbQLbA/gR8CiP0k7KQ0DPBed0biii1rUExdJ9RFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732980354; c=relaxed/simple;
	bh=V5YiekounQQKnOV4BM3Af7+APvvDZBs2RAjvqKiy4o4=;
	h=To:Subject:From:Message-Id:Date; b=FMEHbaMkIfBvsBstMPNEp0LYRRUKZXUsuhMQWwiAcM/kwo8mlFvD7jfoJDMQPcE/kAEPH1gG9HcvIfaT7hHlLp/6ScGtsl3iCZ7C5HUWYxce9a1v4AC+K5LBCDndX75puBmEHrH7hRh3zo11RaYIuYcpeZpBCw7fC+LkN822mgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oHXUprRu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oHXUprRu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5E40C4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732980353;
	bh=V5YiekounQQKnOV4BM3Af7+APvvDZBs2RAjvqKiy4o4=;
	h=To:Subject:From:Date:From;
	b=oHXUprRuvp8y9KVhJpQJSewWTlqzF0kDYisijMe4XMSCSEKufS++TEPSYbfmBdNMv
	 eCZfpLB0BnyTh8akJIL7nMbfRSCcXDlDlksqYS4Lm8FQ5oOUPN3uBH3nWrmPbiBFhq
	 SFGoYSOuSRXsn2w7vFJ4Ii0wMVQMmZpsdERGV/WREuiqHYrmiqMqiqKT/f3YswXmPU
	 GxnBSbrO4hxAUdFT+k4J8AjzePEQK0kIuyJwohEdQF4QPKiODE9x6AhkA1yYwp7gRk
	 PBZo5SujgoYABKTADl6hT+BiA7zVDl9K2aO6kIDvGuTNDfAtocyPLJ5xAwzBzFVTq0
	 9b8XkAwGJetPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E06AD73607
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173298035361.28982.9844911861835454790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9907ace47b5d31070c28b5ad224a23e763eb2af24525cd5d91602d41ecf0e5b
Date: Sat, 30 Nov 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732980353

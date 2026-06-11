Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36FAE53E0B
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 02:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781145994; cv=none; b=DM100L6z9ks3oQjb99QLzeaDtrAgtFYy/dUkUazBy7uEU2+PetuAq+gHfz5aBGHSH2QGxfXdBEbIo1hu12rG0mXZ6Ua0//RowgKyor6fp2kxPOMpHeonIHqFYPoZB6rBbyPzssPEMysYnqazzSrp+xkKBER7O/m79jhxMTf3C8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781145994; c=relaxed/simple;
	bh=bLjNkpV44h3xLct0MpaMac0BtHvKlblQiVVQJBocxcw=;
	h=To:Subject:From:Message-Id:Date; b=fCItG045a3qLaEvSlABTrEZy1ic3cct2G6ZR01EG5Ha0WLRxAXhikNAcTq/mKYxQhQJOJtdC2SBhJt3o2dsh9pxL02Cqrv+np8rq4cAydPzCFqrk8zY6uwhnDP7HYyOhLkwDbCZkuFwgUTAF8OWmx9Tzf2HE3ICMsItYfVMZx9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rw9XY5L5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rw9XY5L5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3EC0C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 02:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781145993;
	bh=bLjNkpV44h3xLct0MpaMac0BtHvKlblQiVVQJBocxcw=;
	h=To:Subject:From:Date:From;
	b=Rw9XY5L5dTQiUDXQ4BHgyxwhzgjvPswHy40SVYl0RzWdV0r2cFLQPknJopYrDLY73
	 gqYjNlA6XGSzvo6Mol4mO3AuATU7Nb9+Cc8dFC2NqFAvICy3REQnUage98HrQ41UMI
	 AMfcNds7vtecyKZz3q9n3bd/KQMwRH+kvWw1z0hrRGTr4paP92vCVbHyBwnbQ7AF6m
	 foKyz4/z8m0d54Zs37p23RCVImGz00uI55NKwe7hwtPlDh96N98yPbkjvyuS9+vZ2J
	 AyilojIpx/ujJZ1v6ylD0BIZ7YAlpM1TzCcEGNFqV2FeezJvP6oitfEJq7+sZDyCtI
	 oDYCeZAz2RF1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC30BCD98C5
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 02:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178114599368.12384.1654768320048798853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff940274dfbaf60b0747da9bda758a1c748872ddf801d4839410c50d94e0b08d
Date: Thu, 11 Jun 2026 02:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781145993

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FFE730FF08
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785996034; cv=none; b=ce3/uu9SrFzO1isR2WMI+cu8orkq/+N5lMQYCDD9QcCuW8b0TZRtdhBE5im/Qiy1VKJkmUwiTITXt3Y7rg8lfzsEvOthdbVVuhrmKORm+4iaadU8TmETzMBeroduvnQmlTzUjsngm2W0dJhiHOZm2Z0cg8JUxeg5SXxccbGPuwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785996034; c=relaxed/simple;
	bh=frimJn9MFhH2eCH0NeRFcUwJbPD7P2B9gehspUicjtk=;
	h=To:Subject:From:Message-Id:Date; b=gVDXB58gSIScyI1lmuRiF6NhnMBKlzR0CrQ4pLNHabzrNLs9tkbJ6qZB+OLS6W5+Cf1tCjkwaPQEy/pF00DZcxKPLLRCTjIvKwOTFNUW6XtR8kQdiZ9Qp8p3Sz1mMu/Iq5DV/Ja4EAIuYbgPWX9XwyrEd58boqFGlHXH/i545zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lV64XRJU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lV64XRJU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D78A5C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785996033;
	bh=frimJn9MFhH2eCH0NeRFcUwJbPD7P2B9gehspUicjtk=;
	h=To:Subject:From:Date:From;
	b=lV64XRJUVQ2pcKWGOGMJ1BlUxdkouKgp8lUe0UmhhhDyBr9I6QBMGSRKHItZdwE1E
	 5htjqrI9kbgOX7bTpZ0GtUY6jznKZlWuso4is5UjDtGA9+Oth+7QV3LzTDfqS0M9Dr
	 przooyhgiojiPJGFfYei4bfG3mKou6/c8bZlchjdxn9LtxoYChf6jIIswt0Ks/da1w
	 PaJoj7c+fzXBa7vKEI7S4kZdz3HB7EN0JjeRQVnXZt3r5oRSz0BPqBPQ3Purxc3Qfg
	 MHNnA8tJMWV3FdJQawak67CxIWD8V3N16Z2Bb6QxvbC+RmGnX3QDhu3nOJKBYeI+Ma
	 JJPP0eBzpRUZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F9BC55838
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178599603371.15979.17936209668809640410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34b7b3d33ce6382dbfe6a3e40b60acbcec9c947515f9b1921c9165036fdcca9c
Date: Thu, 06 Aug 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785996033

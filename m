Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4833E3AD517
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 08:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775810254; cv=none; b=nDiy3JzW9XU+heFoHE2lPgrIaFuxqdybvdhEKUQMHCF6zzWwtqlbQTHpvPfyvBxybJykFOkprrOaZwtsjs3vvVFWF01SrWu+vw+0NbRjyilAokF6wAp0W/zDR3yrTbjmqsi5usDM5cRTaLtesHLsiT9TyYyQmeS5l4x3V+72yao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775810254; c=relaxed/simple;
	bh=8OM/30aow0tcLHCtWaCsK9Fz6jfq7We1po3KjAGHga0=;
	h=To:Subject:From:Message-Id:Date; b=JCY6F177mGKp5Sg6faAIFSixrEmQIT1HEDeVO0zNl1cLup1WfaHIllfP0yFWsNL0/f6A50surKnWjRe4+Xen9wI0zVfwhy8cfC64h0gOhCzQTcKtArQ4VDHkc6LrhYuO7tq5cYd/oqM/plyf6JL3hWSQcgs5xP8IVYvv06HqXxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jpa3EpeI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jpa3EpeI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA46AC19424
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 08:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775810253;
	bh=8OM/30aow0tcLHCtWaCsK9Fz6jfq7We1po3KjAGHga0=;
	h=To:Subject:From:Date:From;
	b=jpa3EpeIBmMrskaxXm6Fl/yO0Av4CRZRUDD/IIDaz0OznG2tKUcNS6mr9Ojw9VtRT
	 OqOiVGmpy2Oh0d4pnNsvEMS0rJw+gL1d4hMxDXlbq7otnfnmWLDxmKd1cbfkS0+NEK
	 nqUjHnSZh6CUnUfBPjpcLhQ0gqHWJdpvukJiA/7cdJvj4deVxOHfibz/CtHZsJn/s1
	 3Tk4bygZNeTdl/Lu2UayJ3OsT0QSlap/zPxz5+SYzWU61tzE/HVPYVfffBMWT/4ATk
	 xNzIHnTxRjhLUQUlVgBvzTV6HO6TUa/WMfYOZM+5BIWoBHSEn2dbGf9anVE+ggWg1j
	 DmZX2YbDWxC6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C1BE99052
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 08:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177581025368.12933.15175642941425911962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a2163c4ac8784abda84c96d7a4dfdc8a0a3bdf92242d7e6e34dd3d8d05afbe8
Date: Fri, 10 Apr 2026 08:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775810253

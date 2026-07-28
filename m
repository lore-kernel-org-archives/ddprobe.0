Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56EB03D76
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785282034; cv=none; b=H9SxIueeVOZVxMBs9uNJdJkHhmyPmX2uLnTuvB2q4ka09r5+a3SiuUgA5ry4GNU4rETJ6d6Pm4wjwvPdluDJHqTQX1T71F0JFtxdLviU1ArZJt5LcXU5ld6Oosj1T8mIZqUwU1jMZRAuprc+JJIe4ZiYmQaKdWlCVPjuvSYJtNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785282034; c=relaxed/simple;
	bh=CIpTvJERvZsEiMPHTftTHL1/ByiHsOuxnzIgDSWy1aY=;
	h=To:Subject:From:Message-Id:Date; b=poOmpLVHzZ5kP65Zm0M8ScXWp0c2/OraSro7ZAUcgItn7GPesOxWoiXJXxTl32zz4seC1q5BwQrecr8WoekzKQ7GiMIp5BFB91Cu9lcUSBjOfBn6BPQQmUTeYdP0XXT5lJzh65QBVvqKHX0df26VrhKLiak5oaItzBoB48Ponas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oMaERj3y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oMaERj3y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC36C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785282033;
	bh=CIpTvJERvZsEiMPHTftTHL1/ByiHsOuxnzIgDSWy1aY=;
	h=To:Subject:From:Date:From;
	b=oMaERj3y/Qjtc9out48DN0cnhlVuFgcLSL6qUJ+PJJO3kJrQpA8xOXXTdg0O1ru6g
	 VUoFmNfSp5OZXD9MR/iO7h6baaXgCkWGY5iVSKTTQcIDeDNs3UxED29iY3Ydejk/tk
	 vw1pq33mv9MvANtOAHnIpHKx6/RM3FkMs8CtlweS9CJozMlmXQz54WsmBLvAxFw06m
	 mx9HDtKorDSrr6H7YtxYjET9E277VwsDB2lOWm0hP2SBHXTWJKOO5KztfZBnXtAFXg
	 fPz+/fmo1kL0UJXsNwB3johVh28PafeAbuXnxvv9DTiKuj7UJOuxu1uVHWmY1762Le
	 HbZeD8K8HdWXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A914EC54F51
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178528203368.1098.14309321385483060603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 356cec7242ab75964e12e74d20bdea5725bfb1b34b673f43e24f4c09e93e2305
Date: Tue, 28 Jul 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785282033

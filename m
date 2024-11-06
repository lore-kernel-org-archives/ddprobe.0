Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB0217BB0F
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730915154; cv=none; b=XrgghqiRYP51WQuAH5/F7ZN7YohtqKH4ksaH7/Z1/l+GLGdLztwoqHqj+MFcZsgSQAqmEzJmHomeUNFmq/GmVBuOZ+7rupD5fLaKA9yqlfDB2rfafVMPRB79fHe1Bb0mkUkkhcdHJjFmynngbSg3eQFqWJR7GXPt1VTF9SOf5Ho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730915154; c=relaxed/simple;
	bh=dgw5iNh8qBjqcUBs0tydbAKfgGu/BUWwzbpK+IEtDHg=;
	h=To:Subject:From:Message-Id:Date; b=eelE+TgiIi471edFY7XoRmphRnVhhHkN04L142d9wjxsTcpbnODi1nG63iSTzqpjQd2+CRk35oHGU9qOn5TwEFzmiRBFUVWEtj1QF0hibwQQJO/o6ezAM0quI3rt2eI54lSXGHj4oc45HeH6XXyV2JJHMsu8aVNp2eY+kPaQ4nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aigTpVpg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aigTpVpg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B70C4CEC6
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730915153;
	bh=dgw5iNh8qBjqcUBs0tydbAKfgGu/BUWwzbpK+IEtDHg=;
	h=To:Subject:From:Date:From;
	b=aigTpVpgtEFfWWzWYlsaFaAblC77D7tA8sWL9pppBYcP6uZYOINOfX6AKSJy6BWKV
	 JilAqhYmHa3zmj6hcWOBr8lgz+8igvgPqY4Ea/wRaT+O7NBm0zpTxzfsQhX3lEIAXm
	 lXsxHbMnjaR9azAT06DSAcZQUM9lGGxQg7EGOH9y48bWPO0Zv7XAOaxED3eDWILlL/
	 gbpiLp15Jf3mcKpWRrKWjRWE52xJrP/SiN0LIIctP6T+wYuyBMAvm2JmHh0ZNbZezk
	 Nt55XvqIZWcw6dx9XTvGUOpATEw25oGq3m6nzZuMfGrfw6HJ+ndmziva99K7zetq+x
	 VRN0bANgYI+ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94106D59F5A
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173091515359.2502.10920628658630856979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2555c940426c61bb4771219ca91734773073ddbd1a3928a8af1c3f3d6ea971d
Date: Wed, 06 Nov 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730915153

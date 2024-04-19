Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C10612DD97
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 22:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713564623; cv=none; b=kedEBaiQlQFEzNIgBrZMBi6I+cDyDjqXlfamj6n4OcsBtl769bRE6ZzlekuEjIM1/l+03DmJuRCUd1hwxHQufS4Ca4/PrQCPbgPmvEos2r5ffAhRlBx8jMXw2w0+W3qty3EpCsLhtefLHYZ0lUdrKwtB1KaTzboY4RYnwB7yjns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713564623; c=relaxed/simple;
	bh=8GQLQ6BYX3I96MAxJ56ICssuChQ4ifRFFJGokyRxVzI=;
	h=To:Subject:From:Message-Id:Date; b=DemsD1x0p9RKkKv/yj53jJJ0SSC684q3B2Pumbm0AOW8bCHEwUOrb5UMkgaCfpYPwZ2h8s8CPL90REkl0SnWSvA92nAOGW/BVnAoiDKqYFavYk0c2rTzQKb+bEzcj5JxiADJa8bpmgk7C+n9WFsmg6JGBo0pkp1Qj7trK8wJ5YY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aU4e691m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aU4e691m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD6D5C072AA
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 22:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713564622;
	bh=8GQLQ6BYX3I96MAxJ56ICssuChQ4ifRFFJGokyRxVzI=;
	h=To:Subject:From:Date:From;
	b=aU4e691m5vDNO2p35BYcWxBb+7eLstpOtyo3M3/7KgpICnDL3DBBB4cv0CzcAX3UT
	 c4IAH7+mJT2XW1tCjFJ9NpprKj5xzmFG0CrQDv2x2Us4/dHkNJs+zeGDUwB/Xnhvl7
	 PGvV2ozEmIM357NiHzodmuOf0cFJCnzfWOQL5G4pS/c+kK82Er8ygzucatRJtPNZ87
	 L2xckvmQTSSGa6ywUeuNjd0WLIzBGIAvA0z14BuvFK4SItgOmd8qOR7aRP8pmJ/4iK
	 oomrcREXR5FnofPnBJI6mmncrvimehbeuYdlWJKGd/lO5SArGfwFvN5kLKJTKkiDeI
	 QNEJ14J9VtcIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4731C4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 22:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171356462279.25695.1687139592710293811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4734d7435a49954a202095558f703e8356d56995f9039104a8a3e85e297449e7
Date: Fri, 19 Apr 2024 22:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713564622

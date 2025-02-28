Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C65818D63E
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 03:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740713934; cv=none; b=AxbgZilDZGV2swQbqt9NroQRw5W/ojYyHd4K5/XltvYpJ2KSGEA16XixiILJBdccwUeUbazZYV7gj7/oINTtSgTqFBh5i7LG3WoHSCSZVonSTNxc6d4SPTnPg7jsh7zhgoq2d/U1pqUtFeMZJbf8RWFEesTKyVJuzGeB2Z9QkvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740713934; c=relaxed/simple;
	bh=Umu3jPazO11mkjKtPvnUODNNVAnnZJDbTk4ZxgtnzVI=;
	h=To:Subject:From:Message-Id:Date; b=DsMaRodt3p7IiUYuCSkwaAxgnTFLaBoanwdYlBmtA/61475tKemJ4Rb7O79T5LPRF64QpTpNsXOmP1E6ofLuR5/xDLvx24FkdoGzVbxjjrKXfGBid+wHnnlVxyq0U7slFceawyGfkrfwJg20nhYqqZBrV+fpO/vU8q6kbkIv3b0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YQe3iTQ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YQe3iTQ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB159C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 03:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740713933;
	bh=Umu3jPazO11mkjKtPvnUODNNVAnnZJDbTk4ZxgtnzVI=;
	h=To:Subject:From:Date:From;
	b=YQe3iTQ+xJfya4ZdkbXgvh6MP6mMWGdXVYr0pVhwvMA48yIc2nTbf3gQ4Dds5Jfe5
	 R4IxbacJQKE66zP7Bj50gJRMeR9D8YkenWYtzgnlqs0Jfp3AL7hwffZ8RiXCF3jY1W
	 fe6zWw+t4YZu6r8By6UXLhu/sDI+6gfObH36fc2YknSK6/bf0MRC2ZGDLGfISU5WvW
	 TkKq76iNDmhw2/Rosiqqvuv9vAIiZCuAfGxIvPRq2ECtXDfO+J9rNSi9lA46YLFhID
	 QIwBTmTWVzL8AYGa4u4cQ4n3mDMxO2yEAF0Jgpn83U0bYzPRbD7hlNEhkR3+RSGyhu
	 3u+JeVhhbjg2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935B0C19F32
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 03:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174071393359.4445.10990058284393786052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3553cd2e657af012e49231b28514add21865f63c14638ce76fc5f11fc04c61eb
Date: Fri, 28 Feb 2025 03:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740713933

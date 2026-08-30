Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E82E3F1075
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788058834; cv=none; b=lH7DqWt5V1cmJVNeApmUiWBmbdMhQpG2WLAsMnoySzWecUhTLIsUZVRXKBR4cq34YNzKpIWG1+U37YFkMxe6ExnFCdsgT8INEMIB5GpIsBstmV3mwGLIdKysRZgisiBpKzTrRIvFalgtY7Faw7sU1pJ/C4/iBSIwlMKD7mjOc/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788058834; c=relaxed/simple;
	bh=bkStzjjGN/+ToOpJcfbFkBXHO9bdjXHgr+q6s8CpfpA=;
	h=To:Subject:From:Message-Id:Date; b=Bqqwufy6f8IGGEmy2KCSRPXSf2D96pKYZeguuCjL4GmhEIiq7KNKrkSokHl6fQx5a2n1mcwEextbgg2gNP92Gi6yBDK4J3mgF+Hbz3JdIqTECbWoXWxTvd7idS5/qJKTZAvholchfGDY9Q5d1CkSk+CEiz5lEyB36J3dgGJUP5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=am4XIHJt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="am4XIHJt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9164C2BCF7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788058833;
	bh=bkStzjjGN/+ToOpJcfbFkBXHO9bdjXHgr+q6s8CpfpA=;
	h=To:Subject:From:Date:From;
	b=am4XIHJtK2wJxEk0kyg/5Xqn+YZmIz7A5vqneO7q7sfOOO9Rd8uh+yzkdYpV3OJJq
	 ja1vkMm4SJt5oWvuNjLA6qDAS9VOclByGgYlcUFlJ39po53mUkxbte/uZbWl3V7kjL
	 hNDN7lEEBgkM6JD7Zv48uOhOwp/IQiAjcIvWItqX2EiEisonxeYjko2UAd8xOagFd3
	 oqE5V2FKs08BI3SQQ2NAFcVB5tHSC9RaKaYb7kUFxPNHqH6MnrrRjvUjZK0FaXsZjF
	 SUBYEM077gf0LZuE7v/LdXvZ26+ygxn/yDMz3ae6It1tT7kZd6F7W5SoY4SCg7R3id
	 qhnLZNTXltJ+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E84C61DD9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178805883368.2974.3670769730743589841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bae0ac4b8ede8311fa43383f41e7a5d458ee44de6fd37a69cff6b5b89985542
Date: Sun, 30 Aug 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788058833

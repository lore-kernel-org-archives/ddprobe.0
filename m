Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CB966FBE
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 10:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714905743; cv=none; b=kMV4RzcTg9HC7m4v+3jKD0lRUtab4MNZ6g0HftHPPW29JN8XLh1dAqugLaDvAXQo4oQSVBMluUkN19FjXVlFcFFaTleQm95Ppjh8wF/GDiBzzswSk+gk51lubm5R1ApDDpLtM6kJlpJSXy8EcBpHslTgMABPBLtkKcjpkdLJZjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714905743; c=relaxed/simple;
	bh=ejGMhoAE4vGskqWCrcyNTf6Hwsr1pR42ldfZDBFJsXM=;
	h=To:Subject:From:Message-Id:Date; b=CT0oWb3NMnUdv6gUhDWhSzlttprvrYQRCQpEJrGEyTo79DGgGEFEKS690EANrEktOW8owXK9hbqyp7sFSIYGoxL4iSVssGdQ3FaSwi0sEuCdZxfRmwAYoqg3Y0Ur+56CSbqRKe2EechP2hodzDRb5h6bmzZILkD3zf+dquCUwX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VyAY/I11; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VyAY/I11"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6A99C113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 10:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714905742;
	bh=ejGMhoAE4vGskqWCrcyNTf6Hwsr1pR42ldfZDBFJsXM=;
	h=To:Subject:From:Date:From;
	b=VyAY/I11KpR/OFiXb60lzYQs+1X2hBFQwey9z/N2hcpYoAea109BtLZuHwU7jzhop
	 wl21ALQ+O33PMsQkMgWPnMdCrNiZmV9xNqIvOsqTmO35Xn7S/CDEx1eiVIH3nC8kie
	 R8nsESKLH/kDYBbMpoymJ3pmNPkxw3Ffx7gFrfCELlHI1M6a+Vx68XotFqoI6jse7Y
	 +l/Ykbstsl8PFHXHV2/Gthl9Cq5iPzCQybmT/KASCjmLNhqdrAVJcTLQjwe2tKX2+G
	 ATaWwWpnY53TiRjJgyy6mxKhB9IraItKTOdDLk1Gp/baLdAsIyFaZGW5qQ5eOitlaE
	 WPz9MIhy2BUbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0193C4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 10:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171490574275.11156.569014614675488419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 497fca98a4dfece84a78080018756a2e4f07320afa6ce73f5a50439da8704533
Date: Sun, 05 May 2024 10:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714905742

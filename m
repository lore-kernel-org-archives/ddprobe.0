Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3612021D3E6
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754905194; cv=none; b=nGKF51YT7elK/Oy+m8TtNRb+B9RJnX44rJ4UT2wHcj+p2yqorX+5Fzwv3B3sTVD+jRvLXpDrJSBncXEwKdwZr0mg+hgGukFh7mysvrSRt6g9H4Je/AoMne6X7hYv1GxurjcqUzSTOsEGumxLDN4+eGy0rZKxhh0Ce0iL1zWMuKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754905194; c=relaxed/simple;
	bh=esmrwss7z7wblKCo6cqLVisTzPwH6UAJMqM/3xVHp60=;
	h=To:Subject:From:Message-Id:Date; b=uTQD0QQ41PrmmzkqDXdugr3ccHrykcP63m+UMocg78w2Q+OHCpO97TY0SLIsFhn4nLR7i84+XkexokDSOh7mfr7jm06W4zj/DpFj0568P1LbI9kXIBCRyqsYLbu8JRE2tBae81L0ryqFgi2W2Ke/lVlP5NMHQdXz6VF3+EJg19Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SNk1YGCk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SNk1YGCk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6466C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754905193;
	bh=esmrwss7z7wblKCo6cqLVisTzPwH6UAJMqM/3xVHp60=;
	h=To:Subject:From:Date:From;
	b=SNk1YGCkrtyfllP2p8u8gU/1yHDn8NzVORW93KSSWmDi0GBxZ3DC/lZruItYFbAxq
	 osgASWh/3RW9H0G1rzjpfTniVogE3V3VcEyvyek+S1JJlyhxy29IjHgt8JH6rIDK/x
	 gF/OHIKcObdIyUVhT0ifgPOLXAmaddyxyjPwcgSrK+usnYklZ5fDjTN8F6R1CKDW2v
	 GFggg8CGhwKipdqR9r78HJZBcr2OdKmJIyDWoppy4pb/B1AzuCCSwday1D3cyMGpKK
	 WE3gvYilTwp99oujrTjQkkSQKOImwdoRdqS5hPzXMqIxdEyq24wmA9KqOZjEKlUPb1
	 4VSocIATP5HbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9304BCA0EC0
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175490519359.3149.4896265034654520655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bedc1078c69050d164bf5361675e2d127aa87c612d7b95a0dc1e9f95b3bee8e
Date: Mon, 11 Aug 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754905193

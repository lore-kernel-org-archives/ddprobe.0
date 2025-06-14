Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38AA42E11B1
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749902394; cv=none; b=bdEIJErFmz7HpwtJaXI8mHu0iMpt9e/Rbw284x8uITCIIdIMlrAobGoPEi1ly52P2rEFhWC5YWLbInEqTkWFg3Xd6sSX8OLYoAF4GyGnvaKCCz5PzfSAnDpoqULKitYj0Qf2iPGYGJIupYWZINLOSxwVYvDAIf/2kQzCtxJo94w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749902394; c=relaxed/simple;
	bh=6jP75Lpd4hMFL6DjkyIXigEERX0kqyakK8thfSy3R24=;
	h=To:Subject:From:Message-Id:Date; b=ZK861hJxO53fnr/yVkNkCdhXNEEir+lUoRyDdBigdG6BovRFVwor4/eTx++e45ElRdJ4g5SfHy1TOK1e7jq6qHmslonq9/A2pWQYkFUxj7usrQGCxau1p2fz+btJpI8qfNFotOiYLVARbsWa6HbvNfM5YUHc61KZJEZ5Dq94nuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QRf7N/1c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QRf7N/1c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF37C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749902393;
	bh=6jP75Lpd4hMFL6DjkyIXigEERX0kqyakK8thfSy3R24=;
	h=To:Subject:From:Date:From;
	b=QRf7N/1chL2GipN1doy7vRKzWPpcSy6FirJXNF+hwXzXL8/Iz7LjNxhcKX3A71PHE
	 L33A0s68eW4ko/hgPVg495qYSI+BOThJH2+fFbKwxs9q3hOKF3raXW0N1rtBo58mJq
	 /MYZkJVEnoVtsyNQEr6mJY2ATzQ34T++uf1bowcrpoC7ZTt8ds289nGIfuofIbFt9R
	 vE5UZu71DZRRAYmI+9b1oVd/2196JnAlWRX+zL+kz0NB/zJkmHw2urhBu4/GOQrRL9
	 Dvcus2RLxaNL0KPNTo+p13Tat+gtbLB0bWjZ6khqQL8zKu9yH9ixuPFfO/P2nNacm2
	 4KxZTgcGNZEbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99630C71141
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174990239358.11595.14295431118045296307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7806d5df2010d605bd380db4645257f40896897ca5c8aaf957e5c43f4ddc92cb
Date: Sat, 14 Jun 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749902393

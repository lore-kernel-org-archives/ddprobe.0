Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F26225761
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753531195; cv=none; b=fncVXnW/2Vno2Kc9UdBbSvDDTA3CH+QgITBalN7RJgJbJC6wIPdtw2BaN39GHbcqKcRokSIk1hSfY2FAtwZC0nFjOj7Wj1hGdESnCNvGndCwvjH8NVVWJ8hDbqULSGQ4uUsMIScB+5ae88b5dP6mOgMNVqoaWzP+9ctboMQBLsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753531195; c=relaxed/simple;
	bh=TcrGBZKZpTqJaeiTM1Zt6hrn2gVtoBxbea1sVQEK5Q0=;
	h=To:Subject:From:Message-Id:Date; b=kem5o4CFHzVz0CLUNVNMDMh2+Q6uQr2UiC+OjR2VMaSnDnco5GW7gtd7EJ3q6VgtkzXIr7+MftoKCozrvTTO5txPgrwYVh9GnV4Uk9+b/K/zi6SKtI4G/Bt7VXrQrCu+1Y5n+MTthhXzvs0XmE0kha60fJehygc4IREEGU18sQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pEg0NtQc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pEg0NtQc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BEDC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753531193;
	bh=TcrGBZKZpTqJaeiTM1Zt6hrn2gVtoBxbea1sVQEK5Q0=;
	h=To:Subject:From:Date:From;
	b=pEg0NtQcHvexy70dTFBM1muGums4X+RStKokRw+n5nkC8PZMS6rIu6Frp5j0RJQGk
	 ySkA//X1vabIFPRU5sdbCKkLg7hd+IU64a0p+PltAde2lAkLdL//YthXj3ZjpyFaI3
	 /AOvzXrpmccQ9PyKvuX4fFMNJmW0Ei/9ahQKqCzIPhuvqOxwIO7xTNlrMKNA/+rb5h
	 YqlIWHOykWxOC3g8crZa6uT/zAuueNEF4jpnJKRPGAughgnWe+HumTb4Wxp7kgpnBA
	 vWTBsNWY0/Up368JAr98KUh2z+9C4GT5/eyeVHSb6IbotmvkiXVgDw7ENxTPMGpe4X
	 UYzOmZyXy/7+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DC6C87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175353119357.18201.14567163072802925726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abb52567d4518b5a711e0e5ea99a29ff4e6ee405f1566d75a0e84f1948a41333
Date: Sat, 26 Jul 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753531193

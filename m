Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C44083CDA
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728079554; cv=none; b=o27zzwH/eavZFhALKg/oQUgrDX115LEb9EMzYFRahfnPt+OrSxryiNUctkgnVOUP1KpFtK3XR89t4Z0PEJWfI1nzrp+aBT0SlYl2QHeKG4pipsu5M80fjhhp+Q6tKy5OLKSkJ8KcaV6tB/XYt5h6g3vPlCF3UxMzNknfiGiE4X4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728079554; c=relaxed/simple;
	bh=bOyFa24J6mEZYO2bXBHN17E2D6sWhFI28mF6n6lA3VI=;
	h=To:Subject:From:Message-Id:Date; b=D7v4p6IDzxNBdBp7J/n+6Y30TfrGxhucqVRAfJBaP8E3D5JzmBQQU6bkxuoQ0W9ZGoZ6nfBYl82hxTwKVJs17wCjBDBT3RuQIrJfkc+fkNVbusf7vfsONFOrS770DfsoDPZHBODNhb65o9tB432n/Uqx2ySha9NVT2FDPZFibQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l8CkaWr2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l8CkaWr2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A97D2C4CECC
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728079553;
	bh=bOyFa24J6mEZYO2bXBHN17E2D6sWhFI28mF6n6lA3VI=;
	h=To:Subject:From:Date:From;
	b=l8CkaWr2m8qr9ULLesVkJSxh7I9vzDL5c2KN9XkrhTN/+5E6c8UO4Z9LZNI4mRnID
	 PwkaBbbPK6sXMSdoWL0OSfH2by1cgsGa60OuQKcCW7EEQPK+lhbKvFzFyC73nG6/OT
	 l9dHHtGST1KfVEusonYtnica4RXS97zvat3s7i/+mSOF7Fns7Ef05+zahxbENOyYqr
	 wp9r0SZSlGQzEpckIBOLCrs9XlymysA5yaP5uf7ttRz8gTZ+lc6H3GYYsiiOa3PUdr
	 YhCtkiUE9bZlGTS21wf3yqbLWeoRrcTXNyShk9XBKqN8H/2eq2RaBQN7Xh14AuOSsf
	 cj5QSB9biy/3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C39CF8853
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172807955360.29730.1141894410307053359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a919aeafb5ed59c1e14e57d7b983c4c27b0d68c732e7e773905cb043f8cc3e4a
Date: Fri, 04 Oct 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728079553

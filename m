Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279021FF7D0
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733486154; cv=none; b=IK8NzFjX+6Qob32feL5ucm2ESAEJ2IyW0jCE2d6KwVj03vcI4/uXRbSYsHNR1cU8PohBYxj8+zt0of43Wni+p3m6zw0UFpmxEChcoGMx0cR1MYeIrpl2gcuWGIbtO5lkR/7TDRQinCFL0JlFBs/3/Z2Ed4vRLXVKYI3qAmX9hps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733486154; c=relaxed/simple;
	bh=jijKCD4UKkOYEXEgar4Zsc5+lPfpnAlVDisRqPVMK8M=;
	h=To:Subject:From:Message-Id:Date; b=eT9+TVsM9tSVfDwRRla0gOzHUn6fkDbB2RYzWVPGiy2n3/t6xtG4Sw9ax0WnUKQnRjFkvqyDhF915KAGXIubjjtzUFhWxd+GS3w9W+QT0i5tSYUpa6DjiLYG6oqrCzQ3BwFq9CB0VCHcHQYvpS8C6dXagdNP6TnvW9C6cSsCbqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g4XXRKGZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g4XXRKGZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B142EC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733486153;
	bh=jijKCD4UKkOYEXEgar4Zsc5+lPfpnAlVDisRqPVMK8M=;
	h=To:Subject:From:Date:From;
	b=g4XXRKGZoI48YiaXpxXWnWDhc3sd0cxgxnOktepszD84Qxmn/jAJLQnV2Brdzd2pi
	 1tWzKrtTdkLChCpevPw/AaZxZoByzj5UUWFN7VAc2vByj2RPPRX4/rgd7due0KamaG
	 Pd+ldr3Pw1klsCCu4VRWfKsP/gDLVp01hR2GAbwnVLLctQs9PEWlUdJ+GzGOl2ibaq
	 Y2WlBziSaxpiquOzwetqx/9K4ggHJ2LfXXsb1WjcWzP29YJJtCM6qRDo/Jzxuuk0yu
	 QrSHxeXtNR7Wa50difK7hQnWhQolJEl4xk1I/OAicxOtT/WJtJcqTZJ/GNzdhX+gHC
	 5KXuF+adMlvgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F64DE77173
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173348615364.17927.2876569200447724975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f388ef047c2a908fcc28cec5d3b2d8adbfc6b2d19488351b6602f83fec03f7d
Date: Fri, 06 Dec 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733486153

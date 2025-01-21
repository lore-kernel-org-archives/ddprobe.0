Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B9277464
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737420354; cv=none; b=DWjWEISQ5zQQkscYiShzqkuZyJwOu0kYYRusew1hs7JVLw2iSPn1Ewng4xeBCz4rciPnUF+jWfV33LbuQ3vRJKHK4wTDGghgMnCjXW5gp5ZiTguVpK2DIr1teIDYgpNwRXovvJytq8qVIzWZcSwxtsWPNXAx1Cgd0vGKZ2fM8cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737420354; c=relaxed/simple;
	bh=o6MfkVaanX1dgtqH46FZCF2813JJ9PMo8R1ge+caEvs=;
	h=To:Subject:From:Message-Id:Date; b=qhDTV/h9eflqE4YhqQz9hcH+FYFzNcWpQ7udwcDo0zlxk3JWTRaCkKItwVikfEDiwW2Zmiq2qPcottYFcgu6CmtbzphNXgvq39jR4eovDDc9lbiq2h/IzQPYQhoU/xD0axyaTvnjCs+c8CyfHSMI+uqcMtDJvdLihUMTRXH2TbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jWvTBe2r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jWvTBe2r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B18EAC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737420353;
	bh=o6MfkVaanX1dgtqH46FZCF2813JJ9PMo8R1ge+caEvs=;
	h=To:Subject:From:Date:From;
	b=jWvTBe2rYsVpRCOe3tYmdOeCbf16fAM3j6v8p6Oh8sZj9WRQR5kn5WtvcorNs5hT8
	 G2I4ZW14w/nadUW+PIM5DATHcQStRlCqAJV0BO3Nj2//12wAsxCz2iyOoV/LbDbhzG
	 ZYitFdXFD6Rx+P7jtxa49AvtKHYUvr81+qwKaq5H1U2WAPj1uniDOAS0XuzWEhZYlc
	 BW7crP1lBIURVXqlZYRv2mOz3FmlZom1fIDMUfhdLWsO9FsRtGBEyVcveNlFYRCAVe
	 KGF3/7KR/m3Fb6iLk3ipLVpWTyKZi6t8NmF6hPGp+7Cb5shABWGOH0Mypuc4jPquvV
	 H+LiTDHBhPi0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E77C02181
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173742035360.23404.1799046637978795890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9af3fd8f4306adb2e7015f2a2dd7901a41304d62205e9edb7d2107abea81adf4
Date: Tue, 21 Jan 2025 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737420353

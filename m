Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF3E23BCF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 20:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775767654; cv=none; b=bFC1C0T4Ms9IOKFb2iQTsgxCaLUcpORkv0EwR3cNd8dw6VHOuhVZvH5uHwK+6JvSADe71rQOVyZTE4DiV5hq+5uzfZt6OcMulFkxc9l6TIBBWcYeWsj/N14aOh1obwAKL6OW4IylAsbY4X3Ee2MR++9B3fHGbSqmskwDTeGepa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775767654; c=relaxed/simple;
	bh=4TXjPOm9G33V5CCHdedVGlsvP0NoftB48L/IfA3CLVo=;
	h=To:Subject:From:Message-Id:Date; b=IqOWpgXhw4l2V36P89zG6uxjAWMw+Vq/CDbCx1/cVkg4PxtHxlfO3MBMsltQXBJvYw7joTAbWyKDcPlGB/4c4ycSoTXCqvC3VyKe4yQ4y+3MgiE9ibQhfKF8Tbkyx4oNOBHBVjl5Jlqbp4lBYv/9FooLlwLmd+1WiWrxStLBO6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TUmgD2IK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TUmgD2IK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9CEDC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 20:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775767653;
	bh=4TXjPOm9G33V5CCHdedVGlsvP0NoftB48L/IfA3CLVo=;
	h=To:Subject:From:Date:From;
	b=TUmgD2IKeY0ip0z/E2qlh/DxzYVk3TbBbYaqyx/CTVfML6m97Cxf7Nn7oEb0XB4lO
	 sDg0A+0xXrrYVRYaigufWM9sMffhiKh9e5YPbniDzyRpbbObb6BLv9PtszWU1w1riy
	 t2BivmMl8SxQk+/fplQVaIrNIOwMrz4VNt/5yGVaMzhaZL8aHOFb7xDwFdgYC1LVsZ
	 54wzI0PNaW2SI0gQTtH0zhtMaHYOE+m7R8LCm0ql/jYZv7OEu/BqhjyIsupSn0u1TV
	 3rhA1LDpkj5geEs2K7vll9A3/L4voUy9yz3PKvZ5BbIFZVKc9m4nDNWMvuAgQOapoN
	 SIxr6eBAMlpGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D10F364BA
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 20:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177576765368.12679.14225528786928020676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4cf025a0612bfcbc267b7d8b39064a2070f77e20a8d5c126cedea1e0e5ecacc
Date: Thu, 09 Apr 2026 20:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775767653

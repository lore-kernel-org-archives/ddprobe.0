Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CA0482866
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738019155; cv=none; b=CUIg9EKLe8dlcw6FsXAF4DvprrAJFXw4hiqx0kI3UKLTIdwqPb3b1sJYuNRKZyO36ifoS6zYmpnw0PPTUG4kf1GOHao1y3z7m0YoIy2PbATriuipi9aqd2aQpsnJQhQt7OvUbDt5RbzSH1dzKuY+p0erkGiBcog1Y8puho9Lruo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738019155; c=relaxed/simple;
	bh=gM0XSPVxjSbWwRjT28LrzranBRM/k+/nF2yxWXP2aE8=;
	h=To:Subject:From:Message-Id:Date; b=jh494RaoiKHIhL/oWSVHkbdw83XTSW5Ic/8wKYTDntDvSUIoCMz8E1NoChR23A1Q2tgXzO0RquogryrAgAdzsZNJfeDav3en5rOpGHKhTvGUqvEquZ8c54Msr2aye8SIlNxeifcrHKGxwCR3hBwbOUTYUNPVmzDzvDECvBuLNNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dXtLKFzK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dXtLKFzK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B480FC4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738019153;
	bh=gM0XSPVxjSbWwRjT28LrzranBRM/k+/nF2yxWXP2aE8=;
	h=To:Subject:From:Date:From;
	b=dXtLKFzKOhaeYePlPEe7Z4Xop7xQ2sO/QA4Isr3EhaGA/59C7yVnNTT1qPxqH40fD
	 xMYw5A2EiuZa+UoKa8VWTJtS43M7r+IRauZkfPT7Z5p0fhuYBxyL/nabid9rgPtReM
	 QQ4ZsIN3m0TsSNGzeO7Mmgdxo1zTtGCfovUie/rgUq0eS2PN3s0gBGNuNPej1j6D1B
	 zMbY1a6nmvNVq7lZkUSpnV/N50XH/KEZpJCACWZXn9eloQvoLZqivRPCqVXVjTnJrT
	 wCiGvCwovG5SoLrq0pBsT9KIhxMaQ2BGi10iGkG3SirBKI7oKW3Qt2NdpF7tKzlhkO
	 w2VYuWYZcXVnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DAC3C02188
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173801915363.24775.16526092244077584712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 440cebd6a1656aec98850c0441dd70f8232593fa96bd720693c5db8cf18cf41a
Date: Mon, 27 Jan 2025 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738019153

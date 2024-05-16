Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402FC145FE8
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 13:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715865143; cv=none; b=TC8fGgVm/VjTMUFrNDaBy19lHAXkLdc0caQHNDH4u+xmI98aCFEz62hlUWGYW3zkayR5ndrIE3z336yW27K0MvJeDzQaX8RbgO7pSsvKK5+sjfbDazQHuCBGuSAHBw7wgiGW2Rx+yAWwV/SLKbkVFFOxH1fsOy6RZq/ZE/UIQMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715865143; c=relaxed/simple;
	bh=B4zlxOS+UC3iHVMomDZTnvwowAPzpdCPdn0urIRsySI=;
	h=To:Subject:From:Message-Id:Date; b=Z8y/cwEePaH/w+JzMrtgOoz1M+bBEdACUUUn8Tt2AjrY1PfZo6fdQntzmo5l7+ZKy3TCnBVZy4wVK1p0s5XksBCWhqsQhAw1WPRwCaTDfT9AtDYF3SIfellJHVBoerBeZGqITsjOtSOCvWICmAJ+q/EM7z7guEjvIquwW3rRfjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ndRgCID4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ndRgCID4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8536C113CC
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 13:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715865142;
	bh=B4zlxOS+UC3iHVMomDZTnvwowAPzpdCPdn0urIRsySI=;
	h=To:Subject:From:Date:From;
	b=ndRgCID4HeHfiHbeKa/mnZ/hSOxuT5Dbh/7J5LZeRrxjxsW+eakzOFsHYCz9sDPrN
	 6SJJ3BvOAkBG24nPPaUmDMZVe3BDCLEXKHQuwkspH6Qp4U61yvMazM5MR64Yuj3iBA
	 TgjnVOD2v+l1psK38p0uHWx7xtHdsdeH6K4CTshTE2UxS6ButNRA5xIXJFj/8l7HbK
	 5h0WxP9XOPwbBTkTxguuIcjursEg3zpl4Y5L6hEch27UDfEM+F2mcHQeqpBaYpn7Re
	 7SnIK96Dao0vBTlGEWFMQGkqwFaAL1vXyYVlG8jLSxmLyzm+dwUA3KOjm0gPPtI+S9
	 6pKdB/0nB4KxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5443C25B77
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 13:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171586514280.3041.2513849455523647675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d9665465923b369b5525097825007569d66dcd884ffc57f08674f985bf0c697
Date: Thu, 16 May 2024 13:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715865142

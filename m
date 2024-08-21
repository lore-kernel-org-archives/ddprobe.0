Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227641494AD
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724282154; cv=none; b=naC3itjkDtktbWY5TkQYnQ3b1pHY1Azw8NVxLMn6xcZEqwNtOE1oVr9fFfRzIxOqnfmDhAxPWsEsx4p1pxF5SHLWC5pC/1Htz4qnXaVfWHZHmlZOJgzR4kS24LTC4u6g2R+jERfEdr7apozyOP1kDGVMjughuzsUIpdiPIEdFpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724282154; c=relaxed/simple;
	bh=jldelShOkaiZuYgykww2ZbSbAZ5lgwglF2Yrb9IBu0w=;
	h=To:Subject:From:Message-Id:Date; b=jhnSYWdQAvlagXZpn0Ut/x+xBzuqFbU6gy8TQ04eljQF5rzZU4qkUDyw6UwAveuE+4xdmQRFgCse0ribgLZCL67RLCvRTAEAdku7W3ipb1GfZI5SP8x64EZFjpybr7QIkzT7aRLOLSNfTRFEet3ncSFftSXRKk7BYzjSjmkRTWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pLUExFY1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pLUExFY1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C8AC32781
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724282153;
	bh=jldelShOkaiZuYgykww2ZbSbAZ5lgwglF2Yrb9IBu0w=;
	h=To:Subject:From:Date:From;
	b=pLUExFY1NNJ+tktn8yhBeWd0afl1+qWcqjrIFQlRXqomVMEkYFkuS4qWbHTkFNN4n
	 Ba7MEomwGEJnT0sfew/+g+a9W1YznIgqT7PZdLlifoJH1jvJdyz6kpL73dEysWY1eh
	 D9wcsALT1P9vgQTzWEE5YMqtw+Pb+wGZZAdrMN1Rv+Ym8y4xX8BeTJvWDM6MxoSDW8
	 Rn7clJVfozQZS6Jojmcp9czmnoRyr/nUbw3fd6lmB7EYdgeFz1LkzT3Wt4zG5oeDge
	 SKyOFq5D1Z6nLrFhbyd2+oEKedEzhHn8a/Ycb5poPFbfLJYmfWOfecLbd+wqAbzrND
	 X+fGsI5OdOPRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ACEC52D6F
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172428215358.27194.13994997467939357945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd5b974610f59a9de13853d933017aeb31a5e5e31ed540af4d2b3ea13df82a82
Date: Wed, 21 Aug 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724282153

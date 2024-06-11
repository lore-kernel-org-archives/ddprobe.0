Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81F3E43AC5
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 23:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718150303; cv=none; b=iJ3dJ/Teg7wEKtCn2HWyuRqZ57uhbzIWIzm3M68R2D+oXUZob7yo36pzOHWbzjZcCUkq+bueb9ASnEAUHKCteEb55EB8E3iqZVLj1JAcdFIQ1+Ds0hl0E8MkHoXrEoGrbKa3OEuvAWeUn6FlQEPsxqeBXtDnvhMJuFyIgg3MCK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718150303; c=relaxed/simple;
	bh=EIruwEqxgRTUfhXqMeqRye3x8Ah/HDDxlxFgWVK7sEA=;
	h=To:Subject:From:Message-Id:Date; b=nkbZOx8ez6e0/7U73EhSekVBjXwM/ZKVHGFvkwfQ7N2qGUdGZYq25loo4dTKwddEoXxMk8Dlsc4BzxOR2DqCLNvsUOHzTNX9XFAzhEWoXvFQxFfYsYEULLtaFWjfAGivf09o5HcEgOXDC4qfRE01dOePfWFpIF+Kuh8orsHcp9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IJuQ/z5X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IJuQ/z5X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0454C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 23:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718150303;
	bh=EIruwEqxgRTUfhXqMeqRye3x8Ah/HDDxlxFgWVK7sEA=;
	h=To:Subject:From:Date:From;
	b=IJuQ/z5XIDIoj8WVwpQjw+u6lgmy+rMYbzD8aIoWcZ1wjW9T1XtHird8g3UyVoZmR
	 E4oXqIzze4DvOMCwQFL50OUTIaTE0rrwtB9UAEgwm0psf9QjKrl7m/BWxk/BI4H7Hb
	 NB8MdwtKWGPeF2Rng01SjnokvH/lYFWR2TccWw915gx7L6xa3YyQdDzkyufEsL+dNS
	 PtdaipKXVeC+oRiRdRUphVRQgizVxng5OYihiR0sTcN4k8eLrlK9sQ31yfDLlnoNjq
	 VR/U7ntVe+6bJMH7IxoyL8Qp0M/tWypgiv/DQIJVCSgt1/5WNLrL3nfUmLTi0T0mIy
	 /JXVoUTHL3NCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8D5CC27C79
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 23:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171815030287.13596.9241744717008480132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beb9634398c4df3c73d022ff63936be8b141f0a2cc5d8e87095b5cf2070e337a
Date: Tue, 11 Jun 2024 23:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718150302

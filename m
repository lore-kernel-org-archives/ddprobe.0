Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351441876
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723429554; cv=none; b=AfwKLr3qsR6lgcyLJwuTdWwP+YqSj98I6ItGEDBrCRRtgQbzvkw+mkj5ZOTUIswsq0M9aS07Y853eBoJG+JReVovHeorbpLInEINkQsauOqKzJkIP4FNJiQKF0h/Rv7W/FWDkECVwZ9gopA3hKBBug8Eeuas3hvKZfUjo9vHhVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723429554; c=relaxed/simple;
	bh=2oXeBzHkd1kpDc4CAAIAUNgIQ8Y7oTC8fBDksCQbIKY=;
	h=To:Subject:From:Message-Id:Date; b=h55odF34yxud7jiiZNxcVKreoENpHDCMXlFqmxDKXUFGR3IqmqdviQZimovn6Bne9VdJS0zjl0dvDRMx5SdDkvCpe9nDBsnm9I2kbHcIqL3au0hYDKAa84AdQwVesbEw/CJUKu2yC3gXOZoLy5H6C17XTGMFQvYN1dyCFKnhIR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TS7Iuids; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TS7Iuids"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA4EFC32786
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723429553;
	bh=2oXeBzHkd1kpDc4CAAIAUNgIQ8Y7oTC8fBDksCQbIKY=;
	h=To:Subject:From:Date:From;
	b=TS7Iuids+U8gSaLwM0xM0wouqhU61mcGaOeq1OzsNO7hq8YL+DzDpJSCaWFcOBDPE
	 KHcZtC6QRXYfLdHrGGptY3LEDuXwC41npmXi2hCt+quuoPiK+LHKCHsE0tLOoQkOm/
	 R17mfCTt7mN80xsZbJTNXI/N/ZBszZpMfQFGHnWPzRbq7Bjcdz39FNa2CxI2Kwh2PV
	 CYN+aiI+nVNA/I8K0r1jJuQDuaUdaTe3HJZGjlpvtW+ZlG4VSMhVN0rLRG/y1FV1Ib
	 mVtVH22FSwkrMkjWAdviaJN01jJ0pz5S2mDzxiWLr5ji2/tPX2lYtz0EEI2ZDaQf5V
	 T3Po7+as5RVEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96259C52D7C
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172342955360.22995.12889967913373508584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dae9060494f42d3e94a09751433f7589bfc9a33ade51b26c123b5c108689996
Date: Mon, 12 Aug 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723429553

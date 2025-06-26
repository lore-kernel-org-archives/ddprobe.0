Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA2213C8FF
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750900795; cv=none; b=J14wAz3+Z+82wIdtzvHkwlF9XePFHgpZc0BZyjDC7TW9755RGLXMo4N87hKtDkToUjuHzfRCD74azIOpiCv0xprqFyjXNnFSlKsMFrcqimVUld/rWeH/gGnmn8CeXLkX89s49QZ3+/kWOE4azvnjVXahXMpwgyNnJ6RCchZ3Bec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750900795; c=relaxed/simple;
	bh=q7PN+Mee62m6c7kZpgU+psXs8zElVqAC689cZOwlqMI=;
	h=To:Subject:From:Message-Id:Date; b=VazeyJxZ72+qRhrAWwdytPMOfas+qjUcsFR2s5NhERS9I0yARqvHGXgu9wmyp9b1gnwR1+oCZTbpaWiWlelkhKe0bW5/VYo56BOgw8lndDrFYcK90vYFLg1zHNPZYmRhOKwxtJB8uvhw5b0FRG8QOdeaj+dS8HtxGxCjZoDEG74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b5whe4el; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b5whe4el"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AD6C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750900793;
	bh=q7PN+Mee62m6c7kZpgU+psXs8zElVqAC689cZOwlqMI=;
	h=To:Subject:From:Date:From;
	b=b5whe4elCAZpnA1pPiI+I+awFB4tSzQIQwyBftx67E17ZAl7/yTj61oj38FIceKnW
	 Pl1LgbmJJbCzyZFmEu9c0qf7ZOFQ0pidgNZdrzOTwcMIMGvToPNYeJPWznoPv7hong
	 rfQwaUwCG2MsMcof0UAJSAmorkTLoZO+oK3FOEuQkVA5zQmaxnBtxIwgp+SyHHzstZ
	 NVnC/U5zoIeNVwnxPfzbaVgyzsoAYqLlftBwI9M4CY9dg1FlCLBBD8YOXCtxQFBMKi
	 hkqgPO/qVfSqNN6BtL5VgThmyFP2PK5Tds1ZIL4/iq+AY3K17arX7Rc54yNPcrUJy+
	 y5Hw2fdujoQNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93769C77B7C
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175090079357.12909.4324679253061621237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f38434d275b98db320f8e69888eea58f26bc72a0dd999e8215f062a15023014
Date: Thu, 26 Jun 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750900793

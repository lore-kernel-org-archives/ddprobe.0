Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245D918EB1
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730756754; cv=none; b=W2Ns6fexj7o5c48RSOng/ChKas4aIrFxgbqGkFTZazQVrVjgZrq0KdT5RidXrRBYttg/0lRWSfXnjDbn4NCqk2KM7hX7C7SAydZ+zMG+V+BIdk68Er0E0OaFNYZVhRL/h3tJUQvZOmmTPTu3qtPXP4gQnniqNIZO+IDUWCNoAR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730756754; c=relaxed/simple;
	bh=U34viXh3pVF0wnb1e2ybWxdGryH4/wxm33jY1tFKRMw=;
	h=To:Subject:From:Message-Id:Date; b=BjORLWjgPwS+Wk1enBsUQ998VSPhldcn4/GjEdFmxgn1XU5d1CoRSCQXV12ip9WRSXAE1SvMwbgopsVYEAVjNZEjO3LCHFDTRK6qtRy9mzoAe2ZLz95rdLnSKHUN/iAv/WL47tP2ullX+AZHtus/MgV7awci7+W9l/OkIIB/Brs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ebt+YXUZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ebt+YXUZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C79C4CED0
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730756753;
	bh=U34viXh3pVF0wnb1e2ybWxdGryH4/wxm33jY1tFKRMw=;
	h=To:Subject:From:Date:From;
	b=ebt+YXUZbR728pU/TUkfSYFal8TEQyYQgYboc/cmQpXYb+dFqqBKHkZUXU9x9i4Y5
	 xfOWUZIIGx6ccYt9d9RNRjHBSrUdExqRO2jZgxzVkLVsfSmNyR/h+mkwQorbZkss4t
	 QsKquYpVetxJJk7X6l80n0Zpy6I03nejvLGgAG6JfdnknTfMbqACGVPMaBNeKzl1pA
	 hEMK7IzNuzLsTIUrwT121qkX3jLv0w3RTjZ3yuwSh5QP5I0OTiYnFF1U4AeL+eSIxs
	 ymJp5u5MdknmDHlN7i4dLcBkYLqvFSQq5S0FmqWSULJFTLo9hBuIEg1ZzlOQIAGEFg
	 ZcMH82Lvoz33A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951F8D1BDFF
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173075675360.20821.2650177258287713461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1aadfd659f913a49fdd8c9c71719c10865181f108f22b5b66b3ace5d098654e
Date: Mon, 04 Nov 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730756753

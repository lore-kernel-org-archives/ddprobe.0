Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 251072C375E
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 11:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765107774; cv=none; b=QyQydQW6tHXTlawQhyLbjoPDpyfso0wqN7W7qET3VoFb3tKNXp6CF/kz+oummQ3LmMFeZAXn0oHZPSY8u0UiXzYUXz7+Fl3QHoRgXA4k+erX4lw2R8fUAlw/Z6b8j34idBv3LrIS85rxra9S2RI9bkMFP6Yi9kMhCU0DwZ5z4D0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765107774; c=relaxed/simple;
	bh=sKQJFKzOprzfKhKuNeVEbQx97fP+T0il4WtL+/ckuQI=;
	h=To:Subject:From:Message-Id:Date; b=hlvKkjkRkv7GXjbX0c7ZM7f7faPn5K6aNtImU+2HesOVykyGB2hvdF1rIHr1UsYbvLdcleaj1WSuj7eQjha45nJR/XkN9pElOitJ7IkI8CRsioXDAaTRHrAwv3fgJYI+s0pYmL4a8AZAZNCsPPPftEZ6HXxt6XjobYElgomQxtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HxZCwOzx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HxZCwOzx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B504FC116B1
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 11:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765107773;
	bh=sKQJFKzOprzfKhKuNeVEbQx97fP+T0il4WtL+/ckuQI=;
	h=To:Subject:From:Date:From;
	b=HxZCwOzxhZmvSm0dSQ97hBaFu/jnmBadm9MrXjTTnSG8XwHxyhgNeIkKZfvFclCJh
	 91vH/9eGRVMVpZVQfVQ7VdjCw+jZMu/3FU5G7l1MoF/lxQ4sET1kTOqy44EHoai4/e
	 lM2DX7UxKC6gTryr5ymx0Md5ZvL6q92UofJPq/Yh5X0F2Kfo6HnZSntBH00aUw1B/Y
	 nUMWjSuoJvsnPglR6FgzVtCODgZhpeifRXIssQWVm77hMptIq97AEIA5ZmO2X3H3FL
	 aBfH0xM954PqGgBxsm5388rIybViutKsagYEbdLUjX6g4chDjEipXNMulc8U4dW2L2
	 wXvYckrDf5oZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97959D1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 11:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176510777359.15239.6243830909916016618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25034be74f5d43f01f590b7b2d32e0211b37f72c2166b999d60ff1dca6ec93c0
Date: Sun, 07 Dec 2025 11:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765107773

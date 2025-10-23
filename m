Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA4E28B4E2
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761245394; cv=none; b=HvvOvF2AqXuQkxvled1sFGFUBnHgTPaNvPP6Yzp8cS/vs9+SqGDshPw+dMG9wCQFjjJrvry7qWEGQ/bVLBMmV07O+GqTQWSqyV4sWXYHWCcmuq5+FH1AYhNMbrDVXqv/UUgcz4vvAU8a/NUogdTHw+mnpHHLR29fACM545reZ0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761245394; c=relaxed/simple;
	bh=VT7ob+xUlBac4Jhs114/VjSiVt9Ku2SDWFtaZ3uHYYw=;
	h=To:Subject:From:Message-Id:Date; b=NtltsK11q75akput7R1sSo407EUcKJGfbpyytrqiSsb3oZgr+0QAQCxkgS8SICcj5FxqHXV18T3tVg39nhNP14tijiJcCX1PW5jv6BHd7tMBkL7CDsqVpKRcrW3HfrwUh/Sd6IPZ5JFvpdgfeoJ8BVpTwD51VqVCLYeng2yMkHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jBvu3RpD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jBvu3RpD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D8BC4CEFD
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761245393;
	bh=VT7ob+xUlBac4Jhs114/VjSiVt9Ku2SDWFtaZ3uHYYw=;
	h=To:Subject:From:Date:From;
	b=jBvu3RpDqR+zxwkTQjE6OTxRScPpLOu2o6Va/Un57xABdRf3L0GOEJ6BuNAKGni76
	 4OusiYG0BPKVYMN/Mg6A924mXsGs34CC0fcQWUHAt4f1PfjN1oAGTWW92vXyc2iPZL
	 sGK6Gv3gQYYRKhEWavOtN+6qeoTGXDO7HWmzgV4HThZH1wj1A6k/L3SUUC3VEn1fBB
	 47Z7B6SS9zdHNSCy2+w74aEgFxM4x6XUpTi9F32UMZCjUvttUIzz8hvqMmOP48ZbWc
	 ikZ1Ar8/LNm9OjLUItuYkM0n5awI6AFPi3TQHq1TXKXWb5dWyxC3b49wYdNhBcWHe3
	 x8ad6Ygmk4QWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946B2CCD193
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176124539359.2179.14875041449975926926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18ac8d986a6d7cb4da12230acc755241fed661d9e79f076c80cc8e143eadd26b
Date: Thu, 23 Oct 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761245393

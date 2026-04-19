Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277678BE9
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 00:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776557254; cv=none; b=V/fmxlsLN9/Nd8JVub31M/CXmDPBqZMUaL54ZrQAq+HQ+2wBNpThsYzZ8yMUR/6w9fQctm+44+jacna0+EOrZz4PI9034shixUwSvhs7UwE2AgXF0Iq8LUaREVpx7PEstdm7Axyt9zeqU1QddIcvqPmogLW2PXtyIeRzF4B0jpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776557254; c=relaxed/simple;
	bh=80rlRI71v1TI80ydjp75JqQyFQi8dHIJivO8d3J5U+U=;
	h=To:Subject:From:Message-Id:Date; b=RL5ei/uMHDXXlUj/J5ECv1lnxPBOZHz8Vxgkz0/uQtXKXaXeeQFaDF/x1lzQFBX8ZgtcvPHBiJiCZ5iE7Qh3U4pFhtYJGoMrNEIppmXlifs0Mr0duiRG0pMnjBkjMtN3O+BqA8nI6Ym0s6+qd7C4421jGvMeWqfCZIa+sXVj8vc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uj4oALc8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uj4oALc8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0FE5C19424
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 00:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776557253;
	bh=80rlRI71v1TI80ydjp75JqQyFQi8dHIJivO8d3J5U+U=;
	h=To:Subject:From:Date:From;
	b=Uj4oALc8IqRflglxn68rnayYSif18I0IrCzhL1HCUt0t0MTRBuEfTReWQDLHpVZ+J
	 HUBWGId2rSp2RpV7EJuan51eSRrlev7ZOEGqjVdJ2OCYs5Jfr48mu4JKBQD28EXtgU
	 vopfZcYoGmg1YW0LiGPOP64kYgpwumnasY5zcLGIVB6q9xsDWtv3cMdnvEEqDWuBM+
	 8PpWl89kVHj7zUvPWN8KuWCVXCEYvVScKiUG6GxNGV87PWJDkSHXfDpybxeAFVLv2T
	 SPlSIIZ71Q5ygRUv4BypHPwVASJDTM7sas3a/4+ULy0UJiJOoIwBgDJdBAv+PU9YXe
	 +0JEkUfQNjnbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADEDDF99C98
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 00:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177655725370.8551.3450961409443577521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ced4897a18c8eb65f3b5763930e5203c8c6f19f50ba81331c38dc066f6f2500e
Date: Sun, 19 Apr 2026 00:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776557253

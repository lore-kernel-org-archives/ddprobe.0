Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20D924AEEF
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 04:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781844394; cv=none; b=Iu8un8FRLn+EyeHguhtZdFLsIUKJ/W8sJY7+c67m9lazAnuqlI3x4FpUSAokzc0RyUMXiwp8UPgIot8iXPAB9drjJk+3zf2W+56T/HIFjRe2YEAuBSoyyuAm5ttIqv/EnBofYQv+AtNFWII2Odc/z7fURp1S5m/G2UXpVhbCz+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781844394; c=relaxed/simple;
	bh=A1D5wD0Mf8QjNdMO/QQXEKF7LnGQQYbXlz66YPJpTys=;
	h=To:Subject:From:Message-Id:Date; b=InxqoY8qBwme/UBhMxfCNun2lw0zE8jxKN4MAVgKTjRRG0XoWuijxXiRFiJ8WXyasWe9EFhYsUBqBNHLR3lDY/C4A6vutQS53VAXnFwOzteIKYBy93GxFXJ5+X9vXt6Kqbs/h7V8hHuoPyl5KO04RP1DlavX54B/fulCKbiSIR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HXPsHQQb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HXPsHQQb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5469C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 04:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781844393;
	bh=A1D5wD0Mf8QjNdMO/QQXEKF7LnGQQYbXlz66YPJpTys=;
	h=To:Subject:From:Date:From;
	b=HXPsHQQb29IjiXR8uUAS5uKHQibYpG+X7uQAXG0pSpAZdHJSj84P/fz9Tz9ZTogr1
	 AFCV4TSqp0z0ld2+dCPyV9LLEH8zRRwBQ5dQiX+PCx+tBnZQhn9ZTBEP/EbUm8zSiI
	 QqtFoNgb9PVGrmVAK+Cfa6O+NddtMjJjyuc4raoASa2Pi7YK+TbIZD58kTwZ95ENhP
	 xwwFWzSaLlgT2Lxm3d8x2mJBVKin8PAK6tL5cb8aUvm+StzIpWQP3FqVKvbVHMf2vO
	 P+MWHRA9XFeHaI0SO2NhXc1Im7V27ZH02H8ctQEoGlpw5c50mjdQILZvWMz1aBLVWV
	 9XOojHYEBmWvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5A3CD98E6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 04:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178184439369.9913.7197609090654605358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8448db98e90f704f5c2fdf56c7e0abce8c7e0d04ff5f00aac15f0f4163d6aa06
Date: Fri, 19 Jun 2026 04:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781844393

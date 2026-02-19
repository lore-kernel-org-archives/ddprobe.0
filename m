Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCAB3346AD
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 08:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771488894; cv=none; b=duR1a6m5zGyOlGXCWdpQZY9kZ18MUOFzVFMx0bx9qSraZcy7857w2bFGgOpvqAuWkLn5+BIUS9/7A68lGxztAQgMCDTdfGhNj9hZ4b6B/rfv1koHsoS/pprkf/jG1018T1lQ0FMYYAuKTwlH90/L3CPeAqojIaA5xbXT/bqRJ+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771488894; c=relaxed/simple;
	bh=wqu/HCMK74aveW2x7/VyGwTjUxaBtr0QXijKhxtLArQ=;
	h=To:Subject:From:Message-Id:Date; b=iIsRkYWN7QEIRyH+C6IbV1lw9Gm4X5VcZoSUjjz9dZ7BQUgHOy91x7ALgcp77aQfCX6djmoxZXnLbC++VW9pxD4H/eP/oFstm3uXeRYw+7FlUIK9FFYq8+ufiUdQVNQHC9QwZHHGNLjWllSalHoV4BmUbogX+iTBZRdU8CYLsCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kmTla7jx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kmTla7jx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC6AC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 08:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771488893;
	bh=wqu/HCMK74aveW2x7/VyGwTjUxaBtr0QXijKhxtLArQ=;
	h=To:Subject:From:Date:From;
	b=kmTla7jxj43NMe7DW87jzhdB8qGFgmxGaV5wOgjyTZI+6kdJ87izn8Wc/HlCUkOuT
	 oT7KxOttpE0nQdjW6IhKr+vzJ3tI2WXa5N7jwXaYdNevvPSXxbc32RDswjwOB8Oy7W
	 +e1qOclwIB2+RWCA3MIHO4daJsLlJEIxu780JVW7jtAd2SheiRkTReX5Y8gUjuirX1
	 0q9HQaG+gCQNXcKldKroo5DI0z3Guhp09no9aXqfCNFo/1hKEtq/bglTjiw2zjDKdS
	 evkgxYlU3eos9NG5wr9zm8BxFCINaZidHy1Brct7AzRxSGhOexmo27IiTV5dfgfqCV
	 lo0q0GPN0GiTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9998CE9A03B
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 08:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177148889359.7042.1884743985701510868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52ef8f4631576f7d493a8b5a8f987dbeb29f962467edffb4590b0b9e86d93df3
Date: Thu, 19 Feb 2026 08:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771488893

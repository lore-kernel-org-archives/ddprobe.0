Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4726C2AF0A
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742968195; cv=none; b=irs6hBNmv3avZz+w+7Yz3UwrjjGS13tg1OJ/4E8T1Tmj8pefaS4YSxmYRp5QMJMQ8ByT2zTdRJtZ+UjnsOtTxxz5stoJ/iRzd/GllIEOlE0wsAHqziOcluevZFZGdDv6rvRBiWbm73DqUPc4QXIC0gvmhOH7G+AnzThC/bBuEyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742968195; c=relaxed/simple;
	bh=rlaFpZb+aTUGy33FZnjGhrYHpWhJbEMCd2s+Ad+cpuw=;
	h=To:Subject:From:Message-Id:Date; b=i1UiQIS2xeO/DWdz7K6G2NCpPyqW2OAdccW/eb7kmIsLpBVXy/N4Ik244brakJkzigD/cElsqT46KpQ9qvimRHyvXPqZ5EkmfjNprZ9QZeNtF+ksSL18cB/DUSNTpHBJZr1LuOSHBRBpyfTEBcP0phtJPqXqtH7tfBGweCigJKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MxoeO8NW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MxoeO8NW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BECD0C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742968193;
	bh=rlaFpZb+aTUGy33FZnjGhrYHpWhJbEMCd2s+Ad+cpuw=;
	h=To:Subject:From:Date:From;
	b=MxoeO8NWY5JC8SSxuBPrQ+5Blckho8dp/dVlQGt9NnGsXb8SubqEJm/l+TAiRAOBr
	 CgIvC6B4rKEXc/GBNyO7eHa7Y3jUPmC+8yJ0Y1WmmdNFRHdHaDz+1VcQH3sU+7bh8S
	 zyW8Fh0EXTmx+I3x+isKd28a0vcVLabKjo+1UQpcewlgnZtFTO38GTNdnXdhdhRZKB
	 ZGBnGpCQM7qI+OrAQ+Le6f8ox9IbqxpwVKDk4TKygyLQ1RjNKIo9XSa65UosHk2zRn
	 panuVpNOMTIZpydzsW3E2yRPUQJcGThQpMRENLUI3L3KvXyxqwkQ5E9mnOw5kmmj//
	 Rf3eC+0bOt8jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB72CC36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174296819367.9708.16028006012484696615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5e6034b18ecf9bc0bc098b42d10abb17fa8e1d14dc621c80de79e8f54476ec7
Date: Wed, 26 Mar 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742968193

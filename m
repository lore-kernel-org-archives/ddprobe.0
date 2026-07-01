Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3838B3F0AB7
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 08:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782895714; cv=none; b=NerPYj2BCRvybhfuCsibyNz+v/9YFA7J2C/zlkNW/XUvB1UgiMHHnb/nAI0wXumDlhgvPf3hvV2R4ALkigQFTHR9+kIznPHrUWlfHhv+sKXw9V/MaZyhJzplqlhSa7d33lmwBYJa37/Td/daaTgefgdE23rT2M2MNjFIaBv9N20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782895714; c=relaxed/simple;
	bh=njuu8TnKSaxsOCjbAKsgoPyrNgJIK913CgDdT1hACVA=;
	h=To:Subject:From:Message-Id:Date; b=tC5o0z7e58jhzp9vLWW0b3dvQPc8GvhW4Lp0lhRmcbtrnMguIo9lW3qamDfMOBcwhBwNPKeGnLIR/wiJ1p5QSyAmffesz6pO9/J+gUAbxmNetdE3ZJFqA1/1QMZP1P0I2JMYxYR+V41OYNsmK82QfL2rW5000xJCY+59Mv8A1J8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lF/UddRr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lF/UddRr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5C85C2BCC6
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 08:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782895713;
	bh=njuu8TnKSaxsOCjbAKsgoPyrNgJIK913CgDdT1hACVA=;
	h=To:Subject:From:Date:From;
	b=lF/UddRrL1a1HcxyESidCYcGTfg0bhC0k+fU52FLB9VltLDxPtBA7DpETfdh0pVN6
	 1H0s3/EmJ4cmoQwWyJCFVtwfdyKHAnM9hO+pz3amZzKCN0ozmH72WxipwfQ3RqP6mo
	 6zdxiDqBQuTd9tS9VbjponIhS4VPHe2dINNtq8ke9N1MQ0AxKeh5nmwlSN+f9KFdAT
	 RO4NfDlydM2jVk3b8FkzJ+NOv8tDuYKCHHKFAUNFKRA5ydQpEsUQq30cGCYhGHiDaX
	 E7mr07TrQlvh9NYGh8IBF4w0KOvO7MJaEgoybWZ9kBdWZTPzgOlzCxoMFwmc79o8Lg
	 ZD9wsORYKzf0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF513C44501
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 08:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178289571370.30744.1734520312438489115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88b3b2bf362b1b128f2d6f73381f3efd42d81c169720c8b36df797570cef8764
Date: Wed, 01 Jul 2026 08:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782895713

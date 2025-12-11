Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28ABA176ADE
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 00:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765413174; cv=none; b=rBXfeMjM7OyIddfgPAL5+efOS8rwUmdxskXTgJ8CPLl5O2s1wwbxGh6k4Q+dMOeJtTm8WZUNFmxbqLB56dq3jLFYQqu4z7VkwCmlF9rK431nTdMfJ1W2AWeztkoLCcV+qQkP48kXUPNOr3IPZ5KOHsjBXXHWwfGfJdKTpwIb39Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765413174; c=relaxed/simple;
	bh=ihsornBdYLrNnAKWPFTD2drc4THaNAkm2kwQG3jB84U=;
	h=To:Subject:From:Message-Id:Date; b=mzxrvXES5buhqMTi3eA9lgVUKNPp8T5RiyyTpWHD2JMozJBXOxEqiTmcmTExDoleQKWBOkRcO3MW78J9zcpPadalgqfJg5BMPvKubR3aY0Aw82/MrmzxLht86a7JdX3CPe1tNV7ZFSspZhcGOvveq/ZoP9SdsyhWyvH/D8hORLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rEzwSGQ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rEzwSGQ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB4EC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 00:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765413173;
	bh=ihsornBdYLrNnAKWPFTD2drc4THaNAkm2kwQG3jB84U=;
	h=To:Subject:From:Date:From;
	b=rEzwSGQ9EjOCbS8H6lJMEChVfM1+7sYN0R7ga+XoR8xajjukAAMBbZihYSUd3wjoA
	 ZhUqs5p0MtiuERULJCwTVeQq/3kKqNmYqHAqgt2GUd2dofqw5V5UKVpDrwciMHQMOm
	 vRDdMiefLgqdDrJjqC7Qaz1kWUzGiNkKLTklwB+xa9OGy09Hms3MaOFeBOBcAvavNK
	 m6w23jUFPnJ9hSmogJdVGkNHH0cLrRaDhBdtUsd8mJygyVgEbWK1qQnX241eH+eIid
	 7/4zPcGRvSUZoK+I6GGvG7eQGbytnXpM6pTMUoRnKO43ajwfSFbZ+eGCPnoPMunqGn
	 I1ovDDsuQKThQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96866D3B9AB
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 00:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176541317358.15139.9140206972578392028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edbbdb5ac6d76015b1138d238dab7fc02d0eee0beb83dab04c29deb101f403c7
Date: Thu, 11 Dec 2025 00:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765413173

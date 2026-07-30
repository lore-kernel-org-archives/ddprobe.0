Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50EE9361670
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 20:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785442835; cv=none; b=iAC2dYffydIbKD4Gu9pI1VBPr3PmZs7ppJ8QwkxIEE0Tmh1pY5IlnPZIo2kl2zlbtHRcnOaYX2cisCQ2BLsLMAAH0w1ZxiVJ7rn34j+SKcGqrvaUGeLVmcMsOgXpWuBwUz/dxwG7adBXXGYLbhe3MDdPG2aVrezKh7hM7mjWOmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785442835; c=relaxed/simple;
	bh=8ZrebWmqKrYXJbx9FBWWHcWP4BHD8IBqUVN9NZ7V5iM=;
	h=To:Subject:From:Message-Id:Date; b=ExSzqFXBxyDGOIK2GWbiySPMt+5xsQkgfloTRqj9RQsKCRdRrP44D4KL2lTdHSCcqkDSXxi6a0l/zmhNeplNxtOs7POvOXkQEmPAEhzN9OX+TFOqIPIRhUCS21ZUJAsOJab58bV+U60ifpoWdBOU87O1ISalxU2BxlB38+1U4Z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rJOjhL40; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rJOjhL40"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDB57C19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785442833;
	bh=8ZrebWmqKrYXJbx9FBWWHcWP4BHD8IBqUVN9NZ7V5iM=;
	h=To:Subject:From:Date:From;
	b=rJOjhL40cPkBG4WJz30gULo6ABZpi6C9iNaJD9jKWUtcetQbyG/8ReTEVeNJkQcRv
	 CSGuwJ75HO75WP2zt2OfLEmSbwcI/g18DT5NEIwoa7o44a5YKZEivraZ/rENJ5YBav
	 rh6gAa4FMgzWe/dz/wQYY0XUePwHPq9awVwLQpIodMqvsAe6AM5E9F8KPk9ko8itgQ
	 DGf/YsDXeVIuJzOVetdAtoAMSQpb+rp+yUP2HQ8bB19x4D85uivriu7BOmt0/aX0SL
	 GaD0rqxoKhZzyhQBMfd5s53Ma5XeUhn8+hHEP869NNi3Rqr32/uANMWWcAvBGNFxOe
	 jko+Ihp8yQalA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9806C5516E
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178544283368.4038.3332139028725968983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 652a76f52f4bf5ebbc1863e7129224c89b0b7582692e351c2fdb85090a97c068
Date: Thu, 30 Jul 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785442833

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 419A438BF62
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 08:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782290194; cv=none; b=iDEIF+Xl2fp/iBZ9WFF9aWA2LeMipQ8hzvrD9Qukd48iSMrzsLFbn8Krij14TruM2ShjAt+6hUxLqPDgCOkqLhql8rrzqAQkIv1BRttYYzL4NGMkCHXAUl9En/fooxHior05ku2pkQh9dCNBZMP4L0lRJra9bG0rxU3cfufwN6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782290194; c=relaxed/simple;
	bh=AK7RIbMmCRf0N4UVgHnOKDEpCebDQEBvrptMTyRCE3c=;
	h=To:Subject:From:Message-Id:Date; b=tolRlwX4D6alzJ6O7dI6ZtEY5ZF2l+NuxBbsMvIO/ZkmPdbSDMEWW8e/092BcQcEgsur6OEsdV8LSN+O6Z8QNcnXuV+1XAfdCV2H4P9Wsk3JUahroLOxMLqFlFY3cEl4Xmg0dYOAwJlpFP6Z+59PGHxzl0reGM6uNP4b4AdCaTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gGx2qh60; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gGx2qh60"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D45F4C2BCC6
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 08:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782290193;
	bh=AK7RIbMmCRf0N4UVgHnOKDEpCebDQEBvrptMTyRCE3c=;
	h=To:Subject:From:Date:From;
	b=gGx2qh60fVeYLRFpZ9VVYtGgxhwTdbFNw9f5qmL/walc9+9pEnPGoHnFpQ755JB93
	 7t4EM5pRkztFjTRAgzgYjb9H2bBbAHfPzWTSBbWpL0pQP+EOzIMJe75kIOSVsq8v4q
	 WUTJNVLqM6vJfxvc3f+oZgxSFxeyInPS3FrrcZCjEMkUwTcF2y/HrcMxKUxSeN/Gap
	 9ZHsgm/yXX1mzpBZ/LH3w331YkdJM9yPjUuzzya6HSzxMhfcrMSSBMPqnW3M1tEbAA
	 Kng+vC89t9hNTmwNYT1dViJIbkedKSyPiVnCmnERJuupwKZA3KHM0bO93CElYRtNEM
	 LvMRQBBe7bj3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B69FFCDB479
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 08:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178229019373.20790.576333457155485008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f839439ab4dbc1793cb00462ae1146c315cedc311c38dbec43970e4fbe3c81ce
Date: Wed, 24 Jun 2026 08:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782290193

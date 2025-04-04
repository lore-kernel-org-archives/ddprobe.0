Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4941D376
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743743994; cv=none; b=GDMC8BJWpfS5dYx8qIiUhMhWedJHac4HOINYnE7BSAMY8E6geFgXj8vqpsIaK5q6YrvCCrr+LOipZRI1qtktjID/KrkbrPYRN1PWYz82anYSqG2E6KPeYR3WYsw2wzBgb65PoJnRdAs8O1X4ZLGDOjvJXZ3DtF//rqSsRAkfGMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743743994; c=relaxed/simple;
	bh=BLYabhsbckdR46WlBJuQYp/whNxDDAbz2wkqW9bJzs4=;
	h=To:Subject:From:Message-Id:Date; b=ISHdmU2ejKSZ8lj69BjVq652nHkXIBECmJI1W0cUH60MXP1yDbSqyXEnVqPEh7zkKYAk8b09OK1I4ar8bch/7gMfgYWWxnc1JYgaMPW7X8l1SYC3G3F5lsmQ02M0QvytKtcf5xRX41l2HNhjSMwbarZFzgHsHJN/zqEPpfospW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JnjSLihN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JnjSLihN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1633C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743743993;
	bh=BLYabhsbckdR46WlBJuQYp/whNxDDAbz2wkqW9bJzs4=;
	h=To:Subject:From:Date:From;
	b=JnjSLihN11mHHPCYEXNbArWgnjeRuxj9HwWQHNSW9NE6rGuYQxgFT57l1v848SiAH
	 QXRstb0hkvtMywhoVb0p8Odmp1EIyofkrqnD7meGD/L/2ItwpnceFenNmpF8oyZ44T
	 roiCemQ/o7KUe0CX8PGa4j1L9TTsETjdAWzFkVjhHJYZo1bahbYji/TCYZWpcdQz+S
	 dYIMjrQNmg/M1zT/RopUL18ankjHmBrR5qUtCMGGL2oXE9MXfKIuhT3oVM+caiuNeV
	 Dt90KQj3TEwDpEDlUbKZXsbJOpmDYhXNc9cUEDjHouN9Xzb2YdFp97P1ZM98kmAYOJ
	 Fw39SsuGvC4Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956C8C36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174374399359.25314.60320076824895490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4daecdc5c96bfdbd7e0de416958098e3e97d16e626a72b9bcf1aa612b2eff66a
Date: Fri, 04 Apr 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743743993

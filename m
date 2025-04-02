Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A71F2E3385
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743626394; cv=none; b=HeLo9CK9zCId2SkNnYjhlXJz1yQImi4411kjphWCsmv3wGziZMHIT/IhyRz0D9H4SYDUoRt0WHBUJWYcmhclyX84Dgx+qNNho8+77R6vdZliz6YZ+hCYnalGFesf785fpr1I3uwoFFtzRLhuh4mo+wZNnVqGx0hfsMV2hhQZdoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743626394; c=relaxed/simple;
	bh=O27rIkhDExtVDKrtzegNkpvKudCwhLBJeQRfavsghek=;
	h=To:Subject:From:Message-Id:Date; b=XnQ2Ib0wX/XIlFCo4EQCXvpPGQHEPTh6nDzoHoxSRnyaWscJ45hJPFhVueNmygYPAaiFemCP7ipU2HdJ90FKkg2+fLLwiHNtlYAsr3kowOhAaCI3TzhfkK1fhmiMbPlbf8V1u/xsNaLB/t/oE2Ej5DXbb0wjLZPneHFCyDpFfqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m3A9U0b2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m3A9U0b2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B44A7C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743626393;
	bh=O27rIkhDExtVDKrtzegNkpvKudCwhLBJeQRfavsghek=;
	h=To:Subject:From:Date:From;
	b=m3A9U0b2KVfWHHjkzBYk0Zp+2DGCFxZl5WOTKRs0CxSWH1cj7VPEGew0OJ4xVxIb8
	 7p5N0XuNqT2YB7RkNBlZ45woTndoCURkLSSdag8JfVnMErYgIABH8rs/698GycVwHb
	 qDj20gZHhBCkBDULtyw3nHvAGDna54DroheVym3lPmReqoqfTwBOgW7OfrdsOjRn9f
	 u+nlgSknqtCwk2N7BD7bjtrYtRNiyOUIhBwMY84iMk4rgNNfvB6M0K3SMMtx06SKal
	 4Hnu/7Uedc2fC0IKoBPsCoRPcLlxvdCoy+7ol6LzsYRBbkjpwlFXyq846L26Ke4RNs
	 npoN3wbsNhWWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CEC1C36018
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174362639360.9986.15169854665109745521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69d00a32cad17754088ecfb7021422d7d3325ee75a54ac06b9a98f49c910d21b
Date: Wed, 02 Apr 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743626393

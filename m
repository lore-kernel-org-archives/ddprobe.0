Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2595FB67A
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749264594; cv=none; b=F980ucH21rRy+1IRUnFhx0aSCXWyHGmdWD8m4QPhGZ+syym83hdYBGxuNVI5a+j6V6T4xr6j7tJvxjBzjSxotf1/G7NPwRFv00DAQCNVTB5saCXN4UHi/ThlzIkStxSwWTZusRUh7BvPbVZipndOuzCQyk7SxCRmvd8PDDE1VvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749264594; c=relaxed/simple;
	bh=B5VO496hBS5szHjwiuktd9+WiIFAygTi3amodjeUY3Y=;
	h=To:Subject:From:Message-Id:Date; b=FmmTehxCcn64hN9JrQvZbSO3KN0Bwbe9Kf/TXIyoJ37L10mqDcEDV4qxqFPnjwrlf0z/8ZPrR3/mR6Y3ip0NPGa9DyZObH6oiCCWVn2IMBcO7NVLDKaRocx1URu4POQnGH3INC5dczWw7IknCXDKZk3aI89Ml4g7DBbjz0VwZwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JJc7+Yx3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JJc7+Yx3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9924C4CEEB
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749264593;
	bh=B5VO496hBS5szHjwiuktd9+WiIFAygTi3amodjeUY3Y=;
	h=To:Subject:From:Date:From;
	b=JJc7+Yx3bdXd+nyVnZdd9NyI8ShTPB9iflvMSLBhBh4TuCyVEEsFLI4sL2I5TaShR
	 esB6i2uyGg5hYrZGoT9vpvpWZGEiDsn8vD4mdpxRyuVBBDZ46tGJUJcupyUwdhVEs2
	 mRXqncXfrWFakwP7MLv0M7XCfnyvwRcHzYGO5p/3YeGDmrEUCJdoL3pETEBtH4lA2U
	 H1xd0rTxzFflBHRbrfZUpqHw20UsEuWOiSvCHNubi6oAE7E+aZwibpP/H4/8bdVtcJ
	 YBWDMpQf1eQpyani6u5j6aNa3vH7y0ozJZd2ErOr5ZJ6qKeSaEizAp4GpiKLm1hntB
	 g2/MiaTWSINeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951C2C5AD49
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174926459358.7167.17550181644404049733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 826d201d1e0a6fbcc2936cbc43e1638f4a35c4f1340b0f17926871e700a91ad5
Date: Sat, 07 Jun 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749264593

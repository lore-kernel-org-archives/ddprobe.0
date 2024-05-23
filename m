Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FB9EAD2C
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 22:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716504803; cv=none; b=VVO/CHtx7YIMjFseEWp8bF2CLjJ6wjOLLK7REeffvcBQCnWpojqV7ycGtYGrd1JGhv1wf99GR3ZSnRhyt+JpggEy1zov+lr/i8R4dWM71C01j8NWtAYAnbDR1TEszkUIdwBDQHE6hxxgU4BPzRqHHlMHJRGKyJxd4fbjSGu/tsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716504803; c=relaxed/simple;
	bh=oFbZicFiAFcFTzb1NJ4bAaS2BLfYeKxxHBDfMZe5LJA=;
	h=To:Subject:From:Message-Id:Date; b=P/vwq73cRs4S7gTN/xHIIBqGfNCF8YQdpVqb4pT5ART26oMJmin+pwXqge9xN28TZcITbCn0E28Ejeu8Cvu/SXxVHStwNngJq5+mTz+M6EJmLwLeSbkatbHRGKdqHvplT6apCLsukvu+IjFwVbouEh+UIzI26pC6BJAmmnQPpMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fHTzIyJn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fHTzIyJn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3B9BC2BD10
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 22:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716504802;
	bh=oFbZicFiAFcFTzb1NJ4bAaS2BLfYeKxxHBDfMZe5LJA=;
	h=To:Subject:From:Date:From;
	b=fHTzIyJniFF1AaZxT1OaTZ+BJHHPMU+YaJa5TsN5viI11YGRoZwZEojvNjKzLBQO4
	 LQfVG/JP+FW1eEZDRJUlugV0s9x8PD+zPfmIaW0dhqnuDCMN664j3T7V3pxEc0NMMK
	 M3GHICPa5xkDbY6vC0wFD9w1xj4vOWcN7wa81nqbF/QgvGW3noDun+9FWeWr3Rruk3
	 TICgnBvdL8ilvHqXTo6EJi3vKgFIRnuX4caJaelUTeJHNDGGonouKCMwCOkpg5T5P8
	 gaJ0bFiVB0LKBZe3Wj6shLISzLnZqCXePsCDfJeCoy7eJ34UytnnSzC2whmyEeLaHW
	 PPkUc4bff9mYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF6F2C25B75
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 22:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171650480282.30364.14294036547949392672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00044786e84ef69c9e65a31ce81b3770a83819993fe28938d0d949ac1e515fca
Date: Thu, 23 May 2024 22:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716504802

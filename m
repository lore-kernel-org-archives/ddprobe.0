Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C798202C4A
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733490954; cv=none; b=b/yVTcOxRGcPkiM/AKyEQsQ944nfRt6UGcMUViB54twf9Pb3nXNQoY5n0mnDuZ7I3d4PPqLZ1JcWRAzz584YY+lbDdfoKxf2NxK1Xoycf27feWQ/fX31O6y5/fHBw+B5FUKcB5HNHJOXzLJXKZLrsZ2Y3PL0W3YqGL9fI0FtLDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733490954; c=relaxed/simple;
	bh=uAQ/jDXPCBT6n9T7P0CJkZFWobAygZ0SmUVHHbSfEjo=;
	h=To:Subject:From:Message-Id:Date; b=vDpWNjJn9Vjk9i2uNorrn0863ddK72lm/7kZ5nXzhjocjFAw0nHj9ZfcWA72shgc9JcvT8xVfoz9OtIRLsUxf91deG3YYVDWHVUrwCyma+nd/pQlzYk89D9DHLY+3CRxYXKySNlY2nAUuFS3sSThEVQTEJN69G/VUBSNqJ5Ak5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JiUfKIbF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JiUfKIbF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87F1C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733490953;
	bh=uAQ/jDXPCBT6n9T7P0CJkZFWobAygZ0SmUVHHbSfEjo=;
	h=To:Subject:From:Date:From;
	b=JiUfKIbFlYnnUL/V1j9z4YoXOqsBJs2etZkXYBtviDHBIopnWToN02lgQcP9XPbat
	 NEjduqgWiDIOLKePCo7JpJoapiyfbSwSLVed1uofEKYBOpqcUzFv5porKLHCa0ECQc
	 u1FBdgG3rY3V3WE1MbNjWW5hAHfZWT2bkoNnUoSOkEmtO/MYbhIzyM/397+xESb+Qg
	 UB/K12nyjlINKInfAk68WxAknOsZ0Z1031Q837BNKSJmQx1GfU9+mmE8+3urr85Xp3
	 lmTfn3+l5kIzWwb6Lg5+QKHOq61HAo/n2nTpj0HI+Hj0pbjGH0UBvMaVf4F2IGr/X1
	 GBigA1fFOoCHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95536E77173
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173349095359.6455.5046328721041497413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b94b29d2d5a53dfcb05e4e1f0151140f62ccac7aadc236f63d824eca2f54bf1
Date: Fri, 06 Dec 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733490953

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3323734BA58
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759073994; cv=none; b=FLz9TtlNuEepy8VadlZOWuk+4wvRvyEdL8eL1F9LnFtMrejQYfVnyX3eriSVUNLHovLohtbj+PLI7zpBkTEr9xzahzpt8xePwC/oUAC+QWA43lVtQNmezGjA2bkfQWDPPShYHVqnaN2BHGKACt9y11zFHAojF1NyN1fq3i6ClHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759073994; c=relaxed/simple;
	bh=XY+Gu2NPoeG7vCYX6VHpKWXzeeGUz7VczgjK2pg6oPk=;
	h=To:Subject:From:Message-Id:Date; b=WaPhRF2WD6X+HOcyNhYpvZkyhnStn4KlhYM32M6RnpgbJX6Ygp45CVXm1iRBb2HJGfGBUKfQz7HbRtetRIgyOawsMkMXRDTNCzBfHmLJXXoebZK+atx6kdRgr3jUfIaA9F5pHxnF9aBZufJQQIS0XwcK0kbU0/wAny+7mD/h2yU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IcobYCF+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IcobYCF+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8527C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759073993;
	bh=XY+Gu2NPoeG7vCYX6VHpKWXzeeGUz7VczgjK2pg6oPk=;
	h=To:Subject:From:Date:From;
	b=IcobYCF+tZmE9DbMzLsV0SyYY55u/Yl60YZfDsv3EWrki8DPKJn1vruWiQESWVZaV
	 6FcOtWFJY7YZtyp1MILf0efdojpiCLpRSOIB8FqfFhB6OhH3o3LFN7M+riznHr3adE
	 jKoVoWCNtUAvip4pZhkskPwQV9sAlXBYvvG7Xddr4A5yPnd2t+YAnQHpXg0R89Jvo+
	 2exJ55k5TNyQFbOpOa2LpNprFBAxIMQ25S3e7PnwQ2If0PTVU+Ok0QjFv6xBaj2cLe
	 +G0223sLkp/1sgte/nPYJCrza1Iy3iehvx4Ec0+2Xc9kbkx9/X8ZdRaUypR+ECqg3K
	 GAfQjPn6w1ilg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95544CAC5B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175907399358.5362.15976505843212475951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15c91c1ad3b831ac418edab6785265561c50e3db15d9c1d9f0efb43284732f5b
Date: Sun, 28 Sep 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759073993

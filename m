Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 421401D9A5F
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785636634; cv=none; b=k21NvWv7eNVpEFZjOJ6guPuTqyU3oy66OeKcBLAC3fssurPNL+gqNyRPB3u9VvABaEPXqxyqLON/iVZVWPx0tot/lIW9upyY00sCXBU/1xuzaQX7D1Uqg4JeuREiNiQ1BVO7oLMJMfW0mcCMcoHYEWXKurnC6tGWAbl8dcqXF2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785636634; c=relaxed/simple;
	bh=DjY1//oU0If11o4fwlmFWPb/dBt/WYVwOVNXV1ydOtQ=;
	h=To:Subject:From:Message-Id:Date; b=da1I4nABEJoIzNq6pD2T6FQq/I6asN2NlURw8sfTRVDPXaVvhnZH+S+71QUXCvxZAezp/emn2HC6mskSjX0dh6N95hET9A3sK5nHaANHMpvBnqyUWJrX7bB5tf7etemXgNXAlEqo5DJPSU0rzUx4xVa1f7080SQ71zHIMI9nXNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BSaWLK97; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BSaWLK97"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC4D6C2BCB3
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785636633;
	bh=DjY1//oU0If11o4fwlmFWPb/dBt/WYVwOVNXV1ydOtQ=;
	h=To:Subject:From:Date:From;
	b=BSaWLK975RscHgzC2XZ7PeQyKXtX4U4kN3mtjXh4vzQPMSO03UBQliGTIlNOp8gnb
	 0JLBoXeOz+o9ALVL3uCcVz7p238dLpFwNktCARv8oYetDQeEv322zJJcgOTa5LmMaN
	 6ZYfFQd4+iwjujy7wTH2X19IY0jsI+urKmRmNPfZB3vpfkHYT5MOQZ3mTTocrY1gtV
	 0uYHACcl4yLa1BMPMcbRLNBmRKeGnQBWymkRGP0JiQwtRH+5NggiJdI1OrH0JyEb+A
	 cNG7VPnjegTJsOABDtaK6eUxtwMVOfDs2LF0OKsMTo2/nNnwGfuviePg3Ev5sxKr5+
	 d+dXppoXoyDHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A989CC55172
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178563663368.4683.10891353873025991213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74fdea31e2e2c29d19766c445da13dad14f2567accd37ef394ff5561ac9efd39
Date: Sun, 02 Aug 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785636633

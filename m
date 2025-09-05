Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C483A20EB
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757036993; cv=none; b=K10L3ySqaS31TW7R8Dqrr9uyFNAeh+/59FoDSJ+VnRrpOfzz6YJnRUWPRXT+b5P3LnMSR3Ytr2HG83Bgce9tOi9ux32zeoU8uSy8tCDYBDS1+EukoS3h7hGXamX0Gg75oHyyhOsCssqmALPcY+2lKAesu+iYY+SnNKjejiR8PN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757036993; c=relaxed/simple;
	bh=l6QJngYhZZ657VjPyJm9rfH97UyfDhN6gi+TYj897O8=;
	h=To:Subject:From:Message-Id:Date; b=RUDf9lGU+yHBEYQezVPIpxlWmYEg0Ex+3QLyqCm7tK/sfSlBZCI5cITlIpe95NOQWoZvZXYDfFHPPiZzsYyN25ayg8uR0hZZRyZ6L99btUiZdTZ2SrgEPfePprMvD3zOeGfobn6y5/A88HF0m5YwdPqs73IVE4adEOc83K7LC8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JXxa1VR2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JXxa1VR2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C5E5C4CEF0
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757036993;
	bh=l6QJngYhZZ657VjPyJm9rfH97UyfDhN6gi+TYj897O8=;
	h=To:Subject:From:Date:From;
	b=JXxa1VR2YuM27n50mT+cNVkpIHDiAdMyUpt9y2SGfMrYBI89IXBx9+Fr5+JpOZZug
	 vqZrz/OwI4NdqC3MG0GSpXSIvdcMZyQ2HjKLbnD6+JnF8bikfal5eEuyNuOkzhbaZQ
	 fgCAv0Ad4P9j3HZByaj3TGnOGO8gDoLRybVCKstQcGhfFxKH1kGObHjRlUBXiNxSTG
	 1HInW3YUJy0mjFmWtqtuKbg1eENmmzRlfy7bZsyZa+N0YXGp2+R6AHvZRB1h+yi8yv
	 VjghEZIQSXHhZ+nDKstjzmoipLeW0cPpClwKCwO4kT/7YsHOJXckhML4cFGce6iK0S
	 ZCK4FQ78X+s9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F113CA1012
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175703699357.27380.12319205255968587678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea5975a890156f3f0ea586fa69dbc636be520a77124f545109311f5058b96d2c
Date: Fri, 05 Sep 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757036993

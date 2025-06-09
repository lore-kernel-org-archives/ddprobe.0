Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3481B137C2A
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749478794; cv=none; b=qGl9FPAXxF1Pjxq70n3lldsNx2MP1pew0AC89qwdUArcQgSMEHg7RVe23N6eMWU4Yh1E/hYNHJFn4SMLoXDSMVdZRfxsCsAf/DisPAdbSQj9paXsiMydOOYB7AYg7Zd+11V97S/De5LForHNag+UPBrCjyTjqLcCVgcOUgZKcNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749478794; c=relaxed/simple;
	bh=05Zpwi71V9sqm6ZdFeRLV0pOHl6FfJxIPJr9NeD1ds8=;
	h=To:Subject:From:Message-Id:Date; b=RIFPSslymfxGx3CJqp5LnY7AaPJqP7f1Uo9WscQ7snGzs+kG/STuqfMauGiDbkqE48XzfrcSZgyBaUCrPPMe6FT0+Vx1p0Q5Wnea8C9DSdpoNnQ6A4VMwJOFy5WJZCqYXpqTwP6LvN6J1KW7DKOaTTVSUOw7te2fQlBNGYG4+X8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AC+NpwWK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AC+NpwWK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79E4C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749478793;
	bh=05Zpwi71V9sqm6ZdFeRLV0pOHl6FfJxIPJr9NeD1ds8=;
	h=To:Subject:From:Date:From;
	b=AC+NpwWKjvILLmc0HjJub/KiTGaUeZKmDv/oSjri8xLlWUoGX3mKvM/fZzPrL3ixw
	 YB6YWhrPe22wlqMpO2pA5hoHLrDvE7a+EKazrKCuCJfEaUYxPdMdtIu0FISOG9eFXW
	 SvK5n0KsaL8WYMxkJiAT/sCq0L5CpK1ClUV0dM2VnbbXFpuJbG2kTZ2BKje+OzNfcR
	 QMVFKD0JUYtnQ//LLSv5ku8Yd0aTGGgyuylQZ2oFWT0wa1NnU1vDONCmNZnmEjGMUP
	 LLNb0Cv6cCRrhinFry4Z+RuSkscJZmxrhiLg+T69RGgvva3b3W4QYuxqeDAb4iitk2
	 aANAn0HUsXiHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948D6C61CE8
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174947879357.29153.6378985713795516847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f741f90d7956db8816b55dcbef0cea908e0bf5b3d29cb4622a0cb25e8d0663e0
Date: Mon, 09 Jun 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749478793

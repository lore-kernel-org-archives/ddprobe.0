Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 251923A783B
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787182834; cv=none; b=okvsXBUIioyEPTPDKXKfBjWRb6r0UbLCLIN0X9YszxXY4ze4z3SuT9maMVw8r3dwJsgwZptvmdvl6i2tVVzh7lBnQLQC1EUYMvssaE37Ih2daa/oLRx40dt3ifaNXX14RrtHhDfCHbNhwRkoYuB4jmG9UJ0TppKp73qyV15cLj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787182834; c=relaxed/simple;
	bh=75jgFHbZDRhkrIOX1xR/Fis+P6acsCTyBX+bF94DpX0=;
	h=To:Subject:From:Message-Id:Date; b=eYUniFOSz/shx6IJdU8pDsUZm622DAi3ibgNuyGAABrJmowneJEZZFAI7p3f8ZgCXYtgG6pb5Cvdjc+6mSaIhQFFWh4xuNRCR7SV/lqd6iok5RqEQ7jCovuP/hs4AOPsF3o8YdIepz6BsgSl9E4qMPeBzzRDqgp4LiEN7ATkzsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o3F7w8ZV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o3F7w8ZV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E7CC19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787182833;
	bh=75jgFHbZDRhkrIOX1xR/Fis+P6acsCTyBX+bF94DpX0=;
	h=To:Subject:From:Date:From;
	b=o3F7w8ZVS4NEYAyqUeUZCY1v+SdJ2pZaEkH6Rx1H0h4mCACQ8Z1XttLYfTUi9JzXZ
	 Wu0g/USzMXi6a3cvSX+oZEHv6nJSAQ4CUAZGndBZaefsD77NWqZmS4hX9EPdLWHhCW
	 HfpiW7lSy6gZXcrEKs5lHFpYPikARVHi2b1PphGCtPGrE/oFzaDUUisyw2dTruHASf
	 DTUcIG1ofB0GDuZ9OvWN1l4teosbrD4WFvy3P7bfDGiUwyDThKoJnNcwSTGLtyEEBk
	 0a4XQDcJT+XpURiMXIxlpS1sFCV80jueDlXFSR+lZMMZ36+EzAzyjn2NaGlJwCQSYR
	 sqXGcGIkt0kgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCCBC5B572
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178718283368.3003.838413063808127567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3199da399ac23a0365b3e5db897e79743ada64c5dff7c006c159ff518dcf5e10
Date: Wed, 19 Aug 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787182833

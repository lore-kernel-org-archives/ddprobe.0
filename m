Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 126BD3B2BA
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 03:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769398434; cv=none; b=KS8COokcPMgRqrY5XUPHpU1zpJDO8nouOT7oFOgwSGSjv/LDu8daBx7Hh59UwfvPHDG/i33dGsLNVj3GdF1ziAClRwfTQ389a9OB0trOhe132QbA9TDiJl3z279BTU5RdUFAjWv/QHsp0aLtjgOTmd8PeTn7WQ4jCTrFQ5zhNfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769398434; c=relaxed/simple;
	bh=0s6HtI7SRub204599ufxcSypZ3K/KCz2i24o/hCmQXw=;
	h=To:Subject:From:Message-Id:Date; b=YFOyYGzSBFuzF9RYkdQ1FWLW89Xtyk6DiLCPecrzRriahqXWmQ8W2xFRmZ3D41lcWxdTx42xc+urud5/uMOJfzMub1LzA0ZdsOWpu+IahY6etPP2LJ8XV5ZJ/Jo63jMlgZWINuRRmep4xjmAQ+MHdHrlxOzuB2mmrPY37oNn+14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c0aka65r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c0aka65r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A051FC116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 03:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769398433;
	bh=0s6HtI7SRub204599ufxcSypZ3K/KCz2i24o/hCmQXw=;
	h=To:Subject:From:Date:From;
	b=c0aka65rZ5mdyPN6CkdgzM7S78c7wpOrTA0O0jfSs/WrSjs9n+G6RhzuidLaSuV54
	 D7VBBXzMZq1GhqmJI1DTCO2ISmidtF4HbFPWfBUBCG4jSDipSUHV7sOVr4NvkkA971
	 ZWYEDmyaqmE9Sheb7OzqjwVvSUSNRZyrh8JbwBqEGvOdC0EoFFMpML5XrDx8bxBOtU
	 i+deKPcRjAQOeilkJQcfMYYY9rC1MeTuYqlIfqABF6qZHjugCWlyovOnR0krMu6nFN
	 6zWMeS2JW3FUwzYy0Lf86cqIoC5K3D+VxC5omCOauB57loXV3BFlW78YYBUF3qPj8Y
	 aTM2Qn383ksSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB7BC88E42
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 03:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176939843357.11104.13628869199106210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2ddf68f87609a1a0f4fd067400ac1062a4f1992b1e70e4e0e0afce1eb6548b7
Date: Mon, 26 Jan 2026 03:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769398433

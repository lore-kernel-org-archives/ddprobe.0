Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D27213B284
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 15:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764258174; cv=none; b=bf2zRv4vYSgL2t83J3gOVrlubPHMXY7VB7Ey9FyH731yueS1cLsKqUd5VWOuqKbn/+h3elPlG3a2gtjZtGQyjrCi0XKz82Whb6fgLVNxbrZjWKr2grZrKqfGQenCfuo4fuBcofWWI5C4WcmxGt453YfbWVuErAAbCSyDGhs+UZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764258174; c=relaxed/simple;
	bh=8+MERwL5A8/IMUXlE8Wmzk+XqtFRkJR2YZw/el5ozYw=;
	h=To:Subject:From:Message-Id:Date; b=j7nH/oXmbXtNBqhBjjMCsDlPGkd/dulFQyS9/qO3hHKQVZHP37YtLtKFigP5el4E5Pm+osm57kIlCzOHPH9RiYajiwUc3WWL8OKwlnqqZY3Mugmb2sPl0MV2RD5S9KBybAkmTO01DTS5eURLjvlgYmMSyVqfbihzOVfNKN/kk1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DBO39NUs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DBO39NUs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D11E1C116C6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 15:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764258173;
	bh=8+MERwL5A8/IMUXlE8Wmzk+XqtFRkJR2YZw/el5ozYw=;
	h=To:Subject:From:Date:From;
	b=DBO39NUsy7D2LQw0qt+BLjXsNGnPTBMTu5a+KQhXNr9deqwXMPJhZhjjeguquHTuh
	 OuNaWRg9IhxIWp6u8vauSIWLajWFEAYsMzkFFdZB7m5XgDQ2SBemhVRAIxMxrqwpyf
	 scGAzZIbfEjp6cfjbvoIJgvBrH0jPQNSvFrJMe9Mmtm5rbUomVDX8cxoONswGlFYEE
	 WWuASorCNoXw00ZAJ3QAWIfcpdFhFOzhAsj77Vr6KRYW/QEG+0wNydsGanWr833zgW
	 mErFOQ19+ay3M046QI/THcqvRzWPA4X74LjtWGyRj3Ci1mp/MqmBFsftBlX0ouKyEP
	 Bdp+xG8yMrnhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8BCD111A8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 15:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176425817367.19373.9470686318877174976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4133b137a1d4435291487b6cbe24a8e5e438dfdc435172bef4ae593a8ac68599
Date: Thu, 27 Nov 2025 15:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764258173

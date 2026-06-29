Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1C2274B5C
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 10:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782727714; cv=none; b=tijeLD7Tm8dFn35E7s/fNaWCvdDlKIsnxAWARvhYsayxNHxBphdM0NpFEeh/Z5/1ZLlc5QY6ZefYW6dO8yr9FpLzWl4NqjOcxVeR4OflphTgtso3D+AUCs0+ZGmpEsriNypbW+jn1kGrGVwGpfN3yQ79PgqsqJcSLEDjy0+nTB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782727714; c=relaxed/simple;
	bh=zyv+WMWP6yyXZIybsOyRVXjF8diH/NMUWSrsN9HmHk4=;
	h=To:Subject:From:Message-Id:Date; b=rAL36XZ1EnctQZ+jMNTh+5dHFSmsdMCYcEizP+IU9IVTrH8j2Fg5tOb0SRkPa7Ol6ryjCO0BTlAgRdgkfYztWS8jCeSoDGs5z3Mn1ftzKbTCWm6m2r+ra1p0dJj0KFhAq8gWWVXr1tnBCKsflPxC86c6yBSnGJZPbNNMwUgYZz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=arVdW7Ux; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="arVdW7Ux"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C86EDC19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 10:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782727713;
	bh=zyv+WMWP6yyXZIybsOyRVXjF8diH/NMUWSrsN9HmHk4=;
	h=To:Subject:From:Date:From;
	b=arVdW7UxRPLo0gUMv0lpZhy0fGVBUglyQQIADDlCanpY7jL2+sU+S1XztiEeljHzN
	 +dFN1dRhh5yle1TXw/8d0Ww0BaxFWyJPPi0TM4E3dEyYwOZIceMKrnl0l8UUZplCWu
	 IaPxp62WWmEC3gKjUqjDEicOZ2H9bONmc/Jk750tpIQXzj6Qrrre7vy7R+pwgCJ+m3
	 YRbp7i7k1MV9rmJH8eA5yGPaCAXlKg6wPSfHd8TJ+Ps4Ohq2TCQQLkFZAgXVEJycZF
	 liP1zjKFxRBbQJonTOH+ZSPqULqIbJptvtyZ6hlCv0Fl6tpC3NW213e6p8HPyJZ+jA
	 AXrt+qrhA4XJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B043BC43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 10:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178272771368.9109.11810072308562174004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ef908683869666e4b23811bd06d21c7f284b2d7687b0d75d92346c6cc87f749
Date: Mon, 29 Jun 2026 10:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782727713

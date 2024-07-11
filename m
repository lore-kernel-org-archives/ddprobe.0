Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E22912C477
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 22:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720738043; cv=none; b=dv2hn4pxX+yiYUm08/YchpwsbTz8K9Xps+0SccMgHrSlozlaNczWZQgGnXrRlaRpsS6WZR6XBQ/D7LGr7wVmsVNJUjXxxgA7yyFsYpo5e+dRgABqXE9gudIST1VjIItbnLqD63yo+thhqP2o5Ub6aFCS+HA9VDH7bnWWYF50tM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720738043; c=relaxed/simple;
	bh=F4QuuJZCM1aPzruPQ9ISXdTYF8/d0+058uXO7liCLQM=;
	h=To:Subject:From:Message-Id:Date; b=YoXyCbk1LT4yZ5QfJopLkoriNXvg/DQ0wf/FyB6FyigRfoeiJSN/qlh+TrRp2E8W3K+Xk0UX2FhIPbb0TrP9PZkiTvg5IQC0pst7k85YCJjvi6ET4BXp8JFRKyFyXnCatoUaz1Z/G0jUXp47tNj+ZAGIz3FXIwPs5q8UvOMospY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xk0kvew3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xk0kvew3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA4D0C116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 22:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720738042;
	bh=F4QuuJZCM1aPzruPQ9ISXdTYF8/d0+058uXO7liCLQM=;
	h=To:Subject:From:Date:From;
	b=Xk0kvew3S9YsE1bsO2naw8L5Epd9f+s/VE5ACHs/emIjc0CEYU4ZuIDCRpu7mjeRb
	 J+D1SgRNIDErIRb+POudIvVq0CEuL6/0vz4RFhfeneiQTT2PNzfr04Ff2vyT0urJB2
	 imZTGa9QBm0OaK/pzmFmGCrSBqOuHPUV3fJO/bWrSMbNdYFehAqLZ/Li0KT4fsA3aJ
	 Nb0rYcfGCvnc9g6Glo1RY+a2JCVn9/eAiXKvvA8YyzRIdhOp7Rq3V1z26Mu4OM/C+K
	 mVvH+BGsf5pYxUP4HDq61hwV6xQtE1vIAoDc/dt9USeCfdPsciSnBmfZPoXXlVSv1L
	 UUJRHQHgsKCHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7003C3DA45
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 22:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172073804280.2682.10389257988639410202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d4882c2a9c56b758596974c44e592bbf867b74f33ab788c4f3579bae9355d1a
Date: Thu, 11 Jul 2024 22:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720738042

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424AA1465B5
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 19:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716407603; cv=none; b=RHX0kHSIx2b3LbIsA0qzK/hw2pCaKFHsrmDBWH+E6I9zZJybfhT4I1C/f8CnQNrtbfpYng7rbSJrjXsEWLTmjvhhApTryaQ4HNPuUUio/V2NnC0LvQBioLL4tEKApMNPcUpHHjyDQdcwZ8lqngGpGtYCa4bUWoJNUa2q1iN9PYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716407603; c=relaxed/simple;
	bh=6pEYwAjtaaLB+kNm0NZUBfwQNRiw58bof0SUIH8hZD0=;
	h=To:Subject:From:Message-Id:Date; b=Cz7gInJ9/7eA5MEAXsYtpp/E0F6pYdLz/GqUnNSCP5J3887b3IkCfeDB2T4vSpnBqeyAiKdpqWOdJsqOnBmIXxce9CnaNl3iSQmKY0D/tEj0EZrf4idCn8FMqKk2wucZdVypas9p18fk5HpeG3R8dGCLdFPlKvgu3qyrzCetkb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bopMmcW0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bopMmcW0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D14A8C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 19:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716407602;
	bh=6pEYwAjtaaLB+kNm0NZUBfwQNRiw58bof0SUIH8hZD0=;
	h=To:Subject:From:Date:From;
	b=bopMmcW0NK2skyOo7mVMpVG0GB+H+Bhe6gwGfJm3oY0hf0osUaIIylR68O31hj/PZ
	 uyv9dTW3S7LYDRLIoZFzcEIbB0fnss7MsGCFO8P6K9cr7GJEpO31TMzbl9UC9WVxcI
	 hP+lSIvY+Y0K0h6+kHE+rB4bukMAzaTQxvVGU/64+bDbka4pvxwRGSL6fbsaGDWKti
	 I7xIExmYix1uXQIgB0EfTcFy4Ru+fMaWdkLHRF8pgkgm5Y4zMAbLmEJiYDubusi1/W
	 azst6BOdWnZuww9CT6IuwTbt5/qy7F/Kk5hQpIAaAibHFwEDRmR3pMHZEJRensKbHk
	 cI16yPQ87L9GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEDBAC25B78
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 19:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171640760277.23378.8281648783606019387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1108ddf50804b0624f5805307169d44fdc1ac107da1231833a8d00a88108534
Date: Wed, 22 May 2024 19:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716407602

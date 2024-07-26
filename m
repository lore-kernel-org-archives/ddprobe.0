Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F8F176248
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721976954; cv=none; b=QGzZi73BovJBG/Eqj1MSGFz6GHFzKja22i6/72MtFdslrA1+og7TluRrblqPvbP0gL1YieA7UfizuRNIl2Cul4NUm837sHGkE424XYoozYyfKkneeLdiNCUw2FUREtYEOH9os+n4EtZ2V39VTyMaj3Pb6PzrTjVObpBrLNlYZ4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721976954; c=relaxed/simple;
	bh=NlrGDtgiwgR4efLjPh5u+tDcrOBcmtRWTlfiFqFcc9Q=;
	h=To:Subject:From:Message-Id:Date; b=lokDtq3AYlYBiY2KCw9HHxayRHOjRP+m/LpNnMgmTtfYKQQ74aBXUZntB8ll6oMCUTM42K6MJeGHyO6AT8bXufwvZcyDrFOAGgCf+u1ckAyP/XIklysm+fz6sZK5zA7LJ+12f0IeZZhUDE3dowVJbzcG0pHaC518Pgs+tUkxr9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uBZggZvW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uBZggZvW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EB3C4AF09
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721976953;
	bh=NlrGDtgiwgR4efLjPh5u+tDcrOBcmtRWTlfiFqFcc9Q=;
	h=To:Subject:From:Date:From;
	b=uBZggZvWo3dJKq0hIm2AW5oyJ+W5+Fln/tQaFx94XEnW7/rSQkiY8VCcSuSCVj5oa
	 AbsvaUCUyQC742pTnIyq1rGoMe6PFE3jYirSs8YT8x1b0FmJ+YbyL/+xnZQclPDSoK
	 3vnDRXZN59lDp4v/ABDbJLIwUb7ugPXnsg7YBcfOo4GihKOPWUzW4AEpZMo6IQEmky
	 X2IDIpmKn/EPlAU70DTZ7effaZjNee3vdyrI7PLF32D6B1EC1VyV4IdAeEwA/h8Q7f
	 ioL88+Ya0rVzZ1XPPN2O1c5gEDowZifbMLQzUoFmIXJM1b/Xjq+xKcUZN9jWde3vWr
	 XW4QaLBZmnefg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9500EC3DA63
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172197695360.22540.12270091072284582953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b874495a69ef3b554475504f5ebb376ec9574ecbe1f828372fba00f1db16d771
Date: Fri, 26 Jul 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721976953

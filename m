Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 168F83AD502
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 09:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776417454; cv=none; b=eyd2Hz4dYrDpS7fjsPO0jd0ZzcZBSgs4zD+rORSrKfVDDJNDkVwT/X/eZI7vj/h6aVsSWpkcIvSXpdRvjPhUr58PVp8StOUR4BCcFHM74AFWd2MSFTU9s0qsgyxFvl+FYPwViysqfyl+t0hc6LCGXT1BzSc/bOlbuUAW9mLmmbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776417454; c=relaxed/simple;
	bh=2YIU6CWmtsUr9k+OkCCcMYOlJ+guhq5N76eJ7BMBHTk=;
	h=To:Subject:From:Message-Id:Date; b=sA/IgwPCIZp9JnKndbkkc/BqaFGbXadYcwcfXwxGfjKOVIqu+PPuTD5f0nVzGSex454RWLamw9Y3vX5MuGXM2yoqGqszp4eceElgu3IYtYDV8tRxL01yFjY3zn4GOqXK1Y/RtmPFaxrgwaHMACWaxpr54awDYI0PlxoJQ8jzU6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RGhZJKms; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RGhZJKms"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6EB2C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 09:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776417453;
	bh=2YIU6CWmtsUr9k+OkCCcMYOlJ+guhq5N76eJ7BMBHTk=;
	h=To:Subject:From:Date:From;
	b=RGhZJKmsS3H5WlK/rBPOf2+cUUi1VysjozGWm0QCiaFFjWePWzD5vChVsKcvSCdvj
	 53gdq65Y1wWYyOKTY32a+qNKTu2dwcJYCBgm2NHWZMH6ZBZQORNY4U54r3StZQGAyj
	 p7rXJSbI3q4Gfuq+vnZc4OUfVdChyeyuSN7zVhV5SxuSWi1VHNSNtKKWp02E8AWM1c
	 QkiMzkxE+T+h/DyB401Ply6n0Z+e7RzWZCgVX1HHXS/UtSbitJQQTYBgU69CZ39NaL
	 hTd9Pcg1+R1RE7htPYrsnN3c8gGvDcL9vzR5aYJXloWG/YIWx9TCymma2JE/c1RIz1
	 2GhQoHyi4aAKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92FCF43683
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 09:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177641745368.27280.1842341603480499745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9681230dc9a4f3901bce87edf8205616b3192d82bffd5a03645970941b1837c1
Date: Fri, 17 Apr 2026 09:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776417453

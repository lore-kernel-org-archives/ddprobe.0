Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88C5FDDBC
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736133954; cv=none; b=R4dWDANiXryzc1Yowq+BxcKOeGswRfC9kVHpYNJ5bf0ZBYobA029qSZRoQEzG529cayV2rozoeNK5uyRO1C9DeJMzFqcCR/GX5Z9z2dXabfhJTkwFGewLc22vHZONErAoa7zOktVxeBlxQgKO1iY6ToMP+lZewa5heD3hGdPEcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736133954; c=relaxed/simple;
	bh=h1HNA6j+mmgr2aAQiZ+pxq3nzLSTUD8O/b6nydAyHWw=;
	h=To:Subject:From:Message-Id:Date; b=sPtmq92jDdKy+SVgVdbwrUUwltZKfakyleiR1iLRmkEt+U5Q7AxhYtp0piI4feBuXLGuOro1CMlhxF/JDSzTsGkEen6AZN9zHB1jb8rw7cjv66IR+1sRXUqX/dTJ6bEl4T9kH8FjhCYtxLXYmG6iqMnzLbzMN3tWCTSWKpXuL1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cJfX1rgh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cJfX1rgh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2C11C4CED0
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736133953;
	bh=h1HNA6j+mmgr2aAQiZ+pxq3nzLSTUD8O/b6nydAyHWw=;
	h=To:Subject:From:Date:From;
	b=cJfX1rghe0QrJlbxIyxsuVoWUqLduAvNMr7h+TmD0jEJS9GR4RRZzFeqUCDyBcXK4
	 ta26tGcgTp8Wv9w8FtlZReFwpOyhi8H18go4L9HuiDGuXfYO2+Lj3yOVa8mguNo3UD
	 VbpqGQ/KLdDrKsAPMLGETqohbTne2wX/NHoOFT8icj6hockcAcnY0hpSIN38xSdg6Q
	 1yeTVeYn5ZZ5uGShYL8e1Rl9rrx8kOH0bp7eg9s8xUNwWL/N5Av45TnMcyL3Ttzs3K
	 3u1GnXXHD439+STpsUnuq0OymcUSCspmEMossOuN0A00pjvK9CqJT0/874b2oEVk6g
	 mwjYVXo7vcGAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CBF6E77197
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173613395361.27049.9170543495920404677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff0dfdcf494d6175185098184594bdf9359fb7d047e4459836719466975d148d
Date: Mon, 06 Jan 2025 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736133953

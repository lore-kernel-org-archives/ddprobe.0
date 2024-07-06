Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FD0A847A
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 05:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720242923; cv=none; b=VCsW1ChvOAnp17B+RxKUHsQAS6F2H1HF/rz9K7cGb0hKNunjpZCdBdRFbfH/Sm2WItBaja7PTFubovGo8eFBIvhsjJw50OBgTvGGoiMo2xG4TbJON+n0kO8Nn3GTH3XzqNOrkvVa18Gzlrdpyqh6q8THPOzVm068EmKvzygbJ9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720242923; c=relaxed/simple;
	bh=q9sYCdEJoXJkJIGhuCaESOKaus4DErcE3AxNGnBPRNc=;
	h=To:Subject:From:Message-Id:Date; b=DZavhfeNMlTIvq9tJzsPMEOmm93jbSsqaJUID9QtZEq1nhBHiP+m3xaniupzNvgMK3BW5JkLzeuJlwiMSCgX7ynYIP9SPcoIZxsQ0z1oF5OFgziSmgSeysXlJX/O5U7Z5Pkb+xTliawkOivgGABEY6CuVaeOg+tKQd7o0EvqqHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=myV2V2ku; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="myV2V2ku"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBB68C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 05:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720242922;
	bh=q9sYCdEJoXJkJIGhuCaESOKaus4DErcE3AxNGnBPRNc=;
	h=To:Subject:From:Date:From;
	b=myV2V2kucnastSXRLhnBxqkjf1qLR5YAt9B5vD+Kt8kEetqZBU10R7SC0zDnY08mu
	 Us27ZWFoNkez1Gg7YTd1rh0+uXOChkCQy+CIucfO0oYQAaXtDXLOCW3yI61D4GeFO6
	 lkMg6V21P3YA/hcA38MzGxyilAACUIc/Bcr/Bvw+0aycO17MvALx/8bWi9YLkjvo7m
	 qx6FDlAk2/rksl8DQgOIgL7/fsqGSLvEMrRwvJRcWmC+TVO9CLCpJa4i76nGUfsei0
	 kl1HGzPUdpoe54NTF4jmvOUznQI7lMcfVDgHKbriD+Ai8sPO0KfVlXaAQ09Z8oa76F
	 nr+80/SkOmKCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5E7DC3814E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 05:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172024292277.24948.14564373938007525713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d550f298f32fce6400d81ab3f134e73e8fac487d879576d309baebc23fbd5e9d
Date: Sat, 06 Jul 2024 05:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720242922

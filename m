Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4938C4688
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 01:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717377923; cv=none; b=oL5sRvoBnDzmReVHszQnh8+MhlrS1DBWSKVjQJWkCU6VpW+YoDeNWaD8btk25dYHCVqboR0NIGDV2ruZ9xxm/EB5LhUSC8XvD8SsxX/ISH826mQzz6dT5Up7BGnHMSnMpJqEbKvUgZF4eIeSSTBo7SotsFOVHlZv8Btq+Bj6rDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717377923; c=relaxed/simple;
	bh=tDkziSm085B40s9V7pzYp7Wpb55vKv1kbYw9JRDCWSE=;
	h=To:Subject:From:Message-Id:Date; b=Faxd2XhmNiV+mb/3Ea6GqA7gT/e8Vb4YvUmCHQ7QR7GUESE3R7In6tr07o7WMPzfr+kuqxY61Y87b8PZL2/tZ2Npf3NBJfqyML0lWG1293yllfCM/WmUaVQ1uhUW1ZdBqp2u+K1hQjl4lpl+bFWg4IwJTCRrr2/iDu9FxSkqJx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ug40ISl3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ug40ISl3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6875C2BBFC
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 01:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717377922;
	bh=tDkziSm085B40s9V7pzYp7Wpb55vKv1kbYw9JRDCWSE=;
	h=To:Subject:From:Date:From;
	b=ug40ISl3nVMWXsPyHda4PZjJV+Jk09PsaP69z/mqtIP5J8xcRNbSaK2LCOn8dqixj
	 //qQpEqIZhOiUHcJVJKiyGIU0Vu/YlNzxUILpcbhNheLb6oxdwnE9i3Y7OFlrV2+yc
	 z4sOXzKoRzke9rQxTY9v+uBdVRzt917smtA7icG3E6aA80imTcAXj6H8TZqjy9fdMa
	 HhhZH7OHGmOy7GxL+YJTLmMWmwud5McWWFCazlNjONUKyO14m4wnzGD1mNRP0/9lEG
	 F8HNKr6yNtD1J0p+T4QLXjwPkyQFh+o7381QtKcDBdqBGMHO+AMWXnYGrlcqa7MwN0
	 2Q8PFclDL7YsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1184C25B74
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 01:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171737792276.27898.16008370148516617649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f08df44a35801dedb15f9bfff60ca4209d2527601a1109ff85c1af9b6a584ff3
Date: Mon, 03 Jun 2024 01:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717377922

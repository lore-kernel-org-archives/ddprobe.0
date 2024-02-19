Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECA5C79DB
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 04:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708316297; cv=none; b=KJOdZWn4KGSrJt6dnkXc93atKhcDM/PUaEcxXIidEe4x/Z2EPALNigoEdtZwpNCZJULQgO3ijI6/WqRybgJmKNrOX0kchIqouq1RnSJchwtuDzbSDES3WgeHfIbgIltBJJwbUBtkcatNBxO4DuB7J5rRTGEn2BQPGlT3FW3ehPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708316297; c=relaxed/simple;
	bh=aw26mLRQ1qWFRNub0KOOd2mJKPbVyItQrGAFoXxGlfw=;
	h=To:Subject:From:Message-Id:Date; b=Z9fe36a5YAdcxZQeYC0gar3MSw1mHr9DkYcdaMwzQ+u7H/9eTJUzx/k7nI3ukXlVfTXNpTq3KZVpueBpAU967SHoktPJTwguE76fVIQzISJNd4Y2nmiOXNeG6iFgQlHtRmAeRtUd11oJtpX727OwA9UIRpiypB+Ap4oyaxamuGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d2kQMxKF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d2kQMxKF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CF77C433F1
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 04:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708316296;
	bh=aw26mLRQ1qWFRNub0KOOd2mJKPbVyItQrGAFoXxGlfw=;
	h=To:Subject:From:Date:From;
	b=d2kQMxKF75BuqZF9Q1Mma9Zk8dNZMUnj244BJnvyOhXgSOgo+SpJ04xKFmmwy/GtO
	 fzgT3b6qahJLQdtbGymMJHoql/dxDi/ly2htm1ueCQlydZzzNlk4nnrBsVPcD6KTMj
	 SpSCPv0rhfWDpYfTcdt46AA+EuJBddQ9k9Dow2vYvQZ46lPloq7vzjxxs8uIhkC0SZ
	 2tNU4PorbqEMY8LdDW3pcZWA0tfvY0a702YKm+TSjeGZjojX8a3UDE6uQ90KaNxAJW
	 RYIJdhfblfq5InwfsDGu3KlrkZ0dqu1uJb64ICS4lUNae5LCptRYC0b9GVf2vb69PR
	 SYIs3/6qUjXfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63977C48260
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 04:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170831629636.3465.14510183684096398835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b337d6546c7c297a9a6b31db327a92eb2b069c70b4988561a883631e7197af57
Date: Mon, 19 Feb 2024 04:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708316296

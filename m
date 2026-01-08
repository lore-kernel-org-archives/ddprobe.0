Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C85C2EC561
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 23:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767914034; cv=none; b=e8Nab+Oodc3VtOFTyFL2u7d4yUshzvH2K4jyGeqZ8PF3zPP7aNqLg8bKMLFiKzo2BAOH8OaI2ViPH9S+QLdM91ERyt11MgFCP+l/ZPFP8DKSHXplkNlFAV5E1Mkm2OWZZAL4lyhE4uENr3IvxQqK9oSVVs+x2lS4K7+YZQHx2kY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767914034; c=relaxed/simple;
	bh=K5GbILQoFHQB2Lk+0S1Yl39oZEw+DWY2o4hMd3W9uR8=;
	h=To:Subject:From:Message-Id:Date; b=d8vGUXz18JegupplCWPfV+FVD7I/CqVtr1aYMKEo9JLPLayDSzi7IByRmKG94Ss7yC2mkVXmXYQ9uiL2WsrASkf/pWiamqNu01nu4XNUpZzlvGzWVAnAPRVsuRSMlxEGzC831no0tIhKMIQPyn/u+RHvVAnUgkfsYnsZLe8eX8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l9suzz13; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l9suzz13"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F586C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767914033;
	bh=K5GbILQoFHQB2Lk+0S1Yl39oZEw+DWY2o4hMd3W9uR8=;
	h=To:Subject:From:Date:From;
	b=l9suzz13E6+zwE7fmX83/Gdnqt0+uuo6llj2h+9swXM5xZkHsgx6p7jQYy9ydtVxJ
	 Zv7ZIGYS7K0I8rnpweKH/m/IRL+iNNj8rTxb8W+ayyudFB1hXLOrP+1skWh48H6X2U
	 NxUu36Nf907aHvJe0T2qzirrSnV9QKpMpFAwqsyPVPyQoz2iZN0xPQLAnX7Hm/h82U
	 UW4V5uIruW9Ssd/s+4NfEeIzKMkYOoD7W0hPuOeiOoDlFe5RHeoP5PJjKDKHY9n9cJ
	 wCP7xGJ0wf5VYczKw3aGKg51Dq6sP216cVt/kNUATXp91cbgiJ1SA8lTuKxFsK+aeh
	 xrTEdhSTJ7LnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E915D232C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 23:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176791403357.6916.13566983701127956694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3133c9e56377a3feb5c1dd00a2f87816b086e683b0ea3762eb1c608197ba4b0a
Date: Thu, 08 Jan 2026 23:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767914033

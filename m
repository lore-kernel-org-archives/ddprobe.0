Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 845C12FD660
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 20:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767384234; cv=none; b=YbgzRnGpRMs+uj8MBTC7kYH0xczsQmN291i3tsXuiUDCPtRZ6EbrXf8G/Pf2Q5h7cpmYvB/qBo5W6yI0lall7nCv+M8CGVGg7N3TQlhKb0k8j+DEes9GKF9dpUstalamRwAMrW3DcUJT8KsUfg40XzZMwyfVDyB4ItSb3ARsOho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767384234; c=relaxed/simple;
	bh=B2XSx6+qq/CWLV0TDpwVhT8jUMBIKPWNso3x3iJQ89Y=;
	h=To:Subject:From:Message-Id:Date; b=GZGhi4W5ldvQyvfJjbXKiez85ETP6FP6YluXc27mwYURYkCP90WGNEA7jZ4922pqvw5GRReLMUDNUkBrCsa9vMSJKXElLz9c7+FSTzVWc7JJjUkLuqjPOQi0bPcn24XTtlqKcw2IYZB2BR1oi/sXYo0prYTuD27oyQmXBpqYLtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W3oIZWJp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W3oIZWJp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF95C116C6
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767384233;
	bh=B2XSx6+qq/CWLV0TDpwVhT8jUMBIKPWNso3x3iJQ89Y=;
	h=To:Subject:From:Date:From;
	b=W3oIZWJpYFZqi9o+BsQLtiMQ2K3Mm15shKUXjo2iRtVpSlAf4wygtSjLS60thNxaR
	 cWALNcjxkVzDQKBEl/0YA2XTqIBGudJnS59CG4ZuLqLxWaVvKSmCgGa1vwfMqq7F67
	 jJCcoXb9PkUmr013zZkNaMeXM3usuy4srqgjJWjhl9EzQZXG+IBi9QMJ97v44+nTBQ
	 sYu9pv1r6J7ZbKQIDEBaeaQrgfh4PF42JwjLDhGBYSib+xGNoIgnEKKBEJnCP4wwyc
	 8CAiIaAZ5slIA30FfsIf+lyo9QzyhWNrSSoBx9gsellUapYd2gHq9SOiGlgo1BeM4a
	 RdS2nEysnAgxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAFFFA3758
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 20:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176738423358.303.3424867208873753429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5a66a82b6bee35dc2d47e0b5619cab897c48a6b6da3117898bccf860be47314
Date: Fri, 02 Jan 2026 20:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767384233

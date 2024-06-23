Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B6742F4A
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 02:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719109943; cv=none; b=r9nj1HW7gabPrAFSbLeaTXr7jPa8v1QMeGa1OZco9PVpjr7FlPkDv6vX2VMUIfHfSqql9H/LaUSl2BYp+Tg/7c8M2CCISuMMb8aWM3pNMKm3oKxRRqD3CGXohyeU12Wh8+azvC4nTvG+RYjH2HrSZPD154M3SkXLBv5LJct/7Ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719109943; c=relaxed/simple;
	bh=3BPan/5t/W/kqpS098pz57ffy1O5DFgeYHjE0YJnHWA=;
	h=To:Subject:From:Message-Id:Date; b=G8yxCCdfmJ8UHVhvJLypJYSUX/r7KyzVTSQSDTExg0QtwlqsURiX+YGZ6K+EKfQBz6X4w1vyJkGBo5+L0lfAzrc53gcTg5Yuc5S5b8/jo2pfzGu7vM69nH3XnXaRMljMdTjapALh1WkPdt450/srSjpQ6Zrr44qWIsrsJJ7V7HQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BAp4W43+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BAp4W43+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFD17C3277B
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 02:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719109942;
	bh=3BPan/5t/W/kqpS098pz57ffy1O5DFgeYHjE0YJnHWA=;
	h=To:Subject:From:Date:From;
	b=BAp4W43+dhutK8vPC4Y1Z3uj+YhCusR8lVFDOT1PKY3LTv28DcGuGbQ6yB11vJxHN
	 2uCIZnQ9h9F2jamYqDj6zQ3MQnHq84X4vulEDXdnXdVHTeJUKB95UnANMnfFjN+h16
	 qmES4tliYtfXSmqCHr0JSHVehV2ahtfESYtgL74Oq1RxrnjkZ4/pdPzvDbJ3IS7E8m
	 L6kaMORlLHimpxC9V+Uj7ZTdvHquukqDorkVtKFUkV3/SBmggTzsH822mX1OP7IXwB
	 dKeQyLlFvyXrBkYqeVJ0dheFkJG833O4IlSoLADgO9o3bEhgA3Ugc0Zw5pX0X8k4aQ
	 AVhnkcfgUIwQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB9B8C2BD09
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 02:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171910994279.16295.7709449238073488983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b01eb7e28727c38cbc247bf56dccf8912d88282e80733a79285c8bbc0f1b130
Date: Sun, 23 Jun 2024 02:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719109942

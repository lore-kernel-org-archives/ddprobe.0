Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F06179FE
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736298354; cv=none; b=egGSpJ8CbYvYF45oKZGVjyU3mz4Di7LXgytsJEicbDM4OwzRXbuM7aOxSEBLJIxPNC6zzAdOv71cf926O1fYKHgonh71W5I+KXosDQ7dZn5J+soLxOBiU9CgE0KmvCnyYmyeC5PP+2yrhCnPI2mq8qhRP5oiGXrfp5X4nZd+B/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736298354; c=relaxed/simple;
	bh=LVxBx1am/phRlXpY1Iaoo0gWA5dbF6pQSci38UD5caM=;
	h=To:Subject:From:Message-Id:Date; b=uKMJlFQ7mCse9CVBTBBPKZCJ3ljgiW3Kvi2XFBvA/1M3Ob8BNoqgpE24nTY99sqpMzyngi5nXBx9M9z1npZ/a1i5uTq59A4OXxGEhYNAp0Jy8eV9gfbfj/XqAlwG5ug7xhcKgXMPK5U3uI9wOX2UH3uBLn6A2201gQL7HFophcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZLY5ibXi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZLY5ibXi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C52C4CED6
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736298353;
	bh=LVxBx1am/phRlXpY1Iaoo0gWA5dbF6pQSci38UD5caM=;
	h=To:Subject:From:Date:From;
	b=ZLY5ibXiLNQVn4RmvYMwLE27ygGd/DuG/Hjqdry8Wm+tnJUqzvDDm3CaT3mpp6Esx
	 NrfbsYqKcjsPViyU5MFK1ZYko5COLIwnc0AuEAz5P6V7XMAw9pVuEjotnV5WQZweQI
	 adBcaupV3qXvvS3hATJ91AjdF8zugvkDdJFqn/Rxu2VtxykALa2o5Fpkhl8eUWPvGo
	 w/sfgSNH5UbzZn5Yv3HkhVdzl/B7mv66fLO8KDEUleQ8iitLlnr0IiacnUQmArLEn9
	 sWdvlA91mCn7GGSLGXq8dECrTYkmY5q8o1SPh5D5h4Q40M9EGLo9pvhTJ1AMrP0X+T
	 4MLbjKHsEgkMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F28E77197
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173629835358.9508.10933567884682600366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23beb5c5ec2a24c39ac4bba4d4626cf7b5bd6f8dafdecdcf0ed9b5a008b681b1
Date: Wed, 08 Jan 2025 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736298353

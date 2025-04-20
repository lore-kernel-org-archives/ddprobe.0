Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40154944F
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745182194; cv=none; b=LJtJl1Zik3UGP3SWQnZj5rF5Zd1Fz5y3pGcYjtGSs2uKX30GwUGkLjbowVtABt+30hsZSls03umXAubjeN3XJn0hD6iKyaggv5maQbhxhmAeswy2lBTPZytJcwOZd/NW9Kq8E5VoLe8tRCF9RjI9uO/Ps7G2OirK58QSMqtTc+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745182194; c=relaxed/simple;
	bh=JOfU5oGD1y+GlirfujMO+YKsyPvQ8ZOPK6i3rrtnB/4=;
	h=To:Subject:From:Message-Id:Date; b=JvQH3PRZQuoz0zcvrnyhXJjmPOzaUqUf7d58LqtQ1lzV2ODUd9/DFY8nUft6fT62C1gmTvAi6gBirc+ydwu5FM0lpdPvk5SrD6vSndSXghPllW9JQre9wqVa5xcfErrSvGRO+8R56qgO7ljLPpEyENNqlyBZnB4M4sx4ybO5Z9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=igHNdzw8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="igHNdzw8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB245C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745182193;
	bh=JOfU5oGD1y+GlirfujMO+YKsyPvQ8ZOPK6i3rrtnB/4=;
	h=To:Subject:From:Date:From;
	b=igHNdzw8saJ2Sa2FbEECqq4+LWxCSJsnJKhlSySnuVSM2vG0MSe7Kna3hMJmwT3le
	 SOt7O+5QRAH2B7MPLEL3WaeQH6/Qmh5duMQmG8OgGyGRVwvBZ4moDbFYXdQipN52B0
	 lXLZGpqzohs9XbjolO3uUyeF+dpUojtHGpESdm8R4XW1KSsX43FAAaiE93elk3ZqQ9
	 8QZ5KM5WWJN2hEfUoTKM4HN7aXf/10vSFHbJGff/gmE+J4xXibh7lrDzhDHePjXJ67
	 lrONSHmudK04389wUeqVMESX5vjpx8skxML3mU2P+OqO+NDZKOp22TNYj601kg+Ayv
	 C9GcdQLPArUEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B9ECC369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174518219360.9740.7529175816393211777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c085955a09397116c80c22cc2ba6d17a04742f585e93e7c96eb87dffa127b982
Date: Sun, 20 Apr 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745182193

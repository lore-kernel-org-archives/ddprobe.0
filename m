Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD63176FB8
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726662354; cv=none; b=DwjOByNUzRveWwuo/O+qyVMYOtzz0mIOCb0eNPiJaLPCY0TQFT0CMIIhOpZJqMHn9QgolFZgvowQIzXCZpy/yP4S84rPb98eC+qB3Kyq3VIYHfMa0v1qC2Dem02dJg3KyvM4/DI5bJVrG5vvMVTKDruYR+Ad0HilE7YR6y/DPY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726662354; c=relaxed/simple;
	bh=Mjh3FNNivSR3euDP4cpcDpYtx85cejGwXZ1BNs9sg5U=;
	h=To:Subject:From:Message-Id:Date; b=U7yKsX7OtZIp6J9MS4z/GkmiX4Z6Ql/gV3qnk9PxyD3Nj7kjXpl4KKXZM+zybn5LhD7XzTgzm7dS1tVcJ6h7qw3to7GGZHBanwHhYtlYkbO0qOc8FczYv/VcCoINuE36AMJcu+GMeqIP/nx9oUdJVnnU0Qjp5U9BZc8IIHRJ8Rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GlDy15nD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GlDy15nD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0749C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726662353;
	bh=Mjh3FNNivSR3euDP4cpcDpYtx85cejGwXZ1BNs9sg5U=;
	h=To:Subject:From:Date:From;
	b=GlDy15nDtKs2a9NZ72sOCC6QGj0xAsuTj3/U7ad6jMdnYJcI0QBK5cxa6S9E+U0H6
	 vtANOhw9LkeSzK/AtIExh+b6rVuPM+UGAvuqd8gBl50N61hJR2wYs60tltZ3Bl04AI
	 ncqM8qrXyMVmw4gInR2PLa4ln3vo1hKsfMVvk7wlYsX0tDOHla0UCZuw4Ji/W8sQxf
	 GmONeNCX1mD/X3azwBTShCbexjSdkyw6qFT+n+OtOr/SQVqp43IXb0f8cmtcgHrCxF
	 xGyrZOrA4o0+sknhq6zQjaUXC3RGoyMsrzTZfp1klGSZXAi9UgyfTOLXwCeKmvoaul
	 K9C5VI3a7vnQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CDD8CCD1A0
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172666235360.15253.17083840387749255881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70ec3db18ae27fe03d1b561c0ae9c8b2f3c65204b5ea0d5446f59f66622ef4bd
Date: Wed, 18 Sep 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726662353

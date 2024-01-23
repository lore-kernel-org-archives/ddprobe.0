Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0091020E4
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 04:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705982897; cv=none; b=dO8ejwbjEJM29KqISsg392vWKoj7jsGbUpiJrBzA2hJzTnGOZ2XIl3lM8FYb5eU+JpgKGfaA85LTNbfBA3QPAQ6F/sykkC4bxcJoOvSbUYnBUvTx5i0l1bjDSruGtogLSqRZQPU7qAuCfPvLIv/O0k/pLbDu0R5E3j7QewTcfrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705982897; c=relaxed/simple;
	bh=rhkd4OFOFJAy1RUGKixmV/0QR8NYCyibaOraAfeCYGM=;
	h=To:Subject:From:Message-Id:Date; b=aR0buCqX3tF0uBc/llCfaqXRKtytGm/A0aHb4dqr5on2iIy56PBmQiEEyoz8nuJ2Aw75oWQEjI2kzR4uLX+k5Wa35lQHv3TQ7e4n5oSPrid7WnUJNbKvjUXgegWhFPd9VkoFGisiCyuYARpEkDzUCt1ex5/OkpiqddEhcVXe1eY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WbyND6/W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WbyND6/W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75F73C433F1
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 04:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705982896;
	bh=rhkd4OFOFJAy1RUGKixmV/0QR8NYCyibaOraAfeCYGM=;
	h=To:Subject:From:Date:From;
	b=WbyND6/W6Z9DrYhlcvc1SU9R1doUUhPpny3ve9At+2SrGyvXcsCtZI2d0N1Ta0aUJ
	 65GEzZ3W9n+MFD5RasPaLro2DWyKwmo2M6DOctqHdxdCqJkQE0ZF9psd3oR6jp7sGf
	 5bfXiJQ9jTxU87NFs71cm+lFLpSbNUOxAuhoSqqAshh9on8YeE2YqggK/cG2JV0t1t
	 s0k82fJJu2OCvIVXcuf7RbYWSVWqoVFh1b1M4nl4wjyGkyn+FK40gojvmLBcA01flQ
	 4wgL3Hp5Fo4ujdgx3SFPZclIIuibj7FXdbB5naaguoHWwjtksu6yETglEhYTB4xRUb
	 /UIPAq9+q6hbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E167C47258
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 04:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170598289637.23623.11392561073612001641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 198d01e5e672644d9e3150434c786fe1231373fc78ef4c1758c51222449c3b7b
Date: Tue, 23 Jan 2024 04:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705982896

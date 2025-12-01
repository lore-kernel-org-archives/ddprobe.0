Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4A17E110
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 05:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764565374; cv=none; b=ZencXYP6sGlzOi00v6BFBPYEZ0GGWJRWowcWt4PxRwtHxEpF0eHDZ8AVPJIVGBSf4pZj3qlyZQY4OzxAH6GPET77UMmdOQ1VPYmzDH0SmIA6MiivUw4zerNxis4x1Ww1R+L1mMUpeRpmxKYgABy+1YidDJlaEYwjD5mwKD/9TOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764565374; c=relaxed/simple;
	bh=IcZ4Vs32voP7tgSxbkBvB7Wx21u8PGGibLtgEvueI8I=;
	h=To:Subject:From:Message-Id:Date; b=g30smBDcBmTZHFBG6if5jFKvE2lS1/NWY3gIRTFyiQB/uzwdkpBcYVVM0tEhSRo3DlZtFQprtbm43ZzbzUj2ie1WlDBAKs5U/e8c623W3FvLL7ayOlU0SLVSJ6PvyMl+j8yJdMGK1yKZ7HLrMRWfyBp309jFncikPAKSAernAVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k9KhZ1sx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k9KhZ1sx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FFFC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 05:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764565373;
	bh=IcZ4Vs32voP7tgSxbkBvB7Wx21u8PGGibLtgEvueI8I=;
	h=To:Subject:From:Date:From;
	b=k9KhZ1sxK26V6srDBNyw/xNFxIcmOI94p5VwVwJFkZ6JuL4jBQwAsQvxM5fNvWG66
	 R6xnQ2C0MhgOXS5zAAV2TCvxa6XzsxGkj/W5ZGDUiYG1txYziC3++9Y4s3Oo+ixxMW
	 IlRZhV23FvUQEyAxxOG7Wmb+1fbwMvOBkrIcC7d4y1FH1mUcgJvwykSVNW8zMTbTm+
	 NzsqyPp37aSSRPvBsQqomTMQV+peUAhgKWr4rurQ8mNfpmZGTdU4vHmz3KRx91oGKj
	 +i/f+AjSvzE4Pj9x/40IY1ZjGQTs5KKE7WQxXgDhq1o5V+SfqKycHOsAb002DKvX8M
	 i9qne6V906/ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DA7D116E2
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 05:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176456537358.12237.12835199526133984541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b31a254d9dbfca817324045d5cbeaffd2c61e013c7d0348c3d53ffd1af0f1d4
Date: Mon, 01 Dec 2025 05:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764565373

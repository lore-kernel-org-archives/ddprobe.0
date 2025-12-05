Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B49722FFF94
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 09:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764925374; cv=none; b=gDncEZ/F+ezgCWpQhRN+ZjLbnfe+WN2DgRYiCg8+CfU0S9cOL1jWIl72hM6Jqdk4BWtONjnPuSuL3wSEqyI/xoeerW5aefbn5unNa46+d6Ik2VrqvXB4O/zo1P7zTg3RUM8JhcC6hrQLU2/eJBnSv/ZCa1SbY76T+j0opsUq/yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764925374; c=relaxed/simple;
	bh=S9eMDEoyzGebfS9jMOQE8wEttWQ6PFcVSGpjC5GYW14=;
	h=To:Subject:From:Message-Id:Date; b=k6ZPOp2bQJD7e6Ww1aKP2eZyC84jm2y+rHgKCubyYJFk4Dp8JlhI2VUov/d/DYRpeY0n0jBERpDxS5edGiMXxJbJmRXZv9i1Q1eOjepHcoUvZrO5sBNVdXGgEkEq7UuRBZ6eLAU3GsiQ2YsoFDSX2tiajbHcE2q5IzviAMhDqzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gQmp+sat; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gQmp+sat"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B123AC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 09:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764925373;
	bh=S9eMDEoyzGebfS9jMOQE8wEttWQ6PFcVSGpjC5GYW14=;
	h=To:Subject:From:Date:From;
	b=gQmp+satTgLxn7K8Xcn9I+LQMtz51xDbZBt117GvxWCQne0Jg1qzZ6PzJ7CLhiHrZ
	 lP3NMLOsVMt2mRcXXcbubjNL9bwQrr8nnXYEIavueeA+JCm1AIGbRalBrBICxZVkfa
	 f55sJbDAx5w0fl87MRt14hkU8Zn8AqHzS88GAcSxxna0qRvxUMJW0bqTofrr514qnY
	 bgERuCjp+oIdS+8DfL6MrFNUOxv9LZl1d9LfMmccZwcwiac/AGXK2HDRvPLND3o8wU
	 A34zHAJaPJQqTZV80JkaqpdTZhBWdqwELALCBQkA7aQYmOfYETVN5Ml7lMVmw9A5Nv
	 GX1DyC7ygF/kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF9BD2CE0D
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 09:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176492537359.20331.11816812463482574961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26b2f4a00b2cfd9b12e4da4528913a9492cfcd1fc89580b73e580aa46e75c95e
Date: Fri, 05 Dec 2025 09:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764925373

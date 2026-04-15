Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2162C13DDA4
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 19:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776282454; cv=none; b=ufLlwqgS89BMdhV4pwvTNHNqvSTMEY2AHHNnKDBoAMDOe9GHoa0byAE1rNBMdyLidVNPUbpMrQh1oKwfbcvf1hblXJZIKJR9NjeiyWaP80VwW4/f/DK5RJ8cn6WYwx/okaIlRWPBxe+5vHjNhJ9eccCHRW3nq0A7YqS9+dyMWJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776282454; c=relaxed/simple;
	bh=jNDW6WRU1XxXUEG/PDoBlSENHAkWecFzkcez7ea1Mp4=;
	h=To:Subject:From:Message-Id:Date; b=ThgM2MD6nYYLxSdUmdkZwnx3v40RTgrUiysMPGkFC/zZvTD2sClAS6dM26DwtAV4/a8ZgtdgdGkVtPs/R06Z8x+YOrpye7G2DNzEdhGXcWCCF+IGQ4KTze4Ju1pdSxFhbfU8N1dZ68H4S+8fd/QP+i7Bqh8k+uLTZ93UmWjC38Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sGdvXhbb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sGdvXhbb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8991C2BCB5
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 19:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776282453;
	bh=jNDW6WRU1XxXUEG/PDoBlSENHAkWecFzkcez7ea1Mp4=;
	h=To:Subject:From:Date:From;
	b=sGdvXhbbBFuOKmkUFKbkJSQ8lAockcZ43DU99VtK69AkIeXB0bP4wL3fIY/YQLUgH
	 aqmZZInOkl7yeRkfebPRiFeasB7B5upI2+cVzpcQoNqFpKGUxsQSGPXXciQUaF0ntv
	 tDuIz+VPdvvTofn+wfZAxhgVYE7WlVfK+z9DW/YOX41/bL4RA1V4s8IpLqGUxptULK
	 kRhdApYUwqdoKnqtSpvJA8e8rt1ytTIxxrPA4Jc5exredTDVYQXXBzfwPzvzCuguPy
	 WbRyTHyddwHUXIWBsLt8Pd0nLP8VeONROJeQuvS4WM3MQxjtzWeZ5fGbqjZGpYKGQ4
	 D/jU7ShYpHiJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FB9F428CD
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 19:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177628245368.17368.2833400228923466377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d86255d91e3197ebe7aa9ad0abc73445f2ae8ec41b8fcd8d9e6ae58ae18f11f6
Date: Wed, 15 Apr 2026 19:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776282453

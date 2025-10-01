Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E36901F03C9
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759361994; cv=none; b=mRV92iLWIQOxFWbbex39xgdrOOnL7mZoAXl77V1oXwEbbqQhetoeTtt3/yGvOAttkwUBonOqZIBYjtYjekp/kthEWTS0Il0JO3LQ4cKAVf1AtacJtMfrhtwfxvDTpEByt7a2rvtaAV6PJdjRPBukZRqYCy/3rLddQcibtFQOExg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759361994; c=relaxed/simple;
	bh=oIGVRhFKKZXOiIMgJOVLE9965bqiQtRGvppQfP0GcZA=;
	h=To:Subject:From:Message-Id:Date; b=dndKGbwAuiXUwHCETSLljNQLbyXKFH1LGKNWsCmVDd0dwlTxZugx9TNau1CLawxl9z9tWxPnKYwoHLZhvDbW6xMHn4UombHrSKbvR4gFG4GvdfRl/m4Aid9Ig7jTXObFomFXuB1+qkYkVdeQ7Q0eAvjjaHfbmwtogQcAmShyWno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o/+rftF0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o/+rftF0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEDE9C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759361993;
	bh=oIGVRhFKKZXOiIMgJOVLE9965bqiQtRGvppQfP0GcZA=;
	h=To:Subject:From:Date:From;
	b=o/+rftF0KMcPOnNHnqMGgZmilIPsnWGLEFucJuHx3HZrfnF4YSB31demUYvJbzHev
	 D0/NoeGwvMSJDpRt/FC9SS5G6z31Xj/dRWJ2Hio+WfsILMTxPAs3DzHIm0hpbQj4AX
	 mYPzGBk0laU4qMKoYlk89fjdMcyHdEe5qme0rIlLLD8jjYAWZIzOPP5s8K93hKig+y
	 IyFNQhI9IDIv7iCO0dOzXEbC+z7gFu88QZtJW8bchk52hsmMJVUZSJGCmm8EkYuIbi
	 AJ70cjTGeUABV1jENoYmQkSGkd90jVi+ykWRwTCAHjZ/OFs/XR9IF9KC0GBzy7FUov
	 9Cu1NWzHmZYRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975E4CCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175936199358.19740.3477344688329076935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f424b601e5b16e132ea04caac35709bff88ebd87133abdb3f852f518c0a4f88b
Date: Wed, 01 Oct 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759361993

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC3719D8B8
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727515554; cv=none; b=UEn8vH2ZsSP4UhP+ICtZkjuZ4mkMlCfHSVq/mGpayxwRLmp7iQJp1GCrV1awQf6DW43HrHyLEiscSAodY7DRi5WljasMrGzcl6M2ecqzxjK8jW1OzLSTHtz1DBhldFJO+KNyqdrhx07MD9x+4+/rmQnNtnAmf6cFUle/5NE5WVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727515554; c=relaxed/simple;
	bh=j0wskJ4osTU4fKiSF64Bo2xmUJaGJbVHVlgjdx2t8BU=;
	h=To:Subject:From:Message-Id:Date; b=TxZl6iCqFAA1jDgkA99X66Oy/ecBZ6HQSgzEs/Z19QSdW8YUcdMUXtHtQM+mN0SGvTHblyLrjiVdSdQqJSjP5jsccH4VS1jXO0hKZgP/qWvVSAP7BlYSAPBQwsZ7iHaG+bXEgZiBkiyyexGskz3LKA+7ompABqptK0el76tcUzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pD2GsJhV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pD2GsJhV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55F5C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727515553;
	bh=j0wskJ4osTU4fKiSF64Bo2xmUJaGJbVHVlgjdx2t8BU=;
	h=To:Subject:From:Date:From;
	b=pD2GsJhVKhYWTypE73qyX2LA84xh6Tr09J1mGU3K335gNOQyaJA+NRh1S7NVVJu0h
	 TLpWIPtjLXJ27QE5sbW6VLOjW3V1OpJ62w0FICjzhyuo7xAxlWtK2UQFh8j6ShAeBh
	 C/Wit5SMUrCMCiaCkkU74IPEXCb01ah3fMP+hpEQdtwfinhdCAlIUi7taUiPgS8Kr1
	 gf5N352pLNR0BvQEb0bqgyKMPyDXSKmELGNJCTRmpGBVhX9wSS7QFf9Nl0gbola1by
	 rX+b3FCVb1IiWAWIcUasTDdmJAFLD/1RnYYO711Aq687ptFX5PTLGUq9T7DS3/2zf1
	 PPX9QAYLkZYmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93282CF6495
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172751555359.11771.96791973965760789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc65b8407908dbc65ba9b8f971c6ea6a03c17731383fff1f7dda3434e1acc3eb
Date: Sat, 28 Sep 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727515553

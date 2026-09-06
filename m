Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47D4245038
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788675034; cv=none; b=Bu2UvWfsFj7tANKw2duoRwvrBHteTbYW9ecpmKWacbpLIw0hVkqLjCI01jPx5+OnS5K2s+X5N2e8mqOJHoXNZ/6jhL3jRoVkgwOF9E9UMRn26Kh4GVlRTH3PwEFQOCLhYqIH5lSAGDGMd4ljQ+SeDjFTX+VxodBBxw1NbeCE14c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788675034; c=relaxed/simple;
	bh=a+7aO8z1g8q/224oCSquLdLYqX+ZMx5FStoVU9KoyC8=;
	h=To:Subject:From:Message-Id:Date; b=knRwWvv2xEo5jHhiQslyYf7f4a4FJAq7+TqGmKTwsB3ndBxyyPP/zcbW3UwWmEje6trnCdQ2dPq27/1Pivkv0i719mmwZV6Qv6TSJ5BhHpuyMBsf/cua2AyOM0MLNtidb0S2Am9nwj2FXH3Zg6qP4KPelVs26jsZgpSr4kI99kE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ow02UDFt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ow02UDFt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD4EC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788675033;
	bh=a+7aO8z1g8q/224oCSquLdLYqX+ZMx5FStoVU9KoyC8=;
	h=To:Subject:From:Date:From;
	b=ow02UDFtiazuCYF01soBvTO9ig1f3CrC+9qcz+BS1DaP+lMIU1W6X0jIvj/B/YbLC
	 6szjNf5Wo/VV/10ssdKAClhulwDlK3GsKwC6cV/DZQqtCDtHjsvVe6HrNob/2kquS5
	 cVHj8w1cuHcVj6pEK7LWvZToP7nB/GrN5p7IBWUcYwVmkfLlbbZ//AdHwuElKPf2uR
	 p8eIBzXFZjwLlW5Cf9pJ+Pphtu8xqBRR7k9F0qnjscuowda+50LqwWXALjWPnw23iZ
	 Z8+gs8xXd8h7l7LkjqBswSlV9bOCAAtFREJ0KKSjEiAAfND04jNxh2o27lF2/Q+JNB
	 VnLwTq0dAqc/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA8EC79F99
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178867503369.26654.6821528479870208491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 705d696eaf3c6e9068df2ecd40dd411399746b0b2a4cdb543f045aa47870cd60
Date: Sun, 06 Sep 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788675033

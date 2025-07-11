Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F0C469D
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752212994; cv=none; b=FvJYqjtSeJTlL+K/MF4dlAvke2BZk+Niqev25kSXYfC0jbxH4DaUuVV7CDlLQxdcEA9PuWh75pKwNFMFmWYgGow0FSldZtLfvMZvoWYPBHNAOyaUGm+3M5rpxxMIZIuLYyphksNpGYhk2njuwZObQ8A7X+G+WB2OZTjDsBlP/6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752212994; c=relaxed/simple;
	bh=UxVG56YeeVoBBKY91pckwli2RBZUlQAcbFB8Qx1wTL8=;
	h=To:Subject:From:Message-Id:Date; b=QKy7nzEOiH9+TMz53hn7Q1iWRFwQNRnBp+in3isgFaasEiiR8qsU1oBRvOe7jHMUcGMTEJb9UPawpIRM+ixgyXQtAGA+/7B8vJz2Hxcp4enPGap8vROx/6Xzf9Rn+RTcQEaAvkzZKiRfpHk6UPCMAyhkK8kzXJ4EIqbyYv6xSNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=up6RCDrB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="up6RCDrB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E16AC4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752212993;
	bh=UxVG56YeeVoBBKY91pckwli2RBZUlQAcbFB8Qx1wTL8=;
	h=To:Subject:From:Date:From;
	b=up6RCDrBOI0CDtd0iXru+RrTvWw44fKDp0j8+rZEgqxuL7Ish6HuF9wJJ4AKiuWzP
	 je2gezXOxLp3OWU8QFLG6Brs+9Ov5r7hxWfzepS3nLzDKg+c7w9KH8jVaDTNjWoCRA
	 FgXhFajzGoU7z2VB4exv7vbE+dqFui/PVm/Epx7QN/OQRV9Aii1AzF7HMHpUobRO1m
	 9OA6FkgfPX90yLT9/1J3PbJ52PbJpdpqMs+KWULevtC1Vh5oXDnz44cCQ6VWw8RlNN
	 jVpDx4x82eFUOUJWMs2ea9kx4KGTL7hj7jmY0DVpr64WY/K13HFK0huHPZWYKB4Idx
	 VfR6sjQXP+lAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9B6C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175221299357.29325.17955624536652434550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dd164b30d8757b8740a9af6162880baed4b4fb1e892997a100ea6f9e94094fb
Date: Fri, 11 Jul 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752212993

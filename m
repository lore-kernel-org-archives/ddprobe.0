Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2538822F389
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759073394; cv=none; b=gOOCwEloXt37oTsecXt97fqNobKAT59UNMGcpQeoGpOq5f4zgrcbSctIgXOeB7HUbgjoLmW7oB/LChzBdB+v8qrPXpt58rWdf327PZGWqyT859XM5BjoHxv+SPmLRJEUd34CrmwPPiOtdYUdyJsjXn9Tlhf0jUz0NNFS7fiU3Oc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759073394; c=relaxed/simple;
	bh=z+mYscQONp6dLmhRSJqSx2iDubyFTB9u1qTYxh+F3no=;
	h=To:Subject:From:Message-Id:Date; b=nDIcRaaOxANCEOXH5oFYXmoWKqK3LPyZ0kLDn19V28L3UM4sVYnsQaQPs1oxjbFrdEnvjS0o/Q6gT39sH7OJGUd55diMTN/+zNCyQRA/VmBmK6VrqeTzlB3sdQWk8es6O8MloWBUe4O+W2J63Yru1qsl2dxhaKKdDt7qBwszxfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sLknkbKS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sLknkbKS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00D9C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759073393;
	bh=z+mYscQONp6dLmhRSJqSx2iDubyFTB9u1qTYxh+F3no=;
	h=To:Subject:From:Date:From;
	b=sLknkbKST51iCIOxnyIzn5FHKP6Jsp8DsYPFfq0KzS/zi2+9ueUDfg2/57d7ThDHQ
	 3MXPcD47GwCMXNi4/IAOxwP88zqkppT9C5GuMnfX1mfcaoq+OAQYzja8DFagwAV4J/
	 Fo71sAw6qPJwg9T3UQb2CkARhX6IzWui70PmGn2VKZuSgkqJWycpP9J47krj65qmC8
	 gc78pmHfgssuSmDoEb2471CFHdTUva8faEaN+kgnBfs9OrHk50pAiDJcYT6SGOPNgH
	 aaZMczS1u6VO52Q1A1jSXbgEGrToy9nG7PnJx308NBxdDPowCVCJ2tHj3IfW/KVzY/
	 XcH6iXI8o0Ajg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6A6CAC5B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175907339357.14057.15220258118695059696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35bd74d2748a11bf5960a687f203b4985d4f2659e24f3e5bb5162d38f3653291
Date: Sun, 28 Sep 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759073393

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AD724FB9B3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 21:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788469235; cv=none; b=Awy1B7H5B4gfZM5twnVDa1Anpk3oSKKhZySWXe9qmwORquDHzZhYgqIXr+HImtmt59sqL5izvEi8y12LGmUulo/pSyJLwb6dbnDZVCJoo+Z0JfMaiOtfUmev3XkdnLScq5ladgOYcmfXMh5MsC9u7ALP7DQbMbtsQ5hhnzWJUJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788469235; c=relaxed/simple;
	bh=jQg+GkIN1psV/CQ5slVmWUNn7Q7mdlWy82er91KmHec=;
	h=To:Subject:From:Message-Id:Date; b=aNgR7+xAHYCq/O2AInIZ3dv8BiueqU4GNfkrnHl00bigBnPMcsJ/DqqcdQ0VgcxAhXpL015w3S7e5n9dAS1AK5W/Sm/lcBQpNQEtIcAvLVWlJRujmrE4O5zaLjJvXTEuGim2lwFA/XrC8TgoVV/7lqO3OkRsK4FUTZOd4cjhOwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bA9TT9d8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bA9TT9d8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC50FC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788469233;
	bh=jQg+GkIN1psV/CQ5slVmWUNn7Q7mdlWy82er91KmHec=;
	h=To:Subject:From:Date:From;
	b=bA9TT9d8rvsugilDLpCwnCudOKixLyX9BxZ14CrfziypDQU4mu+mNSCy5iqktqh+9
	 i1wHrWANGjH5gxPq1iZjdypbsPQTaPdq+bfnn64YSG3+HcnGfCSHS2OuCOFQkscfpP
	 uvmsVCnqbrd5zjf6i7GJTjVYaqSaYDP31R3409HGbeF1DCKIWi/FoSQWdFkhh346Xn
	 Ook3MI9nmKCF6Wc0SdySyZx/2aaOhScDdju5DjyHC8vM/k0CR+3plqh7RiTxQpQnqB
	 zxK7p7rjMhXUTuh/FivLQymhBJgegpyzz/kvBNiWzuVhUDVr75UumVkunVKqQjBTp8
	 1K8lQJyiZ9cKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B288FC624D7
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178846923371.5768.11171070398768321699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e36062a57e28e10ec1c65d4a89ec0ecb9692a10e5baf6aebea2f7f295e6674a1
Date: Thu, 03 Sep 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788469233

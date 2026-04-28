Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306B11F91E3
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 18:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777400254; cv=none; b=AGLRTA4NetzrjqMAlhUENulSObQuMeGnB0MgV3D5hkO2y/rcpWpAaZU9GSA8GbQlSRC9LlUQjDJ7AYy8i7WJLN+y0irq+Dggu4L+NV8FRlM0kJmZnYNBHpG/dlZOV+s8DlcyzOuVouulE+WTo5nTBcpmXDzMV7rMzsTXujWRJCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777400254; c=relaxed/simple;
	bh=LRHx+APmSkV34FLEAFIQAcqrjE0nxJn1JlFgbwTSiuY=;
	h=To:Subject:From:Message-Id:Date; b=iuuY+7zs0NBBsFEGQSNycKyxxXoH84oO4t7VBuqxBaC2YS0KzVy0uUhEcZ9sOe/sAOZA2jIkwSJt8r77FlCfCw4UnrgNvMFlRW4g8ll1fsdlx+OHrXptpWoxjPAcgFVXU0T4tNJZrlKIVW/EfW1/kTUufWWhLbA7+T6xtpAKqm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p4nxjJib; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p4nxjJib"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB062C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 18:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777400253;
	bh=LRHx+APmSkV34FLEAFIQAcqrjE0nxJn1JlFgbwTSiuY=;
	h=To:Subject:From:Date:From;
	b=p4nxjJib7W4aaKfzSOEfMeb6MJ3sEeluWQYjF3ydykyTrOAdWT1tFntfs9J7n3sbE
	 z4o1QHl0Ix04TmbfTlo93N+RYkdfuyZfiF9GidWOuAsZNnL735lUY5wzrTQHY1Rs9l
	 rjzCrGtQm9dow9KbU57kNmc1qgKldmC6qkh2HazgCMjTLDe5EVnfsXMf3g9h1AMV2L
	 /ZEpo8y4MOiHLP0gYIx/cXSRhHXV8DC5C+21gmCUnT/uC/+T9uHYgnzH37CmONWegZ
	 1qPm9EgI2voRoGt0x4DGdK1CzhW1UVRT9N3IIOWPlaiwCM/nh5qnTq/YEg0inWG+ob
	 tOYB9KoX1i5YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C24FF885A
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 18:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177740025368.3464.11028064673227800479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2567a88e67090bda40da5d286492421a432cfd4afe7747f3ebd5ab78ef81ec46
Date: Tue, 28 Apr 2026 18:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777400253

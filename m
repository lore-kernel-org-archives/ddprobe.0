Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B9AE33A6F4
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 20:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767731634; cv=none; b=MRkU95vaJcllnp5+utqjjQ+d1v64SQj4kM9oP+VmBN3yU0QIZ7nRRfcJQg/qgNCChWgiPZCxwZTuWTnvBNKnUVg9fyRgZw1rLWouYOuM2xTHbhpSC/d76MwFM9YlfhNyGBc+ev6O/oNJI/lEdHS8yWZtYxn9FsrJ3WwZgH+6GYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767731634; c=relaxed/simple;
	bh=a+/ccuorEBigPKHNqyDwqZUIF6BDLVpBiyGyzrfOxOo=;
	h=To:Subject:From:Message-Id:Date; b=BfztsuzAzRF2lQZPPHCtZL7G5CQawgvZGBUS24llICMhiHDS3JybtmtpA9AXNiWPn3yKot7G7sm/mDYeHQ56znORUTTySChf6L7pc8gkAubw8nGf8c/wDbQFkpOq7CZAnYtfjqnh1qhy2X7ybXOx4haxwqXMXJvzCfJKGdYNHNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mnaPL0pm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mnaPL0pm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E719C116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767731633;
	bh=a+/ccuorEBigPKHNqyDwqZUIF6BDLVpBiyGyzrfOxOo=;
	h=To:Subject:From:Date:From;
	b=mnaPL0pmJ2bxqebFnFI/Ut/jVsjcKLRRYKVBJsxjwjg3MwVqoEw9X2V7bzQeH6mab
	 CkZZQ7urBXul7yKgBWisfM+6i54kFzzr8M+e8loVI3HR0BZgKhDrMS0NgQXtbs7s5Z
	 8muW+kLDB/Rceo/B/8usgOSuCx+fZXiOJGctdy/quLalfwpxRocEC2Ug7ZjGSsuU7C
	 wkxsPq84IymWPLDZpWway/dyyRk3ffj6Uzgr6Zgo636GJRsyubkH3YJU4ed4eZnyMJ
	 D4WPtDudblu3g2PmV2aeXgykJPk1EDLgHODVIPfuW3WE0xxgg+ynP8FVpX5Ud7wBMY
	 MDSgwdw2YPigw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901D7CEFD01
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 20:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176773163358.335.13480473846797888035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f68e149ee573cbb3c79f753e164f31c46cf19a59220e17bc862977a256fa0191
Date: Tue, 06 Jan 2026 20:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767731633

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE8411D516C
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760225993; cv=none; b=innczkeYSai+TeLFj0jw3kSIp9jo4gAOb62YnFH1OE7nMt2V0EKQQpfNFU+Ac7IqlayKSl3JXUY1m/tejPNGqzrTEaJAYBsS2mR4V+axNNZia9IfJfS1D0Zp3YNRy5BJbptC0Qu+I0ZizMUum8RlUAL8LhIZSHWn4QBrw0HRjvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760225993; c=relaxed/simple;
	bh=xxSBHyGJQODjkoLQJXkhR8KMngas/yCTG5cY1P9i4F0=;
	h=To:Subject:From:Message-Id:Date; b=Z9xOprzriqxW1kxXDTUUoU9Wbqymj3g8B9+twQXSYDDbIitAgf7Xwc89+h1PGjsfagpASIQgfAKqSc1nd/efgqkUB9RQ5CiEmZ8aslCwTTvW6SSoCoqtj2ZDfc4OUP/kP0uE6baiD3y39lJVKF/mBh8qY3ubKQ0+d5/4W2jYzWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jlwlhXFm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jlwlhXFm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4658C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760225993;
	bh=xxSBHyGJQODjkoLQJXkhR8KMngas/yCTG5cY1P9i4F0=;
	h=To:Subject:From:Date:From;
	b=jlwlhXFmWm4US1SGyTOotypxLCl1xgIbnJUU5HLS3A3jX6RFUwbVnYGp3RFULUPfG
	 /sGWt8X/3xUS9VOdMOt6bP3MBkXLCWOhmNbMpsJFCss6KlaH/PEe1foEWVYsJ7v+MV
	 Nzv1U6cce6LubWudix52bDWfJl4o7ji7xI8rX0lQU5XFh/HthRf9k5/5bVDNEfKOEl
	 C5MhwlCWTAmaP5WijMIsfkJoJ61Q80/KPib/x0kLntA7fvl8zFiC/+YFEtiBKMUOct
	 Z02jiFwN11Oh2pplJTleMq+nL0KCvuq3UKcUPP9pZE+8mLUJ2kaAGaxVG+JUxSU4fR
	 sBTBMjyHHxKDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EE4CCD184
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176022599358.21553.11296740414291801782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 733734c29545dba45855f8f0d92b54f7c1bf67e9b42b3dc37498756b697e652c
Date: Sat, 11 Oct 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760225993

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C5C92848A0
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 13:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776086254; cv=none; b=fmAr07As4XL+fxnZ+E4QeW0VByi/ZuazSFhRLdOG849+IajoTejACnlHjQTe9KHd6u+DX5rvpgh9GLP+UG3UUB1JDoCTwMngKmNE34bH/DgC2aBsc4sNTGUJavbG/baD74dp4PdyYY4aA8vDzdtLX6aaDKmgQegOc8XLW+L/lmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776086254; c=relaxed/simple;
	bh=6atl29SBABobmG8SaVMV+9RMjIfIQOEkh1LJj6TiwqE=;
	h=To:Subject:From:Message-Id:Date; b=i3sjArZfbwjWkXS9TZGGV/hG2uJwtUlbZ6hiOs2wrVmwcyKSNGrPRpB5sSXHbNlKmdgukINCG6rfqfiN0JZJlU10bCTm5sP5O5PR+szjM/YRBZpjIdkISkMDQs77j7MaWGm3frGfDR9o1fZRZ51rKn23CgouVty/yJjbZzix4NA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=feTa5nLz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="feTa5nLz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7CA8C2BCB1
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 13:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776086253;
	bh=6atl29SBABobmG8SaVMV+9RMjIfIQOEkh1LJj6TiwqE=;
	h=To:Subject:From:Date:From;
	b=feTa5nLzwlmnd+ZFyesg7EU0QTbjLCeYHxLJx+O2zKfOKqZGjMKFbkcG9qjri8BdF
	 yDvrrOk0tHUIwVL621CL113s7xD+z7PM1JMpPcmLaqMxYN9Sd46IZCXIWgdXcR5hpg
	 /odqMnMZ8z13P64Zbs2Z7JjO8D97sf4JteU+dplQ7SEv4d4L7gbzWGgI/HXVbpa1Z6
	 u5SD1UQI1IeJo5qrnMY8jhW4/zIS65R1tI2O5UxrayVAsYh5c/91wWF4sBOn9w5m1m
	 AR/2+rbWYzDZ32xTnv2k8bqbdvgaeTy0fnWIEfnbDS9/1/zb4P3QNKhOxZp5qWbRoI
	 7NYy090AAlR6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F3AF34C49
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 13:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177608625368.22377.8712582761609534969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f77dbcc35cef533dc8da4203b2565d38e8021fb4dfa0bafe1c7dfee79952b2e7
Date: Mon, 13 Apr 2026 13:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776086253

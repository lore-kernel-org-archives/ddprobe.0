Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312BA746E
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736488554; cv=none; b=J0Lazr8QcTJyOfo+/eU3TaPGGYRPxA3ST/yZmL1OFUMXE1feVJi1srsxvmG11wbMNCPRqPF3F43rGE+yFY5fRCeOnkDbDxThFUJvehTLUx0u0dV4VOyteP8IcDgiT8sudLO2PXme3vYrVMijP+S6DyeTarAgkyBHLAXbyGzV0jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736488554; c=relaxed/simple;
	bh=QKqmKct8Rt6iMChG4QxH68BABl7SdqFtfvPizLmb3XM=;
	h=To:Subject:From:Message-Id:Date; b=DMDXUuDyywb5u27HRuqJIoiow/t37X3vQYn73gplIPWUxVU5bcKn+iOJFzi82+tQyWGpDNjW35ZcIUnutZI0ZC3eVYDpAs6DZctPKEopWZMS45ZfpVmXj5jKWGS5WzbsVOGFE/7gLywSQKgV/xzQ8VyYhLO8Syn3hVyVn6Rvlr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=keCed6LG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="keCed6LG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB317C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736488553;
	bh=QKqmKct8Rt6iMChG4QxH68BABl7SdqFtfvPizLmb3XM=;
	h=To:Subject:From:Date:From;
	b=keCed6LGMNnND0FIPGomoHbPS0NDe1ANetnRjqpbdGoJeSb/1zZDp4zDodDZ6HCEf
	 5GPfLb/joEDwjTFCnJD5k+KU7fKAhwuXjVN0AaAKfn0OeX564Q6HOMSTxeaY7jQYJH
	 NJhYIZ6PU7NU4h20uXrEEiIm63+mStWvQszSGxisvnKWGygqdnDk2Sse14618olUYC
	 P3MVjKaLMWtgaIdIqu/sjrx7ZvHm58FuE1JxgPuNA3SWXsBVy3J5XldLzbi13MeeG7
	 6L8zOOIiNgQandn67SeSeLYMFwbX34d1PM7cUgApngdtjwyDKYDB8pFAGnSRpMjD92
	 lwzi1axG5ieqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AA6E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173648855360.29969.5901144377301991938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1be7897dca5c7b9c19776276e88930518376ccc8bb06d19229432b78c00f007f
Date: Fri, 10 Jan 2025 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736488553

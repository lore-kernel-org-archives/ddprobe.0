Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3090ABE4F
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728911754; cv=none; b=Op+pfHAiotHiKafZ1No+BpEaKqwxYLalKnHVuNGJFRfssy809h20VwpxN+NEC2/q62k9MX5Pfh9IlvUS3gfPtv8xcY8Zxf+fyPSmV0JWW23Jme4qnXRihJ65jZw9vjL/eu/Ipo5QpXIEXvwQweIIxy0Y5PtSalv5DuWefn++yo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728911754; c=relaxed/simple;
	bh=EbGh8bhsd8xbljAhLstgCOrEAh25sxabYEbiUxrB674=;
	h=To:Subject:From:Message-Id:Date; b=f9b/zZKjUVhdLNfKyLyXBN3pt6xvjlq1Odhc1WdY5Ia1iaIk+WZ4xHIY4DsgNzMAiZlb44p5zkcatpb6hepvhtjojfwqQYOwcPlHlvvkqVdIu4wknWNTyCg5VDaBqK6kFn0Hs4WmpKcKJC9X/h0vqzhA3T6nXk4Pn+JKtr+mp78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DrrLbeWJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DrrLbeWJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8389C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728911753;
	bh=EbGh8bhsd8xbljAhLstgCOrEAh25sxabYEbiUxrB674=;
	h=To:Subject:From:Date:From;
	b=DrrLbeWJxxDR/494sBkPMlhnpTkwIpomCcaBRSkgzuedZJlkSxpWjwiMjC1L6FWnm
	 ioOz9GEfNKNrbmaPr8XyI4w8FPkZodXjCd3Nn2N2qdMMBF4TH22WxRcZ+6WO4lthEU
	 KM6FBkFJLVjLgAlC6bSsTTyoIVOuxMpL257xVdw8w/bpbToZdujIVpS+o5j8rpPT/R
	 8MjXc9ANH7b2Z7CzMf16+eU849BEZMHS7WeIhNWY1oiA5Bjbw8bXV485aY9pvuDdO3
	 0fJwr4YoniHXeVbC9TaM1Kd5diyi1rvvy9QnB7NpIHGyswdyVF2zpX1ff8LrdHSuch
	 joSanhqGHbb3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A1ED16261
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172891175360.31541.10350596612810942821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 491bbe9ced4550d9ec4e229efa7f4a608bf45d251714bc0076bcd62fbe6779a1
Date: Mon, 14 Oct 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728911753

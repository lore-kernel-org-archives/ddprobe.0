Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334D32EBDCB
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751047194; cv=none; b=jThOAbS4SY5wfgfXuTFVuqMj2iye+3t+G+Xkgip68M8ZxHwUapdLMUTMglwmytpC6uWRtXhIiFvI3kN6sgDAr+v1mRYYX0T45n5RRWlx9xk7vcpHZCSaxO6E9RcwJPHSQi+3cYrghR9q8i8ofILNQJm0ZgH9O2GAIa7LqCsKWfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751047194; c=relaxed/simple;
	bh=+ITIyW5R5N+DTezQZ7ChJZ7KgnpTgY/EmV7FuXT7J18=;
	h=To:Subject:From:Message-Id:Date; b=G7KC6kaI2WiKsUKpnRSRYDYH9xmmJTa6ac3EQKALtH66ItdSc8x/qFHBA3HV3mqOFvtg3t60ek8/PTmTaZMPlXy58LP5T2JT3GXfLA2C1ykrBNCkiKupYIcH6MRAL4q+M24uhj9R++ZLZVeykv+hzrSRA2cvZG6zn7nWvTTqV3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YgfgDya0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YgfgDya0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC86CC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751047193;
	bh=+ITIyW5R5N+DTezQZ7ChJZ7KgnpTgY/EmV7FuXT7J18=;
	h=To:Subject:From:Date:From;
	b=YgfgDya0WjPISVjlWnBqfigHHYm6tZ/BWB86cA5KZBkla1YUHfo+7fNPpVmr+tLMP
	 c7SV9FybdIkuOryvlL9Wh/3lOHcqUVsNditvQxzOXqHFePjGdIlJBKxFn5tc8zstyA
	 d+BdA2HzA8k21cFyCk+wYuWY5WEEoudYphQwJxbyIRA5PLaWAcLahvTxR5gO2/tLSr
	 WxePX/mP8Or/RV+spMSsnU1mu1feo9aU1Hokrvz9jI9FhvGWG20GaHqGEqZlaUTcIj
	 6NSMO6ZUPhLybw2tL07Vw7GvT3NVuc2ERk4nh4O2RGvzTggfWUvEuVp4D503fzYKSt
	 cdx5b5HjTWrPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D0CC7EE2A
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175104719358.25964.5009565442646341070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15845e7ec0d86a17eb1ce451110a2d10eaf12fd664519bc75365005da1c758a9
Date: Fri, 27 Jun 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751047193

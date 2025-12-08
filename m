Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B2772D7390
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 20:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765226574; cv=none; b=KUYFrEhItpirl7bPWOSokH3bnvRiFBtOag91aZtUzM6xiJttgrl3+w7tF3+HTL9HxPec5FLeZiykcVb1rVi1kpnYCMkTQ7bnwOPYWg6eRW5c4QO95tVUTpyn9mEyeWapqXbYmj6SRT3x0LN5F5hFOU7wIytSYJmzIXliTFxaPV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765226574; c=relaxed/simple;
	bh=Wn5/3IMPUkUnQ9bf2WIpHmfvDVeMT/dMY6FFgwe95Jw=;
	h=To:Subject:From:Message-Id:Date; b=NGEFD1PLStGAMOJVA9R1avd+NEj+fbwsHIzWmSXnwDoSHKvJCbODSrJKBvGzwz9x29WYEAMk0tmY4eWCcQZH3Y5E+lYQBL+C5QHGgYiyARAIiCRpBxStNh3eAyzu4q+pXHHP4i6alEkpIXsps7eg/K1CfKmyuJSf4Q+B+mjWJqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=muVC3VBC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="muVC3VBC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABBC5C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 20:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765226573;
	bh=Wn5/3IMPUkUnQ9bf2WIpHmfvDVeMT/dMY6FFgwe95Jw=;
	h=To:Subject:From:Date:From;
	b=muVC3VBCCY7PPWsm0BGkyVOeYBiu2B9DIm+arGUKz5uVYayHcpBeddGIlTtI4+Alh
	 2Zc4xqF+DCKc3GmR3QJ1xmVKJdJlqHYdg6YRPwama+pkB8294Gw0C1ZwMEEFJE2CRX
	 J/8ZgrkMsp4O4o7jSSVhpI3WPF7Kj3hQS5cHdo9ybVFD/zGz4DogpR5UhtnlHWHjXk
	 pCRnDMja70gJBapHvxv+iYm4tF9CMVm/zl5nR4GEpLJLxf3UzomO2KA7uWTcE15iSe
	 q8X1yZ/LReFgL2i0CnIDm/l2gZC6HE53BsOkYQZ9oeQrrNysgYD7vIq+rIgKLNl2pH
	 HEIE83xetaDpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E08D3B7EA
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 20:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176522657359.4633.7900664266267630217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2b63db60dcbf0c5db0438f7536b7be4e33f39f0a722f5c6425c19246afbfcfb
Date: Mon, 08 Dec 2025 20:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765226573

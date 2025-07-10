Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3271179DA
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752118194; cv=none; b=bx60xGobTw6jLo+Ki9DP0d6/ozaYJDEiQfuuIVtLUqwpnMba+Bqfyxc4WzlE5jQSS31GkHH58R5vtOH9YLYuqpi4MKoap2ZHSccGV8NusYUm9w5PyrVnxTBfAbjC8MbbR8WuIQZJp2yBQ0uBs/7v8LRX2CWx+Fi97lNeEOgZ0Us=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752118194; c=relaxed/simple;
	bh=GwKwYPSKKOtMiyCnox9N2QN4P8betTO0mMoAr4hTTEg=;
	h=To:Subject:From:Message-Id:Date; b=LJqRRHgYU0LTfoWRLBsPqSlz/rcpduOeidFyTrs3ne1pw2GHZYzEbW+RgJlabSnAgL6yxq7k24on3/ijUbG4MrRHcx0j+Qd2nz51EkPcQ1li55oHl6gFu3EqLYpGRIGK4b1qH16KpxKuADZiQOPqEFug029kyPbgELIiGz0RqW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VDKdNSQ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VDKdNSQ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A443BC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752118193;
	bh=GwKwYPSKKOtMiyCnox9N2QN4P8betTO0mMoAr4hTTEg=;
	h=To:Subject:From:Date:From;
	b=VDKdNSQ8urY/66IaO9hrQB8dE8Xmxxe8AJkGDLUrd6KPJmb3W+fTyrpSnsCwj+hQO
	 Tonn95qs6mYpE18muy1qMkRA2+yXvpxmPwE5ald6XJ/KRSJZEZ1daqmVhFCbf6Zu2+
	 ha3wR00gKJ0CxFw0mxUxuF5i9mYZ64s+4QVyFwT9OHMO/gzLOiDX5wsDXNs1XeC2qk
	 6IiiZdqEvH/XSYu8qd+og6OZC6dv/nIXWlMwqpUcsXZ7mhwgkFq90Xh1CgDg3zHE8K
	 lmEbVt3xKrt/OiOlAkQ2sawT8Y9lp0wxIamr19eJGq0Q3GsNbakAjRMOzrZGwLUmu/
	 7sQ/S/rn+FK8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9279AC83030
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175211819357.8977.7615870458755904648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 087cfaf8ac54dc6b1a1e09a0a451bc17406c8fc2472c994f7628ec738aa2fc40
Date: Thu, 10 Jul 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752118193

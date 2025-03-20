Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4418086352
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742514595; cv=none; b=GGDDDDB6tHolMCH2/fHw//VdEKd9+hBOu6P09jyyuQIunmPgm43Dt7Ol1RZjvnw1lepfTupZKH+AsVWdntybdIet2OkEHbsCHnh2029o4EPNfu8uEv97/etgmwV7NYcaDe0gJOvqo5cVsppEq93gii/2xpBMgqngJ5LQfS6RC64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742514595; c=relaxed/simple;
	bh=kllPX2YnpWlO1ztnAg5O2VhYMas6C1mWTwXaBuU9arU=;
	h=To:Subject:From:Message-Id:Date; b=S7L+DMl41BjFnrqC2Oyn96dIaubZNdFsDX1XzsV5UCwn4CbjFkIppr1M/cGImM5rxJdd4wkRrlW7I85ZGVfOta1YvYIyPEBH9qPB2OA+KhwnHV9E/FN87mHlPvcWUSi60zrrS74qS9uWsYrLBc7Q6yk1dvdx9AlJaIDnZfMsxwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GxT4IxYC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GxT4IxYC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0A0AC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742514593;
	bh=kllPX2YnpWlO1ztnAg5O2VhYMas6C1mWTwXaBuU9arU=;
	h=To:Subject:From:Date:From;
	b=GxT4IxYCi6gUg46BvU+wBtVn3DHfMohbuXslNsyLJixOFgA8D4jdBo5MRAMRqITti
	 uET1qS518PBAhpogoEarPhNH3/dv4TQ86+nIY7kneQ4pynJsou2caxf4GkzJ05Snee
	 a2M2WPsynulaVSQxlRFUkvNyOPEAg8QEMKqGeu8doN5IsetKcVuTwqKR7Xfp2lCTzj
	 g0Mj1/dueRRwGLzj6hSzgoaZ/OtMXhZG0yAqzB7IABHc6WtTHOnySFbzE9ow3Rwri6
	 MLWBz59vXFhzhzOfqM0Y9YkZi78qH3wzgfN0WE9MyQvnMVxzRsQN2oDrj81zG6Y9XN
	 pzm45x5nsnC2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C002C28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174251459362.949.2459424921181327179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a7b2e5f53548675e194313c4b703f3e1d8350dfe6c30edbf366b3f647fcae34
Date: Thu, 20 Mar 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742514593

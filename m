Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C75FDF6C
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726634754; cv=none; b=p/1oWzRh2KQ1JBTK1NrSH2VpqYZI7Tmhk3xvd3OrfeDjnpBvSkF+f2rsnAy3GGuMBHX4/t0JJcMHo3JwDpImaGpPMm57guHy3twx74nvntnBCjfOLZa5e/xSftzWJpUYzGlQrJ/VW2hBJWhu29KpBdGqsXVlC2YXmpcK2A1mrE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726634754; c=relaxed/simple;
	bh=zmZFHMGz7mvXQWM8m/fyd6YUXkfIYF1WZmcQ8/1t9Mk=;
	h=To:Subject:From:Message-Id:Date; b=p8Dy1iN0oTYrB+Hlf1Ub1E+ablSq26oZ1G7MWUFgSpQQYU+pGhiCO0yqxAaJlF7tQtoOTuQFSsn+dZWpOoCCrrYGvkgsKevE5AjbS8gg/KhvMWm3l2hiXzzbd9RTzIr9R8wTSKCK9gxg5XU2xJntyBlbxFyV8w1zno56yG7ONu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tU0Clf/t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tU0Clf/t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B331DC4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726634753;
	bh=zmZFHMGz7mvXQWM8m/fyd6YUXkfIYF1WZmcQ8/1t9Mk=;
	h=To:Subject:From:Date:From;
	b=tU0Clf/tsS5bYftS262tX0czicoAhVVWIm16PtrKdFmzJLjHmjT8xpM/Qqq5IGdu/
	 wfqUn/kFjSswq/psF66eXObnUjf4dqCtZAXX0mRJpcj8ydFcb7mO0Alj2ryhVZ27BA
	 0JsIs5lUCktVutisnYoD3Wosh2tN7qEdLfVpS+cC0Maysj85eHHKO3QOmLdkGtiY7F
	 CdKq8FMpm/7CiozTpk3V9P/3JOrlBPwjrJxAr7lcbMcBg2yQlQEhnblf/Fc7uG20uv
	 VPyZGcaF58PQl1RsQq5hY/60nJ+t6srxiobuEQscSz7V/zz6OkYUL9ksbqD3okNX39
	 1KKmzTCsWkIlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A56ACAC5B8
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172663475360.24863.8784883672052445154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d347a073d8b20c4c3d7ad05ef4f30a656ecc6d84017c2d292771d44e2c32852c
Date: Wed, 18 Sep 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726634753

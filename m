Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3940517BA5
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732820154; cv=none; b=Xhjef3YxWfCqx3MauCYbibeS3w5vZhT3T7NLy8hPQjyXS5A7Y4QpLu23o33xEqD7V8qbvMpo0fhu/jCOIG+4bExVAYvtWgzrav0QXUUy+ht6+VWdjBoplT8XqD7pAy1H543rOrpC3Fyp5uOvS+oKT/Z1S4UK9ut75vHH3YBjTKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732820154; c=relaxed/simple;
	bh=PjDOi7wyKWvSuAltSwo93zHT+a8LluQ8B+qx25mzqBU=;
	h=To:Subject:From:Message-Id:Date; b=ClEsV+An9wJnep/+oomehtd1tQ9X8zxq6Xiyek85191Y5gucn0jDuMYm8wQ21vNGy9KcaHW76+y8scNg3g62muGX238bEXxwdkPvlv9eRGYPZKFt8ly/F5umt/s0VKiwE47W4lA/gfpYZztKR1femCPqereBAL9+hiil73xtXOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OTBabV4T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OTBabV4T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB48BC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732820153;
	bh=PjDOi7wyKWvSuAltSwo93zHT+a8LluQ8B+qx25mzqBU=;
	h=To:Subject:From:Date:From;
	b=OTBabV4TLP0DU1j1ZAbDh2ZUmP70Mq7fU9YiVLfYZku/t+ZgzNC2SYzd0+0ZBCh7R
	 rTf0o/KSw25VD+racgudEXoG5P/EVxbr9wU/9OWWcfZkOgcUlx9W2bkBUAkNLQOTW0
	 zRO674dzKL5Ij3YTM41r3fgz+apl0GeRZPBSRR188ei0qJT5dMYbD+Q2JnkjHfpyCp
	 6SQ2r9eNTSuPLm0T24oYXmKo5mShhmJk4jQHgfOjRb3XkS9GMU1g/SR/cX3QwR9K3J
	 cvXyyTHXa5rwVU56s9TLo4RYQsm9h11Wd30wedzpOyKYfcWYr/FFzBBaBuZ87U23z9
	 UxXC0b0Dus8WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980B0D70DED
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173282015361.20683.2253865634237621665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02ef47b1b4d1175244c82a31ce619fc67964685a51f3ca846e69d549e1d39458
Date: Thu, 28 Nov 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732820153

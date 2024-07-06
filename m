Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DC8B134A9
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 21:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720302983; cv=none; b=LmFU5euqJ2fqVOc2punEJos2CNXAQ/vLrdNAPL6IvpK0Q1jNgkD8n6NlzAF0e0QlUhtvr/ziSlHZbPdxmFDQl/l7KIZ5SF6pTbFpaT9+62aLqbgzu9NV82nx94bitHEJIWEdkHSaWOD8U6nt0MdhxCSTjmu9Dm5yXOdxWlORMUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720302983; c=relaxed/simple;
	bh=dl4unoDdDPSMUgwLTRkOPD7amSZkkA6VGbFBhg1M5eU=;
	h=To:Subject:From:Message-Id:Date; b=g12C22XmJ4YzbGEN59Fdg6Eq4DDXEA9eCkyA8mnS2C58biG5DRHhmFTKB4+lViqSO7aRuden8z8HpEu6xNIsG0YqgOGi8eb2OaVVPOfxTJk++mOw2W0FKt5Bk9fHqGmcF+zGmUanPo24rqqIW4Wp9nNMDVmXYUC8eFfbh7Segy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bPFQfeyU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bPFQfeyU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D817FC2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 21:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720302982;
	bh=dl4unoDdDPSMUgwLTRkOPD7amSZkkA6VGbFBhg1M5eU=;
	h=To:Subject:From:Date:From;
	b=bPFQfeyUHkOxnKsFmoC6LYPq+6Tf9botmMLdn8XN6WLmjfLhmbZy8g4kSkaPalk4t
	 ksQKkcqgdXwEYrAmSzpC2Dcy7uevTqi6lhCxAZEr2mqbRvrevWwYH6/0vX+riYYH2c
	 uO+8O3QwLuuJZDqyoIX4jyX4TItDX+36WMUHRWAi2yzJiZ+aCqRZIYmxRr2cPqP5t9
	 hCnbfZSwygVh/LneQF1QteLJNqUYJKcXFZcSaMGFLBpy6UJoNebzgSGMlH47Iz4Z9V
	 uUOXBIF7Euw2F6JndUPz1vV1Dr5axFcwpwL97OGNxF/rU9Lz54AHlr5KtV/x2/CpUY
	 ECEq3u5Y0vRFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C46DDC2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 21:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172030298278.15320.8584050361444654644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0988a92f25b8371694b4097cd1136f949219ad9272f1e7a85f540c0340171fb7
Date: Sat, 06 Jul 2024 21:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720302982

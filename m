Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267C322FE0F
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745570394; cv=none; b=CG0iMgnWDQPkab1wPd0U9Ru5A0ys/aXGgVxZLsNXxKyUe/7OiWaBIWRngrHkcvp57U8FJI5pZcDKoP8e031G1O+kWr0yZe3h40Xj3rWs0QYLiHXUiWA2qQv8L8Vne8kapYR/1jLFrbhQHtxVj/qKnpSJwy14KX9ukxPjCRQHP9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745570394; c=relaxed/simple;
	bh=M5J+rHgz4RCTGFNwB0CAiDDHulLKFCsup6lI08WcuYM=;
	h=To:Subject:From:Message-Id:Date; b=hWQDgbV9hadcWwXrWQhgw3OP+uwAMUp2P9dXTibpKemmgQcS2IKVKToWFlmCsFmqexffISPJqGPc9gwd1qV4NTdO7XWKjgdmSOoVAFP/xr6J/42Bn4TVZ8KfmDZ/24eQWkdJ1T4I4wYUc5pAmI2CwOPJIw4DjdSyGMrqWS7tkLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iyuCs9Nz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iyuCs9Nz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99D8BC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745570393;
	bh=M5J+rHgz4RCTGFNwB0CAiDDHulLKFCsup6lI08WcuYM=;
	h=To:Subject:From:Date:From;
	b=iyuCs9NzKzycSC0dYzK8W6zlwpelpGCKZbM7FkAO8Wabxy49EB+cYY4150RIzmRyf
	 nDGyGrztinl17Y1ck/m8w2qgfH9RXqFtUdt9FwMp1x0sXEc+LXskMUPfXoYakqGyrv
	 wS9e4DFtR3jcE87INv0/cSv6AnQFour/mEdJo43DuvQAW1hQpVcudfjdoyvNee/VxL
	 adpe24liDJzW0YqwwL+0Xyea2DOBt5bJC81DH1HjKcBMVga2carw9XsSwKD2/pvw57
	 3blD4ieQb/lBwG58f+2R8F9Uwds+c3ey58OAEUZYlm1ekFTvhefc7zvxmb+r5YepuU
	 ul+YztTDT+aFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBC5C369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174557039357.28384.8009762160546299362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce8ecc9f0e29aa7102b457db46fc77c32eb39c1e1c55540b70e8e7f67ae8eda8
Date: Fri, 25 Apr 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745570393

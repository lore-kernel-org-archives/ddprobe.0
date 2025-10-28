Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241741B6CE9
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761689994; cv=none; b=u2Zj+V0rgMW/HQ6Yu5Ox3XZfXnWv87sywN8Z9UpJmAMClgNIl7OLRL5wH4gi1qDbeP+2m/owH6WQCOUz6cVn/Lzl7EJDTP0xMESNOTUQpMeLKwxdR/IwQHNAxg58KR6A5Zi+KO3vt87XO0zW6Pj3C1BqGhu/E1lab+SoM6Vc/Cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761689994; c=relaxed/simple;
	bh=MjUIHcF3ENaLN9CnMjwch96WYRMuYM3pkWxrFouVmhY=;
	h=To:Subject:From:Message-Id:Date; b=HOhW9yj2J4SYKYjtz2TqjQifssftjiDmoDlMLXOqIDuL+H76wKFKknmuqSFG0QnbiflONnMJmwqvDX04lcOiYftAeypZm12OpfX4PC+EpIJnWvfyZNljOmQBynUSu2TJaaissjnc6GYbumuW29E+9Pvwz+buvO5gvKpMTDC0xvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pm+0Z2Yb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pm+0Z2Yb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2304C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761689993;
	bh=MjUIHcF3ENaLN9CnMjwch96WYRMuYM3pkWxrFouVmhY=;
	h=To:Subject:From:Date:From;
	b=pm+0Z2Yb7+Z8D1hpxSXA9st4WDan3qaS925hVyOOz8S560FO6hWhyQzw49IcrL1TZ
	 xkuSkUWlj3lU2V7Dq+ViqV4tkixUICHcp6iZBol5WpAOO/YA1cFKWZzishQ5CQclh6
	 riVTJBckrbIBKCEsGxp0BELqQn+LaRtDjDzct2ma8kDNuD1KqOzgX1/yCarNY+FGTv
	 bqV2iQoz979LqU4iE07s9r5ouR+TjgexR1AEIH2RK9oqJLEI9wWufAycpz5KMN9dxI
	 +VIDSqITVIDEHmGSHoonIE/yJnfOkBbeGw6++Xy0zQQddH+uai1EVYBFniS+6apItl
	 71cIomqDHkXwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916FCCCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176168999358.10083.7074231545244126092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91b60a5628b15aca6d9fe15f3226cb96f5a9ec7e874c3d31429909b881674071
Date: Tue, 28 Oct 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761689993

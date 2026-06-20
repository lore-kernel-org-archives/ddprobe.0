Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57ABB40D582
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 12:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781959594; cv=none; b=rPwketjVb9tc0cbmFb1gbRxzFdZq6iQXVywKlRP1KXV+xLf9zxpF8I6wLfi915SXLWK//vEtmU6Itrq4q8wvHfgYEh9KuLoFDjK+LmSZ7AtiQocvyswkLA7+ikuZxt/nNbUFTp7pZQlLS92RMoIsyrpjYAD2UuxWesTy/fUqsSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781959594; c=relaxed/simple;
	bh=JcwYqTlbw+9o1h8VEg2AN+iMtm1ScMQ3tN2qxZMJIOg=;
	h=To:Subject:From:Message-Id:Date; b=NXP/EvRkfgW2f6xJv6s3z1GuLmdz0VKfJ5UVgArJIgnngkeM14aQnPxxzqMhptHyFD08X7jYzvYghiEmTl19+g6hQHXbSY3ob9vU4sS+kNgb5A/kv5BkRxOsKi2OwabP6ZDqaRJo74ixLNCXM890GTdZmK4ZlzyqfiGXp5Vi7Vo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NydfATdC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NydfATdC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDB38C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 12:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781959593;
	bh=JcwYqTlbw+9o1h8VEg2AN+iMtm1ScMQ3tN2qxZMJIOg=;
	h=To:Subject:From:Date:From;
	b=NydfATdCV0zh1xar2+HCdx4//WAycmZDFbD5YWUsCI+Xs9giCCsYqkBHu3NPZ3Zdu
	 v9zUo56wGxRZgDGHefJAzwP8cLAA6Dmt4PNtqCAbF6zZJDqoJKI9LGt/0DzYOMfNR7
	 6AV7M73KjlK+c30uecufUwiWDecaZE+F44OpmwG56hsNEELGyqsvhiBAeR7/BBGLjf
	 Fg/2xOR7mdO0GExBEGujUiIuEXbX83orER1fhY5owdwXWiz3dxEY8ifuViQPbpjBvb
	 xTuomHuSvpV7/CR0uoJpICD6vTHR5NYuPuT5JHj+Ah9rGIm9Ssg0ctQVIl9j2M6GeI
	 nzEcyxl70SZ2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9A0FCDB46B
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 12:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178195959371.25600.4408811367287430090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1bbee6b8695af6186606955fb1e7f34e53a4c25e8a0065dcdb66fa0018d8d36
Date: Sat, 20 Jun 2026 12:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781959593

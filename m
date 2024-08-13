Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 140DF16DEAA
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723542954; cv=none; b=GSuhJGl7m79y7v1S/3rm4h7C3PKVla/C28oUBELLK+CK2jBGjayrytD9XGp1KmOi/ccHN04Ps/gaChtrC5X1JI1FSVicJ6ctT7/V2emhX3pugsnqg9wmhDfXETJhdaJjhcklvI9/5iWspy5qLIypaCZKrK9ZooKyV/fmWEpv6oE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723542954; c=relaxed/simple;
	bh=FyrALiRgqX9xGU0JmRGBQ52PWYnYHBraRRZhQW3kNCs=;
	h=To:Subject:From:Message-Id:Date; b=ueGxE0hKEROaSAqcJlqWxmTIIgrNT7jC7ZvV2oELVq2CLeUeyv+2clUeMkutFH2qa+aJYyIa2MbpltjFSaO3/bJdXjfTh1LINGs5bWadob/92xCc2aZKQHKni95cjD/HYtXC5DqRB25tCUJxC8vPGTCwvSdK3bLn1LAL4phLxRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PpaRjFMA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PpaRjFMA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E0E5C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723542953;
	bh=FyrALiRgqX9xGU0JmRGBQ52PWYnYHBraRRZhQW3kNCs=;
	h=To:Subject:From:Date:From;
	b=PpaRjFMAM5RyG76YgwyxoZf6sP4FxN3r51gvbFruDc9Qom8gGyGdsJO3UinMkbksB
	 MomrhyJ+qMRhB3MOB95t1OwvRC/8oQ/zrqOVcRHu2H+H2yfZ18av6JV3eBwfbeLF+f
	 2+sg5vDpC2vLvp2h5WDgY/LKpbVDmkuArjJ4MAudEEKrX4RoJWv9AZsoJhLhnZzxl/
	 vRs6pNtKdt4/s2QbFswBSUlQSCkBBbOditUqGLudmCFXiYkVvqRvo88rTe+jw+RP23
	 yL88dplonsosmnilhIQSJNczMKikSeKh9EGPakAaYkBt5tMJPmiptnnLjKvdJA2J/8
	 r76ck42Wdz+TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1C8C52D7B
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172354295357.1044.9364357743369528596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 933fc8bd97d865a5d1e079999eb98ddc5c406ab90478dc24e7b784fee3720e4d
Date: Tue, 13 Aug 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723542953

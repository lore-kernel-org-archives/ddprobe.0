Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AF6325A656
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738611354; cv=none; b=P14U37VUVCurz9DECLSLsI8ew2UfJNreEK+pERjsGxGQYmMXaFj5tznRYyceE+YSY8qnk2cTtjwxX0jT+ddAWXRdCmMdwTgTSJ9pHsqMQmNZgjln4BcmGXU/OqAn0BEXp4R7kYQ2rPrxH98jMwPBEj0jnG8DCKlA7Yc+eTbpjs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738611354; c=relaxed/simple;
	bh=1BU3flJ2l0cAvRu15hXr+a0YuY6mA3L2RgCCQgl5zkU=;
	h=To:Subject:From:Message-Id:Date; b=vAnOVn0XVxlP7UT9Yda9wIAhw5ZuWCZS25YGvdvVBRDv3grDqz5/1WBN3ODTbbOCkxbFlJO3Z4LWB34gnLv8Tou3oHMonyBMN9fEiNUjAP5JzFPY6Q2h2apJfpYhV3L3nCyeoCr7/4APBCxqUpegeB1Q8q0sff1y/gyySrrKOvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iAh/5evh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iAh/5evh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEFB1C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738611353;
	bh=1BU3flJ2l0cAvRu15hXr+a0YuY6mA3L2RgCCQgl5zkU=;
	h=To:Subject:From:Date:From;
	b=iAh/5evhvYCB/63WRzuyEc+//ngJd3pGgZrZFlMcvAzF4WG8aoolan75lFqQTEiat
	 otDDpXyUDMHZCYa6DGouff8VAyp1Y2daplgokT48Bk5euejkK8sH8iF2YIMwJbPcit
	 PrHksAlZ7fSaTE2NIvqNXCBTrdF0ZTnQG0Ue1D3pm5HveBdPrg/a3T9KzjIujvs1/S
	 Y6AzbGE/dH1ZyCsd1HK7Wlf/SFFgyx5u6sg8Nxnd7nFlj/cq5OG/4oKQW6qzdeI1IT
	 q2OljcI9qzReje5LGgoF01C65Ihz1vf/LWQh+Y/yibnezaBr5WfbMP1zJHMU9weTyi
	 t3OyAVt/lBjvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99DD0C02192
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173861135361.15202.15530961383445630426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84fa9563ea0cfe3ed977b8bb3cd33c0133fce63bccd638bd1f1c96a770abf3c2
Date: Mon, 03 Feb 2025 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738611353

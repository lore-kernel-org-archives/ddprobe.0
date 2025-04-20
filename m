Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DA28367
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745167194; cv=none; b=kLX5VNbeXmhjXDEiIduobddq3LbfevGce0fXolukdyjd9bXLq6OaRb1bPszY/9svwP+o66yzckU6WEaLBryDGiXu51++4r6vH6HiOf8m9sYEQN2aOEAt/H0bDF8hYHGx4EzpCLMJdWNQAcX/y5c8m4YNKBXXZTq6n+SSaWYzKy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745167194; c=relaxed/simple;
	bh=bN8zw8tCfbLFYrpq8TFGNIss+BO0IEXA8eDo1M7fSo4=;
	h=To:Subject:From:Message-Id:Date; b=IUnmK9t8dsJa+hpOD2rap8ZQqck7/UBgXyfzb/Qe7mpx1bL0nD99fb/mwmy/zqrm9ZNpJtw4468H6VNkfyg+42kDek36FAb7psXKfvaJ4CuWUxCdtAHu0pajwkTow5nHwd1AkyatU8t4YQY2vidbJnwzCe8IPWA1SeYXyfmDaY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V2AC7agg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V2AC7agg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC63DC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745167193;
	bh=bN8zw8tCfbLFYrpq8TFGNIss+BO0IEXA8eDo1M7fSo4=;
	h=To:Subject:From:Date:From;
	b=V2AC7aggit6EdLk+jI3vODZIGLrIbbsW5DXMNgHaQquBlL2TDH9HQ9w0V0cQRYgBK
	 pejkvHfTWZGp1Pm10mhN5kF6RY1dGJVlV6Fr9sMzjrgEbm/g8jfca2ySdvwYPanPK+
	 7a9ly7nkarR7jYHwcK7pFiuAiGs/Mo+JpZjiFCcFOZniqYdKieS7qRkMTuNID0ez15
	 TPP6i2PskXAMJco6+kgT7+JynImM52ECwyow42iH+pXSdFCj/hDLwDe//qokS6J//Z
	 5GvGDdfVH3jJdS0NlTZSn7V0a4OHRE3LmpxQtZrl5DEO7ghqH0fDG7gKjVtox4+Btf
	 h+M4/r8+39lJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B02C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174516719358.18158.790819447669302187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9110a4c24e64ca9da3b656099f1ccbd303780420d63232aaa8f5c26fdae97970
Date: Sun, 20 Apr 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745167193

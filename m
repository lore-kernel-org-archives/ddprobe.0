Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349A639E6E4
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 22:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774651494; cv=none; b=Yg76Mcivz5zanW72voDGZjvvkLe5OLJu1YGLKvN+1AU1SgZos/T+jTJxll6kQ2o3+BUmBRFNxNA88ykFkfLFtS8GEuMyjFIPVG6XO22+peMEtN71eCBgqSB7BgGM6fLL2xfy1MvptBnGmF9ynj2ZBxlzhqwNAvXgqgK0gQjnc3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774651494; c=relaxed/simple;
	bh=hnI4jvkzb19b7v8L3UTVMMkLTbh4GnK3XtPUHDoe8UI=;
	h=To:Subject:From:Message-Id:Date; b=liLzuc+6g0SlnY+qknUbdUW7q/rYRj/fdgUPsZqXVc1R6a51RIsZmjxeOMhR3SI/l5sQG5EZsnNCC5JlWUNLBSXhkxHjHcvijXo9r54S98q9RdcKNi+tVe+M9C9bqDTOonLHbJ13IWpq4zWaMIVgNqw970Vu74sW1+5Jpoc/f4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TzfG+Iud; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TzfG+Iud"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1434C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 22:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774651493;
	bh=hnI4jvkzb19b7v8L3UTVMMkLTbh4GnK3XtPUHDoe8UI=;
	h=To:Subject:From:Date:From;
	b=TzfG+IudhjtvnrjPi1CXJF5SZGUROayJAY7eltfiIMmuZxs0YdtI4CGUuyJCKYe1K
	 TwT9x12iS0wHVv6WDU9aSy4cGp6ArJ+Xd/mFn01PdmnU6f9ZIdtnYtFL98EhiAur6I
	 1kaorDiu9dFJd3vAFiH+ZJutwS+HHHSC6YtUBPK50Uyz6UzbwzgJEnf5uETq66geCG
	 JKdiWBOPyKkvctZd/HhuX1gOf+3WxHRt2d2XXI2Za1ogF4kaMFbMqp8w1uKvVMetCD
	 bYtoL+sSRB6bM6LrbniHMM45J4mJ19Vagz0dWoFcXR/fbci/ZKSZpXrO4DnFTX66SO
	 eQKpg7lYlOLKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920E810F2871
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 22:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177465149358.19805.9556042745047006140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78fc03a9a0fa8aefe92cab3c6aac94e3d479120fba189a9062653c69d10d1f2c
Date: Fri, 27 Mar 2026 22:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774651493

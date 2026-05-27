Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9D430C171
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 13:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779888754; cv=none; b=PW1Zyzq806Dy93YR1YpZaR+TSVgGfoDeP36NMlyLl2PYCEfwL9KwIJ+Uhtox9GyIeczH/mAwAuq1dlWXIn/k1TDaJJg+2++5NIFcPZokzTRacpQ2BwIhQQGJSHfTBjL/YSXZgQxDNW0CUep/60Xu4P+whOnu/qHDfGJ/x/+c0xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779888754; c=relaxed/simple;
	bh=MNsXx8M9wmyUwK7LQT9rE7ZVCiTUSkOiJKtk5gs3lC4=;
	h=To:Subject:From:Message-Id:Date; b=sI99YW+TlomysZ8nIK5tFQGUjH+VU6X5hoM2HBOQxZI5XMhn9jwg/0ukMgvnWONzM6luPBiYMEnHjcjrqTwP7kXs7WVsMuUDOpQ6KScJbK51Wrjfl7wONvTUS5S7bfC5/h5p5gXep+OKZQrUkWI2IIQee2xza7h74vMN6TaHrPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RAmrkt2q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RAmrkt2q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6514C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 13:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779888753;
	bh=MNsXx8M9wmyUwK7LQT9rE7ZVCiTUSkOiJKtk5gs3lC4=;
	h=To:Subject:From:Date:From;
	b=RAmrkt2qHM8qkMCAthqQA108n9jG70yu9Uhx23ulnSbi38TGo3A/20YR5b7hXCM+X
	 4SAOuApo664ONs32/fJL6gpBiOrnmQ2VkB4ienDVgw5HzVVHb6apc28lCPTuw9kqW9
	 yyzP+ArNzXZHWCxfmS085JbxXGUypYozfF7/FRzh9V2mzv/PdHyq/X1LSghY6i3Iam
	 5mJRtmoZMjFdAmEOfVXfbxdlAmfOjSWYA7p2xv1PnG/7CmP5GYHCJXu+70FQUcNrPA
	 3qu4G8qrU0sdLFrfQQfRLxIYfRpgkUhTIy8a2w+JIoioDZfhYPElaV+5CfpVFku63i
	 gRInKFCoroSOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA608CD5BD5
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 13:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177988875368.30311.6778657286845623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c72b87745a1c413f1822da137cb54ee4f2d8ce90b6ae8a504d7ded06d8e745c
Date: Wed, 27 May 2026 13:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779888753

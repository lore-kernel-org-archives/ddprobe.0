Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DDC078F34
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748392794; cv=none; b=Y+SMAWMRPjO3oPgfv5XIh9jyVJo61niFGAFp0217+9aKywtSXzNkPi/zqQmRnF7dH2Xdc9yKfQC4G81PbJBsNOvYEQMtlO4tGeDjyp6gEqayNlVaEelOFR5+8+3xsoTzbB5bZcrdKTkZmO7z2b59grFQGhGXf9Prep+7LKFxZug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748392794; c=relaxed/simple;
	bh=DBgwK2CT5ePF/ddush6zZIyXrJxcADB9E8u3ZBQReRI=;
	h=To:Subject:From:Message-Id:Date; b=eO3XbY2837hp/4Cn+5Yg96I7Q9VkQ03zosCaHU4nA7VZZUKbjCuvorsVZb8UoiRolg0taz8u4Xclcxu15SqXp6p+fAwswbQss3ChMiuVL4cJ89JvABlyI1xX6NIKLXDEELk8J61wHFkoHiLV/X3CIfYf8fs2hJyTXCw4mIob5z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hFtrUJXw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hFtrUJXw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81DFC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748392793;
	bh=DBgwK2CT5ePF/ddush6zZIyXrJxcADB9E8u3ZBQReRI=;
	h=To:Subject:From:Date:From;
	b=hFtrUJXw7Gguo6dFY5urHcTz45EkOxn3BQ8ClsBE6guiS50au4gzh35P+6dFYatSW
	 To/XnarPGkHZL7e5DE87pOwBn2Bzl9A4SyxiOtNUpfWpPdKZjWibf8AaRX7GP54p9E
	 QZQnRrh8hSnMMWY1+tVTaedVNmyceeFqwauJuu2ngZoKgYVjSuJQQrU5Ibv9JQ2tqs
	 c3DTbNas6xMIXTZOzW1/gzpga1vExwWRkk/fJRIIYqs68xB0GKJoVLa+meBoMKN3rf
	 mZe1tZQtCgmBo3IFI6X7ElbXz0wLtmX/5onxOag0ZfbRFzUMK/3Xu65EVKOvGzXFMe
	 jjIiC15lSKcsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EDCC54ED1
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174839279359.8170.11787623340683537939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8aa96593ca14cc0cefe6c959c614555166b55e317dbdb82d99ff1835035cf12
Date: Wed, 28 May 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748392793

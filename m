Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1189326E6F9
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762362594; cv=none; b=u6XsMEr0RIORySFkNcSDrC6gWnolAu/9OvAmPS2FEWUWBDZW0/GhrMvAxdzqocPPvUjz0EnAg8ufNn1+IX06FvQObGpGtbYrhoguWyAsiMNdfsb/Ad4GAYffKyNXvW1WeofBwxE2GuM3zSnRsQCZOfNwEqaSpxl7Mvc5/EMrdQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762362594; c=relaxed/simple;
	bh=U/v1keFTrbwokjSQNFSSDoR/xm/KCbosktEvpvOiIYo=;
	h=To:Subject:From:Message-Id:Date; b=dMVJdKybr+GlvbJ6r1kQV+1SdycWSMK3tjFOYGTIYv08lAQvyT8yoNCtElVhzNpHCEUNZD/huS+uWpSZhHx53iygICytDumpIOBDdm8HXj5Kb710LQyy2kyRWdvLLifmuRy9aVBcSjE+vZviITk7gCgNgHaD9gl3A+Ax/Kzjsa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JMxfZ66m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JMxfZ66m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49D3C116B1
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762362593;
	bh=U/v1keFTrbwokjSQNFSSDoR/xm/KCbosktEvpvOiIYo=;
	h=To:Subject:From:Date:From;
	b=JMxfZ66mLGhx4BcDengl71kx9mERHGEOgcaJC8/zg742X0IBRjc8GepO2k+0qAVse
	 gDQ6QpaiGbVs2Yctr1Vv5Ijy8BtDR6nUD6rxFu4eCWpHS7eslIpqgoocPoHjR5qlfP
	 m4hFxaChmzzh/F0jiSiOjROskMkMEbsmy9C7nQtBoRw0Sj/aBt+NgVav5J5TBL9a8+
	 eiNEjInt2YZN0LJXE3yojz+rRZT69/bzHLiPva1WaRknSsijBocCHA80thjjqMida6
	 6sqDrAhXexwwTjdZjB8fYFUR4T0Sl2JvNZtRDj+s93wKxKxzS11FeHNW+AfDwBlVY4
	 ttvFXDrrbiHkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E01CCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176236259358.8558.18021202705178394982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86286579fb9d7491fcb95e7d153c3d9d387e2476382889d0821b11266cac8722
Date: Wed, 05 Nov 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762362593

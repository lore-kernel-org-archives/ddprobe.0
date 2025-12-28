Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 317923B7A8
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 21:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766957634; cv=none; b=X8HOX9VSlqvYhUAuy1QNw+eW0gSDtO/s+xV+F2o1+u0HYSPEKDQ0leVFqRTKlEIm8SUH97QLE5xLj9D3JKRj3qbhIgZAwtdQb3CH78BldqqxwZAfh37z4nVzpgqSWETYvl8bAneNCft5FKQ7+hxvAuHxIruaeSvclf46CWhoKhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766957634; c=relaxed/simple;
	bh=AmT69hBQUsv1Y48QL70bTlLbSpwSJmdopz8qeBKXSPE=;
	h=To:Subject:From:Message-Id:Date; b=tPzQ6JZlHvxqMPlF4RxxgkqVHPJ+lbVYgLZDTCESd2C39gG1gHyORpKPKCr/382HRPx9uGXbP/ryIhrUyJfQCLCzGhEVsiRbAZGGghIXHZOTPT/rwY4epnM9oEWJVZChSDlkwiDNryMVBpN5qpQvrxdixJachO8NfLw7W4S8AM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CwTTuYmF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CwTTuYmF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2B2EC116B1
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766957633;
	bh=AmT69hBQUsv1Y48QL70bTlLbSpwSJmdopz8qeBKXSPE=;
	h=To:Subject:From:Date:From;
	b=CwTTuYmFttMoclw5k+7ln62ti49fRm20q93tWD4yLDiTgtKPCErlCN3+AstDmjWy6
	 NiuPrXvNG7vmTJAhx8NvUdhyXkiV7HbY/FsLz+4M+vJuXqaDWqU9DDSp5RHBtowA8m
	 Gzr+Xdxqn3ljj7Nn325y8vetkR9BGXRALfhRBw1NWbJfSlMCsw8tviaAkDb8wPh7HE
	 6InGev4Hkxr/gDBdSNjQNV11Ud5qTzLGiZnvvynXtulDXJ9iMLRYExtL7PlhRTDwuN
	 1GbSsIsWelOAgPW969b8q6kwEzMNSQMSCMzCE6wLa6paFX0QelRm216Y3N4e9ip0DO
	 BMmNypxgFZP6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ACC2E784BE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 21:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176695763359.7753.12540861312316144830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 215aa9353e6ec827fdc6fa4795cab86d40f9f29f92405bbcd84c2bc70eacd64a
Date: Sun, 28 Dec 2025 21:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766957633

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D21BE4E
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 04:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713329963; cv=none; b=HWh2HkIXxKvg7EaGlhdnsyEdrrXrwGhNug6qP/anzac1f9a2tkCyT49aJ1mwdq9ecmuANInIMtRuBmFKoy8qv0A/E8LoxDI9I/7V6SS553B8iOk0ausOwIdNhoIxG8dC2V3qtP1NoGtiK3zLFIEnOK2utxEx9YNrY1itC/yfVEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713329963; c=relaxed/simple;
	bh=0iMurvMXFGhgEginBzVaAqwlp+RHSDMk8CW8DRPp0Lw=;
	h=To:Subject:From:Message-Id:Date; b=IuRXBtweTdmxJ5RJeimuwR0xqLqF4PgzJZsoY6ze7qM8Xqw1r9jukv7ScNcbrKdrFrKJib232BozbfUxljBNJ/L7MAcgTDqyqX/CSNdeU8znf8o52fd1GzXlqKUaZf9TlYTH5zBk1WtQiX3i5Emn7MLb/N//WJpkv/vhZU5l3W4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H/qLxtjS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H/qLxtjS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4661C072AA
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 04:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713329962;
	bh=0iMurvMXFGhgEginBzVaAqwlp+RHSDMk8CW8DRPp0Lw=;
	h=To:Subject:From:Date:From;
	b=H/qLxtjSF26apV7LgYfpoMnI7jCVpuXwXe+QT9YnFh2uhmfNUgeFKXwWVhC0qw/4B
	 I7/x0okaPi9oRbwtk14E6RmNSHmq+HCEkGRtuhN96QbDpUPwotOpDY6EYHKBPVLAFC
	 24RQgoO5Eip6grobrXZ8dXYtaSEZ12j4v4g2a4vkUXGGEQisNyVhp8uETeI/k8vJwC
	 OpTy7M489g3rQtdSIwErOxp9HlgXgkSzxVhXlATvoZUY4TVbFOouSZr6aTNsH2wb8S
	 qKNhWd34mmL3TBbE28AQ1ik5y+qtrEYNbexW/W3XvziyLGtVn6r72cDm1wuH9Bmtj3
	 vEFUxSMILm1ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1611C4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 04:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171332996278.13712.8008420414566668319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8aff702105cbddf0869c450b2c702e2ba05074415835c11d890e01fd464b37ca
Date: Wed, 17 Apr 2024 04:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713329962

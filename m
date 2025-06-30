Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3626F126BF1
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751263794; cv=none; b=ln0N7YISghTvQimGeR7a6PTW5fS4kB2prgrjp/9Bnhdzl8xJ0XQUstxvutwxriKcj8MIAreGmzmok6fEhHP7GtZZbAKXZykg3YxIPkDZaTvkHG7EWwcbxy0UTEvpw24m1NlYTITTX216yAnCPgtL2HZZfk5c8M8DS1YfZkw3D3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751263794; c=relaxed/simple;
	bh=tiI52G7ru5sQMiv37i/yQxJb0CS5qPSgbgE5pr4xppg=;
	h=To:Subject:From:Message-Id:Date; b=Q2Tn6f6oZ3eSljjS9tjTILb2mzccEvBGtgXnfDa1I0MPWXANOIaaSJvNrHddjXEd3RfDaVHz+nR4fCQC48q5Hi3v4dZ/WzW/wmXSnbjBZIyYRVYPCCLn04xg0G68dOc202cAKJYNiqD08LbKMNDDU3Exe3xj9CH+MNP52KAn7qM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VZZ/Dxwt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VZZ/Dxwt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BE4C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751263793;
	bh=tiI52G7ru5sQMiv37i/yQxJb0CS5qPSgbgE5pr4xppg=;
	h=To:Subject:From:Date:From;
	b=VZZ/DxwtZXVok9GSlQxiZzkccn3t3h9BLXUhSeVa/1de6rrvTiiDuEMFbLSFKfWKp
	 QU2zZOhvJR7G46eBr7jRgFewaAzgY5yNM/z49203AVN8C8r5a0M//erMNIpgpNRySw
	 amgmd3GaV4hms5scy2S3KxnrPPJzI1ylYGR+NaaU9hh3fShQ1fxYdmjJqK2kBNjzGO
	 xtLgByXyEu/t27DG6o3/IWEyLP26NtpEj5dmyL/V5Ya4hbLYSzhPzkwdpT4yNJkBWF
	 2Y/BGXC1nmXA/AE8w/0E1y90n9zpErFjXTFcoVTOJmfa7kBm1cQ9/mT6KNiLXKwGv5
	 5CZ4SVQWgwvcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91343C7EE2A
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175126379357.4775.16000800085065236413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f212f1ad35d7a5ab7888ba133f4b7207b64daefc1089f99435e0c7c067eff2c3
Date: Mon, 30 Jun 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751263793

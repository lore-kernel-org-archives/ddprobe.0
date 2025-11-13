Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FBA435957
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763059794; cv=none; b=rWJZ1zD2SilG69Hhjc2iXSMcGuaZcxB+JeVm8n4IdlS7wEt3P4xr9fJoe+Vssmx8WxTMxeV+n74bafinexAn3X0dcst1Z0IRTXma7PCMGQ839EUWSV6/4PO5HEja4MzI9nRneTtNkx+BGeobfm79/wNr0KJ5i1io5OLtXQWYCWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763059794; c=relaxed/simple;
	bh=6vf3T5wKHi2dVejKh9veyFHY08hyHyFxxulsfGE4nXM=;
	h=To:Subject:From:Message-Id:Date; b=O/M/ob3/WarsjAUURADunC51sZvQsbTncSNk6AcO2QZkI8SoNB4mLkOcQqpNw25hC0/M+ICPE0rgV+Jjv0qxsXLUGLfgHq5C3ahAplw6Nk8RNvwsepyS9b8iVxxiq5uCvNpmXym37NL16o14d92WO6YWml8f1QhJiUq+J7QHnbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CVh8Hs6X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CVh8Hs6X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D13BC113D0
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763059793;
	bh=6vf3T5wKHi2dVejKh9veyFHY08hyHyFxxulsfGE4nXM=;
	h=To:Subject:From:Date:From;
	b=CVh8Hs6XKSCe57f9OtEzalVLKvInLjsbYvL8VklzTCKcDWgKz/TDMHPwvrDln97qI
	 zuihr7HDF9UFYS1NVgtW4wKONlnqKtO7qZ/gQ4K5xqLI+GZ5Cd03AcnfNYz8CecDPw
	 o1eRqMKyAEXnbsloM2EBEtav1EmC8XV/X8IfoBhVbuQ0chv+vESJDcjTheaQBpWsMN
	 CBeLh0SifGveKZ7PJtoA6k2E4y8osSq1uHHW8oFTvpspmHxxOrC5S2QlPY3iYO52+h
	 MWpsp/rGm0BJqNR6Akj7+IwZMda7nybQqdI/OYjQl4QnLv/EcVLedAiPBDqSD7WAdL
	 aMD882zStJNlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9121ACD98CF
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176305979358.17396.14206122961250578780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6f5b995bc029910a2d5ff0348222095b7252c4eff6005bdc5b3d6ceaaf77478
Date: Thu, 13 Nov 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763059793

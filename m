Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303102561AE
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756880994; cv=none; b=uybmTIilqQsCPZZzKCfwKik3VvG/mVd7WF7L1gAOvcM3X/mYQ0c4BGFYSVRLEvp86NNU71gJhGS6H9Y3U3rrS6U2xemz+8/MuK7Gra82HnYzl9ZjUR4Qny2uNdg0K1eQcVp4g2nQmSjYBgwcFK53MFCbQ/I9t4I1yZYFxv0OCV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756880994; c=relaxed/simple;
	bh=duJNBtztmNopw8TFC88hXseCKhcjuxjfX4xFNoxjpj0=;
	h=To:Subject:From:Message-Id:Date; b=T/DaYeqg16rtzrGZ9i9OQI7LyZnuE1tN9PVV/tgzQvfPGXaREtmI3bO78Uf5Cp58DkKCnGzZmaMIVttjmqGs3SvOycot/ArQP7MReksuPk/PCVxPCyIPm53RXNSXuveDraZMfy2B+D2ETkGVgfkPhOFfxOq01qjpFATrCEeHeU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hxqme1Wt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hxqme1Wt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC74C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756880993;
	bh=duJNBtztmNopw8TFC88hXseCKhcjuxjfX4xFNoxjpj0=;
	h=To:Subject:From:Date:From;
	b=Hxqme1WtrORIubAEMekfrv2R71i6vm5oZkkuQNZ9VZqTXLRpfCspR8/q7RNxJAYHx
	 a/uXj9wfB3tYLBGXKlgJh9S3VtBn78SuXvcvs0buAWgx4xHeEBy2P8rVlmhp8OTS4L
	 Gg2wFYf3Y+fk/Ljb/DEUVUsvJ7BTfEqSme4J7jK2A8d0MdAwNFE926pJM9yqZ9Vmyq
	 e/YObm5NlsEKrzg2KtFgp7SBXuCGB2emU1MUnyCYQJQox/yMhRS+2NfeUeLg1GNSO5
	 qAy3k8r5SKPY27cp2THUt2GBkckrQQLjAfzgcw5RcaPS35duXcTH0T9ftegpbqeLqm
	 RgQ3PirJKbMXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D9FCA1007
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175688099360.3365.15958175653761224388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64cf93590ca7b6e07832de32632ded3fcb418927089fbb18a1a74198b2352e0d
Date: Wed, 03 Sep 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756880993

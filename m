Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D5F51F5616
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737107154; cv=none; b=QFecOY0pM4gSj2ceKX+u5OnWjSTQ5Ds6BbUJ8Ny56Uqy8kJ4jg/0jueHLh+zV9xjk56LEA4KdBnWfuEKmcywoTXgXq7T6IzBHzXPbQs7RlAMcAFCw8MCOpus7TC2AGSmhbnJYvx0UvdBZSU6jEcUhZGaZYLWQAvHorHo6UnR9Hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737107154; c=relaxed/simple;
	bh=zL9XOFVwCVafgFI7t5j5hfk7BEMFrMrx4GNyoYyXlL4=;
	h=To:Subject:From:Message-Id:Date; b=umJ6lb63494MnhpEB3dnE1C0drRLSzq+MlQjJFM9AYWrxLKFjNnuuyNH57jfM3Ek2dMmTPM0QSImgjvRUXcYs7BFHReiE0MwPsQCe5vjp2faVn5Amohs+J0QOJc4UrqmdoQD345tnDd32l4Fu9sNBe7NA1ynIbBlleKHC0/nzuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JxDWURy1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JxDWURy1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FF0C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737107153;
	bh=zL9XOFVwCVafgFI7t5j5hfk7BEMFrMrx4GNyoYyXlL4=;
	h=To:Subject:From:Date:From;
	b=JxDWURy1F6JVy7dJfp6OTg03+ZrBfmNxxNcTsSOFx7EwTckkkGrtUbwq9LkCdJgre
	 iBbNfIQS9nKXByHMPXWi0YqOkOKp2v940LTIjO3kiWB097vO5ahjLJgfjQ3qSml2Sp
	 bnYG7/kTN3GV8gLJ66kH/mDKO6pbzTFvKxS76k0TRQJlbKhkkC07EotgJko3wAUac0
	 EH8vbWOKBQSlT7rfbGrn0kzwGyIi1amIsKtV/XcvMU1iSvxef//8SXAHvdGgrcGJ/m
	 VJ9wev0CZo1plpIP2XpbPmEzwZB7WpspeK4eI1pOj6vryTIN4Tp9TXkrGvJRLNjdUV
	 7LfSat/xB55RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92707C02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173710715359.21983.14680582378664575178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 121c081e722ceb58657e19672da5730fbe6c71e367362186312caaee481246a6
Date: Fri, 17 Jan 2025 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737107153

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23FB8261581
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762535994; cv=none; b=GuZXUaKk7L7fYcT89xZ8h38x8+tNfRdPKmHXnC9p9uHCvTyGVN0H0xvZItLw/U+sKZDc9wBsufiPiCGXKheywT5OOORsk0bwTrTa2cloSbqbGAtsXj3tuDhLOZzdDK0NNL0v6uH4vzSHtZOhZqNeVlGxD7iwP8pJ2oIPPQ+4NBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762535994; c=relaxed/simple;
	bh=Pj/UizdQIMVETOH6qJP9vA4ExkeVH147scctZ7gei5k=;
	h=To:Subject:From:Message-Id:Date; b=hD82R8zIjPPD6yA86rye0WfBq0gpNGDlKfm/wuK382776eFbBZjiiu7BX77Y8b3vGQkqV3u8OCgnthdSRlLtKRnHi2urZLBVQRVC1fmNSqQKK6qIr9P3mGvat+Bbmc1DtnUDQ+QEy+qKqTNHpsMYn2888AzUCl36IUeZR66NEP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dYWQRuvE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dYWQRuvE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A115EC4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762535993;
	bh=Pj/UizdQIMVETOH6qJP9vA4ExkeVH147scctZ7gei5k=;
	h=To:Subject:From:Date:From;
	b=dYWQRuvE+pAEYTEKZsnauqcvjza1RLGCclkbhSMlcfItbvy9ZtK2W/aYEDcrmH6FX
	 CQ+sd1PISbAejuAGDigoLjIdtk7MiueO9mdN/DG7+fg0i9qcYTLNhP+o9j1QrS3Z2Z
	 GMSoLmKtb8V72GkZdXelf1dq4Mu4cqDW2MhZPPeqowDu65JxQPNAhC8tlgtqMDZBju
	 iH/iotXXD0vdasLa1SeCWrZW6JO78tE4SX8uukbG8egeRrnuMQv+rRH0/UvIyZNtO+
	 bp3EoTzIJM+/X/U1oUnJ9lewM0Fvp4uN3VKW0YMzrnMChxhrjHNslndzKpY6ElDZxf
	 ZRW1Ob82a2lsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948C8CCFA05
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176253599358.20897.14973757883412722398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f802947c99b3670730cff62689bfb876009063dfc51080fa7afdc7f2779c4f2a
Date: Fri, 07 Nov 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762535993

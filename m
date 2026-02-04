Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2314B19D081
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 12:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770208434; cv=none; b=RfN/5UPafF5JxxtdWbq8BqUBuWbgbm43DT2drbrcivta164SrR6wasPIA0ww5wA2t7J7xYWnpeZYLLDZv+0hg7pg8BXS/oSFC7hQxVk81kPowphPRNI5QrqQxqMLWQYqXEKvNJ6cGtdJmkJZtBeyDUzQLoCU267DGvzcJ6tZGV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770208434; c=relaxed/simple;
	bh=As3D+PqIvG60F9Y9u96ruznlAfWBiKw6QsdLsUBdv94=;
	h=To:Subject:From:Message-Id:Date; b=d2H6T69HOjucUCr+IOOSu5NIa6DEUSIos4H69pnqnrApwzQK6rH339enBtfxuIfV144bk1cbhPuNanNdQjx5qmmhF/phhRg3Oss31Y9zy9zfk9uFVEC3aEihXG1MJTEqZ/Nvzu7eheqSfZsmTYni07urk4DLILH0EqGPepzypNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h2m3q+x8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h2m3q+x8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA049C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770208433;
	bh=As3D+PqIvG60F9Y9u96ruznlAfWBiKw6QsdLsUBdv94=;
	h=To:Subject:From:Date:From;
	b=h2m3q+x8c6G+idEs709ezkvF3p1JHXojLTiNLLJ97WZaeJjkG/vyhEODMLMicbPZ9
	 mI/k6TGeiGnC0fsTSRM96s8+YjxtvHh29/QUftPYgBVIMzbAVwZzE2pDsl4u6MB396
	 1IxJhL7AP3V59AuBC3pDpRH1iB64adrK+fUyz6IiyMDiM03jfy94NIHWNLsnoZrlbt
	 /L3P9vIGrnoFLeH+0Xs8Jt84gVUp/k1yLgNQKY6LZobnNDiK26k0ke4aJ6EA7AhGRr
	 j58vFH5B+JEVOYCZreS3FxMhN8c/zN5/JvYDwUf7UN4VV604esKDQrtOqCuQ73tor3
	 4b69DAoPJZtaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98495E95396
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 12:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177020843360.25720.7820183293179704653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dc0f138992b12a96386ca1c6bc8fcc4bd30e60123830631372dc546898cb428
Date: Wed, 04 Feb 2026 12:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770208433

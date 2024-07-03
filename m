Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55AAF17995
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 15:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720022123; cv=none; b=om1pNEt51rtqhGlqW8DPIozOAHqKQWhShuePttiAmQxv311yQoqQ4s5Sx7SCeNCsMRrPpRPAHOm6S+L3VZtgT1TVQ5l3ccKWLvAhlDTZFHw8D4ceVUzMsEPH3rdM/8dD7tU2aii3zuR7qrFT/YmTb9sqaYiWXeocuDq7oNrEj88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720022123; c=relaxed/simple;
	bh=rLDuAB2WbDG0pGM0bg5rIFIgmGwlfnnrLvA4POBys1o=;
	h=To:Subject:From:Message-Id:Date; b=YxmxEH5RAM1q893Ijq4W2SRUjZaJiR2uUyyY7j66mGzZ3Ye6GbcXUOz58EPHdg5XdPt0sqta01rf4jPz5e3AmcAySKKy0GaMAL/Z8SkPvl2Guy9LSmYzLsJw8EVyX1MRFqnhYAa3rvR+qWEflo9n17CLK17s4W7rMbcB5CscJ48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e7+44chi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e7+44chi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5F98C3277B
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 15:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720022122;
	bh=rLDuAB2WbDG0pGM0bg5rIFIgmGwlfnnrLvA4POBys1o=;
	h=To:Subject:From:Date:From;
	b=e7+44chizHgeGuyFSWoJ7+KVeR6TFcqX5iIdgiRnXyDKjcLacCC53M0OUAHYoF6Cr
	 mlRB6LoaJuKGILm/nj7Ku44Xu7JiHlyncSP1nLzg0nEvbnlo3bNZKN0s6Gfo+Mxr2V
	 rU6oV9kleEq8KEwAjxN0/rh5Jc5w4k0kv7QL1xTh4Nv1OgHAMC37ZyF3nOq+K3T4se
	 tSxFiysUa1XH2sFNnduZJCWAhXBoRkVVkOK0JHGpPMqkbRefR8BhcJlHjbGxDwzIvq
	 gkywOxipJOuak1/95yCPcECIDfnUc7aEHaTSaDmF6EVn8cNMOuWKc2qQr/+/lXVGxI
	 yitsXTVGRYbNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C74FDC2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 15:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172002212280.23182.7838191903157250285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b048cdb7546141f04e87d792d8917dccb7e6c037cb8f209c4f725667b879b4f
Date: Wed, 03 Jul 2024 15:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720022122

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C81F017DFE7
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753996793; cv=none; b=e53KRcCIGise6HyBMGPY7CIYLpoIPmKyo3biBV7b8u0ROpGF+6RXiTGb8MjfpIHqqWewKn14f1JQt63IVM0Hl7VXsrQtwm+IitlPLLSwSEGXsn1Ts13s2jWafD072ahIL6OwscYAPi9bVCGKkp3wqB5ESPHqc/213HnJRA5PvLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753996793; c=relaxed/simple;
	bh=k+H7TU8DeggQCDcj2a8+sT36qZ3Ji3LMu0N0DBRfjZ0=;
	h=To:Subject:From:Message-Id:Date; b=TlpfZuqUSO+XlZoifQrD+++jtax54cUUqggoUV7bs3HrgSYQWWu0tNfQb0/qjTC9SWYcHJkDbn4n8RTUevKxsv/vWR2nVk+eEDWjamY+rZEhr3toTv7ADAZJmcwEWDK1aiEvIdNh3zQR1C9caPIWpGAqhNYaEn6OKzEYC9BdDuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g5YNgHok; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g5YNgHok"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE58C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753996793;
	bh=k+H7TU8DeggQCDcj2a8+sT36qZ3Ji3LMu0N0DBRfjZ0=;
	h=To:Subject:From:Date:From;
	b=g5YNgHokHwmNebkqmo7w63xeZ0bFDJOIuFWMxvWRfru9lKef8b3z7G8+MMZoH1JXG
	 fY+nWo7Ba/VVX2+R5fLIyibHff7I+8U53XUxjPH/DmM89d8VaQ8I3lwIJXTmEMzreT
	 nsk0fO9F+g67/71IjDAaL7IKS1DNdRjFyk2jQfvAdB5F7wZBu03KqYYRGubvirbWo5
	 E1ULFw2CKlrfkmU6LwJAoFMjLPnLfm3bugkMDI+e1WhNNDYjmJhXsau/elVPfaPK0j
	 HC8vRC03nO2Icjyt7//7E3uyzaamFBlOlO6MsporxIZCRxc4ouhux/ngJ7DSPB6B2E
	 sGoIlAg1zS1ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9038FC87FCA
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175399679358.8659.1585563570036901915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e512cb524bd144aebe8b6d3c8f32423a9209374cb3ddd7a3999a20f7ef14cef4
Date: Thu, 31 Jul 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753996793

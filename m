Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48BBF21507C
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746832796; cv=none; b=K5dT2TjSTPr4TZ7g+eeR7u8mdYGlx1nczQbX40D/TM0qRRyDoN6Ecjm2abhMYZGqKx97HoMIDNs8dejjHvgB+7t10qqhg+5iQ3+IKlN/6ZNzaIgpSNHdiSBhjxpa784sk7cbA6iGe1XAjWr84Pvwn3vdOd7K+phzLcsYJt77nrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746832796; c=relaxed/simple;
	bh=FWdvjf40YFd1j4ToQkB3VVjS4aSgpL0BuSVBdamCOV8=;
	h=To:Subject:From:Message-Id:Date; b=MWv1LBMwftQ8nQk6rc5VbIRjl1d260vsJEgVyw6/4La+X7j91DVw4Hm4NM/6GfaFLiXgZTeONR0X9tARGiFI/mkMnPIhdA+8AJf/2acXurRH2RZm8fDv1KfilcMQdS5yjhvo1ZWO1rCITLDYZWgt1dWECS4kYMVkA0T0sMzuPaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uIkf1VvA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uIkf1VvA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7993C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746832793;
	bh=FWdvjf40YFd1j4ToQkB3VVjS4aSgpL0BuSVBdamCOV8=;
	h=To:Subject:From:Date:From;
	b=uIkf1VvAXYcvqxdhJluNnaxf5TWvcb3o3ZS89AmpAZGvYxwDGDsghJ++Ykzqhqp7C
	 AykFGJVbw1StgsVS/w4r6YrDiNAn2ZtmoXb3x/Go2yrbzhvqvvti/dGfm1YDRZeBHl
	 xWJ5/Cl0Uen3mzIJvXmBnFYYndzjB+79Yr4D2Yle8sRvLPb8SrWOBtjEAd0CZKOHVu
	 scRCVxvkopbHPdckItpAI5vdLZxsk53bcbBJCVSjln8etgD8JfNa+RZ/33s+KyGaXi
	 k281TRTh7OEIykMP+K7PeRKnqVmTR5S0VXf+VTh+FQ9YEdIZ6/pFyx7yZvi0S3LspV
	 /eMZULz50pctA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F1BC3ABC9
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174683279357.29204.14242339481441400689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75f19acc1d5cc0d4f21f697baab4e81e2728b0b939baf294cfa01d46d6f9dfdb
Date: Fri, 09 May 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746832793

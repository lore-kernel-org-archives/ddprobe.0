Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5F1A2907
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 18:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708798697; cv=none; b=BZq4F82lcjbgPQEfhtfcLlLT0A/xuHEQ25H2M1406Opq+woBi+AavbNvHSBkBHiOpg/8pPX3BCU3QE1GSyLxC0xe8l+6tUX4FIDf6hcBrc0Hab3WoBqGx30Jf4wbfoTgWcvHWw3MZ1yCDZFxDajXr7EGjUBOHuAWvXHCZ8UB1Q8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708798697; c=relaxed/simple;
	bh=qcklET0bU+5lGdlzPKgrzQRvE5/VLjLakE3nFK0ynnA=;
	h=To:Subject:From:Message-Id:Date; b=QBAKpYreTWgd0j70PB9kkMA8WsaeotRaSkuejfdbZpmj4y0ChWO5mlDWzDkzOP+197uxTbKKul4dzPrVuCrDUXwXrZRVFlPmvTjB1fR6stXV9FO8dsLSi1vsqkLWHy824uMNaAZgqFIdyZHYIkofxiurtVXb53kAvr2HVzZmBgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SrY2c4s4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SrY2c4s4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E676C433C7
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 18:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708798696;
	bh=qcklET0bU+5lGdlzPKgrzQRvE5/VLjLakE3nFK0ynnA=;
	h=To:Subject:From:Date:From;
	b=SrY2c4s4xdzOQy31N/ynAfxP4xA15+k6s/dBZ6szz+9aspabPV4e/t1GZucoY1DRI
	 ph20zTnbH10RtFCVAdqPA5dIgj5GFnAkLLmkjCVsO1RGMvtQpAbgCRg/191wL9lIyn
	 /H+04UiT88liizkPS7rDlKiXGwoM8IVNWKFlOILstQ/bTxvgepFR4ev9Nge0Iel4cq
	 /v68llSvHb1CWR7oggPv3OkGbg23IUENz+uPzvFlzS6XI1+AP3oQn0tKlpmSE7zMa4
	 f7OQlpJKoAcqaEQfzjAUhEmtwzkinCY2zpE9Rx/Utmd4bydHD19RqcLMnNPZbbaNcC
	 gRnhW8hiZfoBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62595C48BF6
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 18:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170879869638.11399.1827097394203302550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 287d76e723e3267030c703f25796e29e8cee99ea71afed0744b5610f8d9f4ee9
Date: Sat, 24 Feb 2024 18:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708798696

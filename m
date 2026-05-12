Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A4821DF980
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 04:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778561434; cv=none; b=RSk14b+TO+e9GSklsXGAzb352LJcQCD/AW6u/7881d2mMxdu2yStc8GNL2jhkI8S/MCmTuLsvAE07mzWSTDKQG2TzhziUTqwML3Igl1q+q7apWy2XWOrIVEfAgC6SzWNdKGHbq0nTc+PtO7BB4+jRB06gnrYTllJ6+5Bhf93gyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778561434; c=relaxed/simple;
	bh=1EAunY0mT9f0+wlYdgfuqBOCHbEzuquy1nKZxYa3qi8=;
	h=To:Subject:From:Message-Id:Date; b=dWCLo95d9iPYpP7H6TX7prdLO5hHxctwrWaOdJyhbmJqp/SE5WrP1B9widh+tNaw9P7UaAq8DHSlfSutLm4tlgaugfV7Y5c503/DLbZk/k9R5EIlU4GsTrM0G0OXXHM4TVuAPeQPBkW3kkY3sWWqC9YIVJmm68XDVZSdHwn0pFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VQpu5FoA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VQpu5FoA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8152C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778561433;
	bh=1EAunY0mT9f0+wlYdgfuqBOCHbEzuquy1nKZxYa3qi8=;
	h=To:Subject:From:Date:From;
	b=VQpu5FoAJ7Bw1ZVZO0ho6rf1O4nlvhnrVc77d/DQoFwe6k3G4JqEeUVfcB2spazWS
	 uZPi1gQvi7eOvjUrgS4QDN8G9LK2H81Z/GYLet+OYUXH1n5jL+rRDi1TXpM4WDqUus
	 4kUeVzZUJGr11eBDwPkL/2wfiid/W3p7i6ZHocGssvfA3zlesxvYAbstiI2Dam8Nyw
	 wbVZM+zUfKsWMFa/9WFIQSAu/a2sZ69riWuzzPRfjgvwyaZ1jgSiVj9Qp3Oksx7fL2
	 GnaQRRya7n7rK6Nzf/k9ZbuVS8ozeDSuHavraeCaayTPUcAdpxEk8FT3XZBLY/CadY
	 GGJj5zEHKT5xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F4FCD37BE
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177856143368.12989.4601941043817587649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3ebc63b9c4488b57161ef503cc3b7ce10b6e79891a18161420b14e039642ec9
Date: Tue, 12 May 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778561433

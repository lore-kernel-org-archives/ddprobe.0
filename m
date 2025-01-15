Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42861156880
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736916354; cv=none; b=fR7IZGwuHIOZpSQ8TRlgTj0HP4/h3Z2i5joHz3Zfg/B7Kf67WdhJHo2TbtDEIz7PG4YVtwtN+Ypugdyw3Llr389yn1M1HpZ7sWZwbSiX5Qnlsma6j8stK3FN1dfSYUcUupaH0B5WatTYDZWwUer+HINrDyBG9ULujLHTGQDyXjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736916354; c=relaxed/simple;
	bh=i3okx7ZE+uGntd9H4QbRafcREQuKUhC6nKdTKJ7G+oY=;
	h=To:Subject:From:Message-Id:Date; b=GyFefRW4AYN4qPqt+dHfbL07o/UmlwtIMHPWbdMg4QUdg9uBFv2jNeMQEnh9R1Uw3HICaIGxTalxsgWI4aTZO307iBCsYxNy0/wtUbOiJes2uMFUcWoBJLFmU6lrS6f/weEtKYWJE5rkdO4CH0q1PV3/+N9MUly5XvycCH7ZAvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VfDhuDTC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VfDhuDTC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA610C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736916353;
	bh=i3okx7ZE+uGntd9H4QbRafcREQuKUhC6nKdTKJ7G+oY=;
	h=To:Subject:From:Date:From;
	b=VfDhuDTC82yIxXT25XyzYELKywcBxJCvz4Z3srUC09xyxiXMy42nMDNuQz8btFWQL
	 kPkt5hm2gfi2QIX/cSkTNfuL3PAuJVBwMZ9cgZLxeuZI8yJvxLKrrChY6FakocErpL
	 IPKZ2DDL4TFgO+KuVu6veWqIwA/zajIhO8BJU5WkklXSA81KO/KFTnfPK7ufHN4Ju7
	 V12HBDd5Hjvgq+c9rGmNm1IWgLaYPfArN1Nso9gALkc4+xMZ9/Wd+S1r/2jM8UmOlo
	 h4SbVd1VAEjC7WPajPaAMJHIzBwsxa4nx7dWiFmqSZCBdC7p09clNwLeCr+3pRKDS3
	 kFZzQx0LvyWEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941C7C02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173691635359.4447.17919744771974055862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d22da2e4882e118c15f542c04e1b1155f8c94c9f39657dcaf15957649c0d58e1
Date: Wed, 15 Jan 2025 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736916353

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F10271427B
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 16:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710866897; cv=none; b=FNNxPYKYBSOKg/28LU7VuxF4WwESpoABE0VxtVYUBQh9CdbGNGxRHMQGqbo7jMU0oiRH9IJNdVZAnlWRQWQKoBw/Ken8ZLEe6hvO2x/PAzxMSzBif8hw/nZvZEKRnlpJTA3PsbXIr6Wp1TcRRczsnENcRWET5NAu92D1z6sHoio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710866897; c=relaxed/simple;
	bh=I4S3btgOiHcWlLDsse1KWdXz0y/9GGjpS1sukpdL5WA=;
	h=To:Subject:From:Message-Id:Date; b=Zs+uQjbTG1lkLjolmTiSongR89Lnf2le9KQwjAkFJ63yDivnjRoLqEAZkrt03kxB9QpibMJsrifAAAJJj5yPBcQEpVOGfqSkJfzKmRs84pXAJ84/i/UzOUoYgDArbbIHQqvSo7pYCqN60+Ifp8BzE4PSl2yTFwHqEwiqmnELNFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jzkeb387; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jzkeb387"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7803AC43390
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 16:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710866896;
	bh=I4S3btgOiHcWlLDsse1KWdXz0y/9GGjpS1sukpdL5WA=;
	h=To:Subject:From:Date:From;
	b=Jzkeb387O5mtXBeeulEc0cCjlFIrgYz9iigsmFD3TlE+wRJoAYYXflQCSBVWk6hya
	 PYqKn9snoyTpf36H5b9/oPOxS3h25JZbYtdzKP4zUX7dR6LkzsR2AvIPcJUgHsWRTU
	 3vJaLkQRcgyR9311o1OwKIBa/WlLtUzmJoHwU9PhwbLYmLPqgytUIdYBGQxF1cVKFY
	 fSsmlcoNxfQyfsXASxO01saH1kcYWbBIZsHlgzYEVVoRX6tXCgPiSaERJimZD8VijS
	 8/wSWYDyFfdmcH7bEihZW46u6n8+FepDLTWBKdH30Uqz6+7oGQoHAFCGX9TSdJ+Tqx
	 zYxXFF2cmLOJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64B28C54E71
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 16:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171086689637.5982.3435414562463367763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18596803ed43a11d2718e34d78d990630d23909bceacf4ff5598767a8ea5816a
Date: Tue, 19 Mar 2024 16:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710866896

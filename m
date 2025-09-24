Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E9512D6614
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758704994; cv=none; b=Yr9/aQ3VZtqWraj3sGOjiCcL08Htlv/uAlsafMlwFB/OTH0z0Z4Z7uSKkAPBD3YBNy329mBepDOS/CAaJW4F4FNzg4e/XPnCHTl40F3GQeH6h/9STebATXr+CGpzFBGPm1MmFgcjPWJJ1c+372U2Y560eS/MuykKbkNgsryxD4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758704994; c=relaxed/simple;
	bh=Y5WtRXQpKDJOefXy53RcEfUAgYz2uah8F6P5nH5hzsQ=;
	h=To:Subject:From:Message-Id:Date; b=aeOcP7T7vwQRioGwN+hHLGcpIuj76cwLY6lGIlwsmk9gaSzFSOo2YvQWeUqfejeLEdMaJbtD9i5IOcsX4Qqgt8/3fGW+qL6Mrvo66DuS7cVomNE+85Hc8UVcA/NQ/k34iqNtcA8uygxpJkqoRVrUOW1ODG5jUaFYen6FrdrfFEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kvd1dAzY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kvd1dAzY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9A1C113CF
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758704993;
	bh=Y5WtRXQpKDJOefXy53RcEfUAgYz2uah8F6P5nH5hzsQ=;
	h=To:Subject:From:Date:From;
	b=Kvd1dAzYfBck5DFemOt3kbTyq12WoNGsuDhNncqF9IbUxTdXAijDvgCreXUYvlRg4
	 cdYqkaN7s2TR6e7gJzkPh7yMc/OjAcLZnpL7T6dB9UlOK0qq0H4tZnSKiZnXUOO0rj
	 UslteNwwjNNm00cMS602XNwmke1T1p4B5oj/ICjUrTa22Yi1B9IddT7SYsxCUmu2bD
	 8YwZ4TyiAD3Te+vYvBAVXypQI33QcElPUhAxaj7EfYNC+qOt/D+oWuWWl47F0c+3EW
	 NEYdxLfJmJfn4Oh30J+zGtTZmZCIrF0pKKth/75YQ/bNpOasY5YUf2cR/AWQIzPQrR
	 OuSy4XWFdJyWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA3CCAC5A7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175870499358.17809.5684112159980980770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 119ab1776c11017e7de67201b6b3800f70f3bc7a5867875544805830c178c19f
Date: Wed, 24 Sep 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758704993

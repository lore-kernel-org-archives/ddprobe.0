Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47A071BC57
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 11:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716983663; cv=none; b=Lloyx18XwhZbLhZmkfv6+PV94NttrjQi6+ItUXNVO+ZNcZ5qBv3hEz6Rz841SWN+FSSijJg2b1wFyd3iTUloKL9uERFzDiPQ+WjuVxavtlKUsvG4TAvQh/uCcRPv8MAWB9OlN0dpay/BR8WOyh1pa4qu5NVXkRCvj5k3gfxwtQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716983663; c=relaxed/simple;
	bh=Rea7PuYDEnwY4OMNmh/iHpizNBikYnZF+lFklPhbJIM=;
	h=To:Subject:From:Message-Id:Date; b=RoxksXbOVafhWIdktfP2Y/VNYkdwuv0cfeJXdPhNwTlxugzqSmpAzxG9YhHLM4xfIntte7Sp3D3hq17wMHpuTI7WvmjGaInjm7PnwYP55fXIbLgRYdRgrPwTHHsZ46Cx7eHK3/vLvYOQflHt0qFSuVPbzytEgSCHGgITt9uq+tY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pKItK3fW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pKItK3fW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1464C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 11:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716983662;
	bh=Rea7PuYDEnwY4OMNmh/iHpizNBikYnZF+lFklPhbJIM=;
	h=To:Subject:From:Date:From;
	b=pKItK3fWQvpUMuum+cJg8+Ds/F0/rRovLRD2g/3iFErlCoWMQkuySOLc205Ftb1in
	 3PrRpU0ICO1hT8bSE5QAds6URhU2fos03i4crRS+ohhiwRqYstAhb7+iHJggful4+z
	 8KXzP4vhG45R6Z6DQps36uEEXLmysg/txw1q+b76RQJwbkKJNdUyyiKgVWeBAkNsa3
	 i6s8WGJLEF8ezOW+jGmLvZk/CRB52SxEY3oaFIpUzGwDlcW2MikP/54P7oZT+RRuAa
	 rWGU3ElWm1n2xo5Zeta/dg1TwX76NM7TXIE+a8UZF5zPh1SbzVEHiUwvaNifeXwttG
	 mSwhx1CTeW+eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC044C25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 11:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171698366276.31688.1825268315163786200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ca8bdd8857b06fc0fee20bf4b46c59ebead7257b09e35e21d3c3c8c263ad707
Date: Wed, 29 May 2024 11:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716983662

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284F12D3EEE
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760000394; cv=none; b=fKnoVhhqsVpj85lnxdKZxFGvHsAjIZ/KSsLJug2ICeOgJrfumnXIhXCYDn3NvZl0rknNpxaljTCJ8MfHqPDN+XnfFX9th/E2y9o+Io5zKjAd7RKgAJXkf2RMamDARDZz1P/5561eg17z4H+aIQHG+KuzUFNw1ArmGgJ+Nkn6aT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760000394; c=relaxed/simple;
	bh=dAEuxhCNIg5rm61h0cFb2U+jHtVVs3+HFtbbj9doreQ=;
	h=To:Subject:From:Message-Id:Date; b=TJMmCwtOXEvvEmXkoLUaAlPi5BNr2U6cQq8ye+0cqP4awe3YPXQP270qa84zrnyoJw9TcuBXScF+gODgj8inNgLoHZ8AGDdkwE5Qejfdcd1PhU/8oyL1jPR50hNRVt0sJF6mmAEulTeDXl5N+anq43pfUk+RamfHTDwbbbIihF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fB48bpK3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fB48bpK3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E0CC4CEFE
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760000393;
	bh=dAEuxhCNIg5rm61h0cFb2U+jHtVVs3+HFtbbj9doreQ=;
	h=To:Subject:From:Date:From;
	b=fB48bpK3v8CebLYY7JMhuoZF3JvXYyQObafAwYDTkmXr4qEtIS10cgR+13WhMMk6T
	 bGz970ZkvZ3O+wTjk/9m05IIce0/CwJOwIvY3U3gUCGC/6LqgR8BGwvZPQ3TtgV0GZ
	 Ou0gFaFhuTHlwXccki8WJwkdvOBVqGr7Hwqty72ue0nTqD/LH9dvRMU/xJCeIUGocr
	 5/mk0lLVJNikCkFnRuoc0C0H6wlBwAgLvanRAwVgtZg63KAEMXjhPh9f6vp23a1kbB
	 F0y91cO0Ba6tlTRMG0oqAODgQEg8uWUuWy+sdN+w4rI6sL6hDIj6Gaxd2oXhgZ6UEL
	 k2k2rdUkNsXRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92534CCA470
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176000039358.1008.4156174392639106979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71bff4d8e507adcfb3f9d8ca87aff3ea6be9274a270ffb79085861dca877e674
Date: Thu, 09 Oct 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760000393

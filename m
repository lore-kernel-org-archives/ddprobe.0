Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 358BA3382FC
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 23:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783034314; cv=none; b=qnpDVmwgwCkaKbB/PqDNyF6E9n1iDJdA0uuxPzbmI0g2X8YmZ3RXbqSz2c9RniKIWdcFzt/i7bucHnJDZboEOvLZc7E+Xu/MUQCilYguRMAsszJUtmhicxCrOWq7w4NOeAZYeSkiw3ZFZJWtnrJkQWMJnV6fFDqdCFe0ICPT38g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783034314; c=relaxed/simple;
	bh=bBlQ+hs9TI9LqKRVHTjS4fWdhwhZ2qQ4ePnW7h2q4d0=;
	h=To:Subject:From:Message-Id:Date; b=Agk4OvLcHOZR9zBaeUM7abzN2f4huFXL46aKsbmonh7aLk6j5C96wEJKgtee1x7eid56TsdA7f60JGQOlLQAcKuIfDKtGDhWnhdH/MaTZjtuqWPwYXRhdAmc8/JrBixCIxfa0zG/6lp2ETSg6sm9HMHMuvfY6v2j2R1RSJWu2rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n9sKxDcF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n9sKxDcF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C678FC19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 23:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783034313;
	bh=bBlQ+hs9TI9LqKRVHTjS4fWdhwhZ2qQ4ePnW7h2q4d0=;
	h=To:Subject:From:Date:From;
	b=n9sKxDcFOR7PUIEqFqLqkG3pQR1UaX5RZaPp1h4JvhXzkmP+jxeQCLFAOmrUCaBdP
	 Wrfiwr8t+IFZrXYpr6ivcBiKahiakumJOdKQz/pwDAFiAQIajQQx1CjURMpCQvAI8q
	 wHrCkMyUxKD1UIVjaUPyPa7bJS8Qel4X0TYH+x6+nQClg1+qDazvy4gfAT5U18483c
	 hOEtecmlY3sWcqkl4xBCLqEt4U+YKuG9PB3HY8UAHH4R/V7ez7EKM+pP+FW5+2Rwcq
	 GaKDsfP1TgZW9Gisjpc7yoV0iLhPd9b/BuD/kcFiVrA7eVsqKL0gz2L+wh+0x8bhQj
	 ZIz/VRCoN5aOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF3BC43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 23:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178303431368.1543.2640409422620115442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5810eed3571f7ace732cc86acc05bfb2da4ac56f705a590d25475b7ce76a7ea0
Date: Thu, 02 Jul 2026 23:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783034313

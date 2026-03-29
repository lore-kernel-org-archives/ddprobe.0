Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D57A26E710
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 05:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774763694; cv=none; b=erwmEpIootzMGf7ZbSSKx7xnA7ap++HiCL7tgNGNJNKzNz3To1cKU19RIYJX/8mDpqka7dQUeWBfB4aZSLlzsY1aIjfqRK3KEryiuF6ijHhiiGbKKjEDhlSbiCuy1jKsmsd1F4PqkDKq1cjjHO1MIKVPyzcjNcQnw7l+THoQdfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774763694; c=relaxed/simple;
	bh=SPxkDHaRzOtVYJtQqSKTpW4ctB1HgWijtL2pDR3kH20=;
	h=To:Subject:From:Message-Id:Date; b=dEWoKglWVz/YTgD2eKfG520zUGBIT7BGnvVVcZRDhGYzx0RM6XkJExbJVlnGuUIcooZJiJPykyWfCeUkistK2xKgkdtyEHUcfNLi88EF6Rjr2j38BU6GQtUhz1CChvmPqiRv2TyfpQN0t5XJ4wGiJ5d2yyjBf1m903mO61MsFiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GLLm2Q5u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GLLm2Q5u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EE6C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 05:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774763693;
	bh=SPxkDHaRzOtVYJtQqSKTpW4ctB1HgWijtL2pDR3kH20=;
	h=To:Subject:From:Date:From;
	b=GLLm2Q5ujCYXaKgbVGX8msanhts9+YzWUNCpnZwFaoQ91sj5tediyHHRxQ0luFr3B
	 KimNOriCBmodAFUrn+b2GRPUSYpat0bHIHmu+2/M+vn+7ra+ULkqwmv0e+OaqcDt2V
	 97huVQf7ikZkmQxSopVQz6Nb3Eg95srUYDrNqA/EVbWtj9pxrvPKsLJBpHxKIzZwUm
	 ukn57PI1msrjtYqxTNyJA3E5qHKAQlg84bt1lycwi1cskTtW8bDQ8EJHqg5sQyL7s1
	 8iufUdUSdQtH2usuIbuj639Fi2r3ZINNq1jmz3PcNF8mRaB00PJi9TFqHuMoXQenRR
	 Oc05uosBpnd2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936C5F3D5E9
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 05:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177476369358.18046.18274823070728610742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7e5ff5e88fcb46b0090843ac423ce2c01f1e05e17f778ece06311f3720dfa39
Date: Sun, 29 Mar 2026 05:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774763693

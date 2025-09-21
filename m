Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D59F14C5B0
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758452994; cv=none; b=Z4sHxd3MxTJu+ePbXLMexJA8He5c1Mm+vwEn11eSx/Efk1cVealAQCzqYH1iXxBKo8Ijfk4XN0JPX91M9MBwKq+14F387SVHdLapkxvRGXpFPFfh5fxGVPhBLrlIHcUwwA4mYbqXykzodyGABhCb/Nic3gwDDY7Hl8eS2XevHKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758452994; c=relaxed/simple;
	bh=wb0jTQOz0NayaIiNtQqhK0N0w6MX2xmQH2HeivZD4JE=;
	h=To:Subject:From:Message-Id:Date; b=XsdCDGsJaJ8NZ7JaR5vIBzZ6uO8Vn4nknDT3DBTWm2nbUt/KK46HGGbMtVyREBF+meNFRnrkI5/6iUnOmtfaAHL7Y7LZnjU1Dd3V/oDL5iyO5ixPZRE/U9SUd+F7A+qmaZkZRBgvJWEY9HL94j4ddFAP/ZeBozfgEFOwCZ+ztVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MldRI6MC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MldRI6MC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A733CC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758452993;
	bh=wb0jTQOz0NayaIiNtQqhK0N0w6MX2xmQH2HeivZD4JE=;
	h=To:Subject:From:Date:From;
	b=MldRI6MCN2noiF4ZqI2LTyTqxgUvT2AQPgQO+Ucx+nqG5E+lrHSeI7ilBkIUCskFH
	 zUyiCdOmsKYer2thpW9UvfkO3xGTcXpJb+oXqGuHbKOGF/fhKVJ0psQS1LmF/P/VAU
	 HCfn70PmTOO2rHohn0uqlJFbgUHYeKiLgQt7ch8spnhI9XZmu2zkru5A391dHCeSpF
	 8FeiBYAZaTFnXtbD3XwIdfBQDueK0fMMMAsHGuzyVgz/kQVB/FClKs1+SS+RxgaSsp
	 XdkSps0rH+5g5xHcc2djGExtfvP2cV9pR5lkkHLEmvTg3bzrxoy44FNXzjI7pgdZsy
	 hzN4MKEY76axg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D25CAC59A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175845299357.30697.1751695259147336341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70bffb275871999293759bb8e48bc0106c224e49a9891eef3256a81914d1ac2f
Date: Sun, 21 Sep 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758452993

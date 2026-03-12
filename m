Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0960137DE8A
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 12:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773320094; cv=none; b=CDmAJ1bNQwt21SxybiHKpC0s6B1y3a+gkfm1ewDu8QmEWfKGwUpVP42QVYKRwCQbLnV+MmY/ZeSiih2whG/E14AILZi5ueITyden9P4nqZDa929lRkTMBE2ys6X3S9es8O2TliX1t3U4sSTzpU73N88pTZurss8pG1KXQp6aNAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773320094; c=relaxed/simple;
	bh=cpp+h58gO8E6jGY5G75c1aw3N94l3ff8DSkBTZ3gxQk=;
	h=To:Subject:From:Message-Id:Date; b=LY7VDLvnXlLCAyMNL2KhczvYyZQ2kaBkAZOPSBvdlBFinDMx8vsyw+vVCw/Ux/85iDFJV/+qzciIbnOl3mm+RxzW+SZ0XHR+w+DS4TC1zH4f3lNKDXLf+pRBjtVjmUZv0AKGaRWL2oQOYCHMbJsO01B/lm3r31fdUQVKXP2p9bU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZGJkmspH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZGJkmspH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0ED8C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 12:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773320093;
	bh=cpp+h58gO8E6jGY5G75c1aw3N94l3ff8DSkBTZ3gxQk=;
	h=To:Subject:From:Date:From;
	b=ZGJkmspHOQtsHqCVL+tpY1bRfL5uEt3I0lxViMy10n2L2XwQrQP6DlwL7PI9jlMoI
	 sxaZp8XPsVg7C6tzRjKuFlsNftUdGkOci5OgTX11Q2HiN5ynLJKG7RVcRBKe48gnVp
	 OfdcAmCguW5Vf/wLM2gVtgYIgHkjfiPJoXv7eRuQ+N1sbFoAzgt+xrABxlcCnzcSy5
	 NGBxnc3GSnIBKxdMDWc0IFB8zrA0L162FHLFRfWJnJTzvUfq/kTQQ9ChvQDsEzEpJv
	 36/phOd7Y12/BmB0oCpGbXeElu/Yq+b9b0ewbI2SQBoKFh6SPbHPqcqni5PYr+/CrS
	 NkpxVMhJzA17A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9058A105A591
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 12:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177332009358.12321.2084251470010314556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14d5b79007ccb864a12a29260c07b78cc0e25e95920faa69c8dceb7d6a68e10d
Date: Thu, 12 Mar 2026 12:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773320093

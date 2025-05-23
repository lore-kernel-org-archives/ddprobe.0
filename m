Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD0D22338
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748032195; cv=none; b=qeIoqjiA3Cnk3uhkUOWx+rbOSAniGlq0ppESCB004/L91BJiHDQqGTE1WES9fe0QQ2ZbeHvqFXauXduutm3buE2cMTQlzxa1Gy3pci5TMhCI7gv9elS0FhEL4bSauOZKtsceHzoH3r/boDW/qUhQ12LzyXB1hsrnkkS/5L2OV08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748032195; c=relaxed/simple;
	bh=sAiTKbYhztV4eqjfltFCXsDjrAziPmOqR+dguHkvJYg=;
	h=To:Subject:From:Message-Id:Date; b=uLLmh9FNgxDCjIR8cghDMW+7InIWlZUkLJhDOyJ99cRHIg9gNcUAeGUDgAKdmwo8AqMtGovV40Lc47Ppr/K6vhY1KG7eKrhkY8CgQEsrKiyQWcH9uVOnQ7V4/NgCjeq2Kg8jr/kd8C0wuyrAWhV39luev7YzjDRfQTQICke8Brk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AocUy5VP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AocUy5VP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EB6C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748032193;
	bh=sAiTKbYhztV4eqjfltFCXsDjrAziPmOqR+dguHkvJYg=;
	h=To:Subject:From:Date:From;
	b=AocUy5VPElHl4/S6b37zS9NA30I2aAfg6/fpEEUObiHu/OMcLextJ6/ShFI4/2/8w
	 PYEbWH/x6IysBsdqRa1p0gUC3eHRkRsN7X1UxRskuGbwrxyZijD6MAuaVwaWl4SsyB
	 O5IZz8xqSgTdhRXxvuvtiFGihqg+lRVDRbNkYNX/x0Ome8t6gANfkxBV75+ehqoGeL
	 K2n+YygsmEgget0wB6oNsly+01tERnyGZ5VI+mUtzo/sAiJuzEZjiRdLsd/c10h08K
	 BKFy96o8j25e64yf4h2+gLJFtOTcUO6Id4lbqKpbrAv5WtuKpmIehyqdmXYMABevkH
	 Ktk3z/NrsxmvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D29C54ED0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174803219358.18590.18142476557528319784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afbf8c54252d6b5203051c5210e1f52961ae740de9788299c3ee6a659b58a8e3
Date: Fri, 23 May 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748032193

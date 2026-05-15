Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E0847277E
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 11:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778844034; cv=none; b=KulWIwpNG3CGo/lepbHpRRuhFQDTdTxIEFIguzaNZQY7LJc/ouqu2YKFo9z4hgZMS/vt5Pfsxv86Go21bxzmIrmgVOZ6r6iEP/c+WGGN2FLvai7hh1qB3Rwywd3tNZ2OBXP+Ygeg17SMZ2XFslxPHVOILJP8TA5fEzpEJrgtn3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778844034; c=relaxed/simple;
	bh=ObK1P+0vkNzpcPB3daoLsEFroiycg6MuEiixNOBIpaU=;
	h=To:Subject:From:Message-Id:Date; b=ZRHRW2j5ZE6EiGFQ00qFj7mF39ot7/Hqx/x6Kq9Gfmd69LLed0H0UEwHvdfA9scjV3wW1rul2AocB/vHz07szrUmHQSvjyPpI8CpBRFOmZ2G8aFqHfNYw+TjSOsFw8/6xCSTGf64Ru5QKvwxUkFUaEmy9pXz16hcP0sQ6ROE93o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uSZgtt0e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uSZgtt0e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA507C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778844033;
	bh=ObK1P+0vkNzpcPB3daoLsEFroiycg6MuEiixNOBIpaU=;
	h=To:Subject:From:Date:From;
	b=uSZgtt0etECmvfatTB4PYkf69VKEDxElkzi8M/prUBp4fWRfECMsM4ZTrjPdHPlUA
	 KyfRIsaz1DXqj5Zab/02end54sMmtUz7JUeRMkxFiqme5Jo3+fN0bHt+fpT/CXBstj
	 zJLZ1jCGJq92cVsf0QubkAQjO94GiMdrZFN6q0yYV5yeiF9ZPv0TUrCLLAzPqqcQVX
	 3BNKUQS8Qk68eN9I13sUjXYfwEWVPmSG2VUIPdpIGcFfq4ea1z+AhuIYEpM0wW9vtK
	 d/juD0JXAXOgWAmSck6X76lVzvoLWcfgDpmd9eK/qHLiS6pbanbtqeGEsn5+QG8Ywh
	 JFaRMPsSe3Mlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5AACD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177884403369.16869.8515685244223040773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f08c03de5a99699e482c7795c9b233ae1c6295542d90e21fd24e8e68dd277c8
Date: Fri, 15 May 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778844033

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B3802ECEA3
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 10:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768992234; cv=none; b=ZCujHJJgvnE+8pqWfLs6VBk4B0ZrHyDb5u09T3V/2tKGenLUid7omOAlO6PvBq1MG7Bq2SsxgoptjBJ0xiANq3KFPf5vOniJ7hjDYh4nPZoaDDngrMNbCh/uaH8X+rUc5Q5LcyawvO9dQ6wsi4K88wu0vufCCID+UP87nxk7k3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768992234; c=relaxed/simple;
	bh=joL7P6naAdkEmoi4Sn4KgsSs5T2UrkRgTGJLLLCCe3I=;
	h=To:Subject:From:Message-Id:Date; b=b+khE2a4cME/Kfaar4imjeO6kxzqMHXnOEPsgwCeDyO3WNZLhw0nsh5MsyFoE+S4M4EME8o6rUoRAVcb4wQVcL2t8W4X8KIDnoX3U2CHgLU9+GocqSPWVbkVcFyF9Wc2P8QwR3CAwY8beiTbMfpcQpb4wG/YTrKCOiB4TFB6NAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q7FZceLQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q7FZceLQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DFC7C116D0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768992233;
	bh=joL7P6naAdkEmoi4Sn4KgsSs5T2UrkRgTGJLLLCCe3I=;
	h=To:Subject:From:Date:From;
	b=q7FZceLQrgOzaHQk+rOfe+mPCDoxkx4Xt/ujUsHo1rwmfFDb+V+k1khrRa2d/1E4D
	 89A6ondAFdck+USKNVCgOCYeKrhjM/kUiWoP0ue+XIaWJi2ooN+kP0hdctC6zOD+02
	 A6lOb0idTmVNZTYDRO71t5merThzEelNm6+1oa2SYMP6FSst9SJB423OErD4jhqm+v
	 RWOfGOYaO+oXowscDNmFq+Un5bT//ll4oUzT5hXAsO4yyHrlqIYuiINP1L7J9j63oL
	 cpCjd7FYHez+tSjVLc+9jvjdLCVzJSMHaPzQKtd56G01bJ54UDkH/dM1Qprj7TDkgC
	 bfrrTZkFwZjNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF68C44501
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 10:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176899223358.5530.3486594824021649279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf36482020a30eda4955231050a7e78ca2c48030af2c7ecfb5df4159a00cde73
Date: Wed, 21 Jan 2026 10:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768992233

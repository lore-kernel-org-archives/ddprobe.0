Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E31928D82F
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746640794; cv=none; b=ZKn/lVDco1iy9vBnI1FHX3hC2BjIt4jjRPA0/ID9Ktaa5gg8SmOki6gLTD/bhDan5gcl0ctka2bOrFRp2i4nhIE/iAhbH5D93zVcSFJBduvg330D4pp/cuhrhogsz6OulBLwFuC+3/zp0Fgb8k1rh1hfjAieo0sNe+JaHLtNKjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746640794; c=relaxed/simple;
	bh=13tMfvvEfZm15cJ5R7hQPAm/HXg3pNR9hQFOklP3lU4=;
	h=To:Subject:From:Message-Id:Date; b=ba+dModuux1r7d7Xlf6DCAfIsw7PGYCih5jWak1QJA1VHoifrp/1KikfDoFNDYiH4N3du2WLnqMxkAw1K3d0WXt8euUeBBXqzC59o1EVCpgkhmVcl3S2qPGeXstFYf8zYrrVEAakp/CNemSQOemo6WAOrXg5QWdXghgaN573f1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A2dyXZH5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A2dyXZH5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F09EC4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746640793;
	bh=13tMfvvEfZm15cJ5R7hQPAm/HXg3pNR9hQFOklP3lU4=;
	h=To:Subject:From:Date:From;
	b=A2dyXZH5Bxugy3+NLxRpOv8swm1Y7iWgUn9sp/c8mjnmtmvn0Qu8YaxWR9xm6xajx
	 hHkTRJfgqJHQcgYvJOxSDCZv2qkJwXLtxhoZMhMPtnzlXiO110B2VwxIljjdPNxkIr
	 2G1RkqTCMDvQFi6srk8SRcFrPWymBhGIGQ1XMpVcJbQhSWUQDC4EILccJhjJaF7sKe
	 pOsBUg/c2+XJpmw1k+1owzV9jWZGTf5VX4a2uCCiQzB4aV6O881fgOCeJhTJuuPVGT
	 MWIIbf9CDpVN49ylR77yqMUqYfcyuExCPWWhvJNw0TTAAKiprlqetTgQmubOaPOC2A
	 jkRI22VxQkjuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90256C3ABBF
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174664079358.19901.3645015850144477422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ac182132d9391687bf83dbff457009dc61bacfe3e05a9d8da52773336977051
Date: Wed, 07 May 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746640793

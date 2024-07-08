Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C9DC824A3
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 12:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720443383; cv=none; b=B2Ksp3iK6aWTPTzJtcl8MOHs9vhl1UNJPmKq7ktmnwk/f065K8i4adOaHQcIetY0XzsMea/nGKdbRpPCLDJrwOybNCrcG+coL1Zfdvasydskt3TSe4pR3AmI87Ge65rZYXRGRHgPLNVgPR9xPUmX0MY0m9zchAbkAq06wOyN/dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720443383; c=relaxed/simple;
	bh=LM/GdelC5vSy3Cp4x2agtWRmXknHE/KRugQyM1gMGH8=;
	h=To:Subject:From:Message-Id:Date; b=QfD8HHqYnzvB6z4JDJjbCxpKqd+8/zYTLJMaLMXugdTN4e1g20NHG0TWgBXJDgDM09aSIIgCLEaiBZlFiqRnnY4vLi7SP20sUyNN/xKMdec0ArP3V/x9P4JUPPxv9sRoa6fDpC8BffEZW/KUrcxs2bbVJ4g0U5xs/zvqh8dFQKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ohe+zIFC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ohe+zIFC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E00DDC32786
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 12:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720443382;
	bh=LM/GdelC5vSy3Cp4x2agtWRmXknHE/KRugQyM1gMGH8=;
	h=To:Subject:From:Date:From;
	b=ohe+zIFC7W8HAJ31f6RX41ng9wM8LXyadOf0k+1kyvTAw1nmyGz82u6C9iiEJzyyg
	 ZgcV60zL177H0oIeszSCEqC3Nx5mgbGolHiUlVC+Q2tPe756vrIfKcJaYtKlajOWKj
	 M3529rQVH9bebnS22RqhmSKs6JZjMqzgSCWiTdczaUkn+Q4fohETDA6CK65sig6V2i
	 FPZRp8g3/Mv/3S1WodSB/LjZ0E5bdRtVz9HD0AFZazLwBAZsLbR6hGv+DXi/6xglii
	 fawyn02Z/mD4J3KuXi50TOs69iS5cxJM2qMukXYp5UrSthXdeKL/eSYHnuaZdHu8SU
	 2ka+qpj7FyqVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C72AFC3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 12:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172044338280.17993.15022015295703689688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ecf2954ee8ebbcc06a67cc4658dc4ac0a8c4eeb47763e64765dd0759a33320e
Date: Mon, 08 Jul 2024 12:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720443382

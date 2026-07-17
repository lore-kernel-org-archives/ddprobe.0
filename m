Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7801D352C4E
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 23:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784332114; cv=none; b=AoZofZkCLOs57z6vq2nN0g6SyMgM2Me3Wm2Tr5gz2znjroeMAxwVmSo02SGZkt9L4tCbYBEn4GlbZ1thjDWAGoUy4kUEIOeiWONPfEiEohi9X3L5zUdxjRELVJ8gchZ0DOBJ+pHJTuUQabaQTG+sOLI5ZsI3X+m3aTTT6Wa4Qmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784332114; c=relaxed/simple;
	bh=KKPazraCtS+JhYe48cgOekoZBEskfHysuaJBjhsaYJg=;
	h=To:Subject:From:Message-Id:Date; b=uZTGLCoXdIpvUugOZ6W44uhP2PilagtrG+42xKNRf8dC2qOOkWyp6Bhe72tqigm9DN781DCSqdMN2SQk/Xd7bY2/kPs4iZqyyZRx7YJuOcYGkXi2vD1SYLY3lRWJ4Ht9ROpcn50kLITgxN6RkDBN6BMbgoRZe9FHF9fUA7vyu4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=unTQzl11; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="unTQzl11"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3423C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 23:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784332114;
	bh=KKPazraCtS+JhYe48cgOekoZBEskfHysuaJBjhsaYJg=;
	h=To:Subject:From:Date:From;
	b=unTQzl11BJ5GJdukxaqU+woyqDIh00RKhztQxiLJfEzzKy4ifPnhGjmSSwFAnyJHE
	 bjYgXbp21h9Nmyycwyly5QGZ3WaBlcrXRMLYslT6S57xQ7ucR7fHLBLuEIcGVwxUb8
	 LtoA0iloub33BPSRVrwPFugPGJf+hNb38qV8hG9ofngQc5FC71ilGzIbRqUkgOfZSd
	 gwp71C4XN+qT/tAM2vgRWXsLW2OFRu9s44r0ws/S6Xzm6sa04RQ+LB4um4OCnbxdQq
	 yCpNkI5RLNGfNyBpuOH9i2UhRDSJ5jVC3RP8VgAB846bSoUsWTq6Q8WPcVBEwmF3u6
	 Ge+zekDXI8mxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6122C44515
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 23:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178433211373.27425.17673867626217303021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6dfbebbbf1b92650fdfb73f7078d7de1e1cabb4231a77d81371863b5e8084c1
Date: Fri, 17 Jul 2026 23:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784332113

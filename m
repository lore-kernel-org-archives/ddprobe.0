Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA872EAE5
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746307794; cv=none; b=lIbcycj7goYxrn14H+ifWD9k6YH4IYkmjU3DnFaGKBZiuBt+R3Z4lIxAAK67kAz9b+ARcN7abOhJ8v3M19j82rw3DG+40v+6Sy9jRfllgYQ2i7RrUQCEK5ZTf+DgFi8vm/GXDi+xgjzKpf8s9qxXePfpiefvo3LleRiTGAhpHis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746307794; c=relaxed/simple;
	bh=VK9tLh4CpfMt2vDNrhtgDqnoNr3PSXwdQIhK9lnxyug=;
	h=To:Subject:From:Message-Id:Date; b=qF654wS7iZGQed4dR9SHjk17w0XdNGxuoIx7nV1Ydhp+YW4Se0Xr1Nd2VJ/q+N5Ru+j+BClMXZYKnqLoURxvCAzA+FnXkFbUJapHb99tSF+jbj2RGJM/7o1lV/4yjJ0LfJDo1fn3sV24KXh8JKduWKlcUE9Nz++2bpS2TSgCwXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SdDlrxbA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SdDlrxbA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CE5C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746307793;
	bh=VK9tLh4CpfMt2vDNrhtgDqnoNr3PSXwdQIhK9lnxyug=;
	h=To:Subject:From:Date:From;
	b=SdDlrxbA1V7U594Mr/gj+JkBbtvkanFlIgLGDoFY+2IxyRHroik9dbhJhIg4jrcfy
	 JKwUhHsB43V3MijjdFDUyXRz0erOx0FdRP6D4umhrwOSv2Pb3Z7FDbs6IPZ0CNKzU5
	 xmMede+MRG1fRN+uj/13tmNccoGcjl7uZ6/XaGnmGmALQ3u1xTm439B8zrEF/Hbohq
	 LolItbsFRC6YuuEe2qVIkdRRq9Zn39Z0Jg7zxkvmkaKc9ab9LHNen2rCF4zqhbRxhV
	 iOminpwwEr8J32h1L/eFkyhivkBcBtszUsBbDWOz5v0xeonqSbpKrrYhOw7pFfSg6K
	 Bs8HqtbLMAGYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9106CC369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174630779357.15266.6848300154662662923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f2451b94034522f17bc75409ac32291b6bc6209d7d18c81bb11c52d6069bcab
Date: Sat, 03 May 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746307793

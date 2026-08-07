Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 011513B27DE
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786089635; cv=none; b=q344MNA/SygjyOu4WTFN+CwtPgsRanwpHrB/zauG4NoO1qYGmn3/0BDLCPCaLQ9Vm76ceSfje2I4olAkwlA2cyMVwOXETFcTo0EG0yHKUHjyGMEaCscUfMhCqwADHJ+yrBZ6FQyFU9RMGHQ+nE/iBKw2RxOAXiI8yM08seF37PE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786089635; c=relaxed/simple;
	bh=Fw2gEloutrt10pnuZbR5lLDVdz34ua7hsTnSRT5NCfc=;
	h=To:Subject:From:Message-Id:Date; b=MyzAYX8ReVfKcGMGVaPRnPqOEv1Z2IlSDka+hjIn5lno2udKuDE7zjTbovd82JUHJNukBbQ+JROoW/VfbqSa7TnIYpQzpSdSsv+b7hBizE/pFB8ThmAc8CRzvlChQl3/D7OrUfv01e7Ijh5BpQeNugYXQvvZBRrni4vEK0gYrjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WmPBE+Vt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WmPBE+Vt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA1AFC2BCF5
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786089633;
	bh=Fw2gEloutrt10pnuZbR5lLDVdz34ua7hsTnSRT5NCfc=;
	h=To:Subject:From:Date:From;
	b=WmPBE+Vtxdqa4tFudwMQ17nxmbRJDvgRYlLWxev8gG/PELlF4PcEFa/q7TdB3Ik/i
	 m07mgpvMlySADiEtVElOLB6kYwXay7V9kiF5GXXQD/cyqEbbMqKcSe0itKA2+8VcrL
	 +ItxK8VQRMYuI+FnIBS+FIGwqNTMlfGSMVbtX/1zUOtZZglaDCgXWmf55g9CSfOoeA
	 1sEa5vmuM6S0+EK+fEjWCTWGlCU/F9dOLmGlY0LkKDpvcruLr+pZ0uF73M/Qgdios6
	 MI7wAxCtYe1N1+/ds/1S1NkzoxTie57WJb9d9dX0sucaKAo4AZE/oh9gPRONwPD4kX
	 JGufxxAGBpDpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3EB2C5AC7C
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178608963372.31046.4534308428686203687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14be3c824514b407fff66903427e45c754a34c730c940c1c782f03aa6d504c18
Date: Fri, 07 Aug 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786089633

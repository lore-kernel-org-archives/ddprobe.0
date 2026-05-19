Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D63DB3F65E0
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 09:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779181233; cv=none; b=gNyuo1VQEfcPfrZPRtQg1dAeGFZn3pDbv30Q70DAERB40nVW7wtN91/Sp4WuXeVZ+crO5UV2rwRiiM0RFcuNqh25TCFNTriqDIrcAO8TxqgAiNKTWaS+29Ht9qZN8fHvC3VPnhGxPm0y23F9wXdWl7nSYiGkrtp81NLpFxPcRyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779181233; c=relaxed/simple;
	bh=0oD5STYyctaqGW3u8PQf0hXj6GkNhEk3RdjpfCD4+M0=;
	h=To:Subject:From:Message-Id:Date; b=J3JRrZyZKSakHd/eVcmO17fGj5p0bsISP9/xgok1P79YR9ySa1EhGdWR/g20KKCnnTKb9rBn7Nw7qOPz6TDjI5LCePqODmBFeOFPV79utG4irwOEIgsXxI01XtcNi2QLEFOqpcrr/cQRzxiYqJcGkDqd0gSmCpbDcdnOqXdK4sw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XlZsA3FY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XlZsA3FY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9277C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779181233;
	bh=0oD5STYyctaqGW3u8PQf0hXj6GkNhEk3RdjpfCD4+M0=;
	h=To:Subject:From:Date:From;
	b=XlZsA3FYf6/1RXEOYEbZmtv60EAcT9Og0zmN+aaMwY7fn8dLk6x/AMD+jFwyfageb
	 YlQX6pmD1hb4KkMizD8fAVXKNcKKy4R4CBRpGebIuXQtzblNswKdrIWad8w73cUHW5
	 DcQu8Us5k3I23xPDT4Xbc6vOtcxUPRsNMC5mkkogNLaKE7prDdBFisbUr/XXXpshHS
	 74n06j4DU6i7y3MtnnhGaK10TtzUaMaWvL1OtZ7dDN94QnCuTzLwVwGBhD6YM0UfpU
	 rzNoOSCbySOrCbsu4vO7Kkt174+nZyH5L9nSq//QJ6rxuXl49/fuEEwCNqWfV+bq+y
	 b2/2OyWEZ27HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA905CD4F57
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177918123368.27931.112123777907865495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 115937eb035793f76f06a52d8ec297f1abfb37438dfffc3c1b762b933756ad2d
Date: Tue, 19 May 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779181233

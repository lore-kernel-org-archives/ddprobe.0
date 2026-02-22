Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2242BD11
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 11:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771761294; cv=none; b=jlGBpuXXUViVUWXZu/CnhWg4GzrDIl+PoXfK3OF47lM2ro4Nzdb718hwBS5aIJGUATmv9Hp/noTadku8LZ2GF6uf5hv3UBToPpfZNAHi2kCSVu0a/L9wGsJRKt8dli7nuw+fMkqhdj30AbzuXaFgfOYd0EswZooLKiPvjTHJUKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771761294; c=relaxed/simple;
	bh=ccbkPuhUWl7ODA+Ub11XgiuToz3gJ6wm1YsP26Cru+8=;
	h=To:Subject:From:Message-Id:Date; b=dz6mcBfscpxIR/4MIXpgGdWRuseGVFS/aNhbIAkd0/E9/0Q1e1QGrCBWRqb1L7PGdtidwHiarVai8GhMKHxwWDmyUeQ3iaHMPwckqy6u0lXqIP1w/yoig68sRaI+bnnPgQYtKWRQXwTB6w8SaFkTfp0ODFbaPG+vvoEd/aSJ2+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XgYO5uct; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XgYO5uct"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD12AC116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 11:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771761293;
	bh=ccbkPuhUWl7ODA+Ub11XgiuToz3gJ6wm1YsP26Cru+8=;
	h=To:Subject:From:Date:From;
	b=XgYO5uctDHsf/6fIkwJUR7Xz+oFjqL2lJjrzhP3FF268J9FH5fe3w4y4nYcREoRMH
	 sujC3s0G2a/5hGqKAv8b3yc4NrHT6BMrLSoOqTnFfZA+WHjCJZfrxS1Xg9+aDEpnwR
	 WcOsT4w2OePROg1v8bcsGB1lVcAMVeS2YnXmr81zxx9gHbG/Mt4/jzwQyU/t9dV7yo
	 CWLvL+CxFB0i6kMMpJMZkpcv52sI2W9aGiSRyjSUffvbEIY8BdgEt9WO7XziSJNpa/
	 6JOEsun8JzErv4R0G3U/mjUU57F4axpgl5yrhSdwdzSRy2NPhhmaVw50FTk95Ccqpa
	 i69t43LkM9Img==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967BBC5DF74
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 11:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177176129359.1749.4168511574763867008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78167e8765d75db9ff9b4800d63447a6cc8a40b4c82d768788efb59d5cfd1605
Date: Sun, 22 Feb 2026 11:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771761293

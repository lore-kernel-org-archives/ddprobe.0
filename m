Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 126622BE05F
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 03:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770263034; cv=none; b=NDozQ0P2zVoSmzDKlhca/67WZRQOAwsU/hJRdtEgJtIiDqifABM9XqIcWCHa7r6TNQVAKjk7+Ca5NSYCn4AhHrfnKjhkXM2vq9zBARmR/u50F8l64sVQaChPRrCu1RG4I4JihuOORZnb4afVRQ7sWgI3IluPwG/qB7NnyGBYO9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770263034; c=relaxed/simple;
	bh=zvQLuOUp/HHgbAAoQSbqcHixO66ZFieKhMOUcFUqy+U=;
	h=To:Subject:From:Message-Id:Date; b=N0BTU3Dox6x6MeSEJ8KjV5dj24HFhZPvp9zrU9oROvT/SIJK8uRHgjgl5odJdGq7wrRZPR9nUNYzLIJ8Z8mk6eEyctwEBUV3wzHYEcMt06YJ/zjn9yY+zrpNZbEFUvZPEaFgoucqTHmJSHWTnu5WD6zmaSvpmiwaASwyl91pyZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E49rXVfj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E49rXVfj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37DFC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 03:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770263033;
	bh=zvQLuOUp/HHgbAAoQSbqcHixO66ZFieKhMOUcFUqy+U=;
	h=To:Subject:From:Date:From;
	b=E49rXVfjpVvT78L7ON3ueYx1PqKYMjw0nQBVdpCdhlmZZ9YwncRSDuvDprZ+XmZnO
	 Y6ZD+nL+AcjwKp+h+UUYsYpIsKTLzWVuVPW8wQzSMV8rj31PwADReYTdNuQ9+bQWcT
	 ak2P8ue/iVNam1PGrkeAh0ug/YdZ2EOD8pxMOqF585v5Z8PziSi9+tyxqgwSuKstq0
	 S0g+2TzLpYNqKF7HDuQfFcrlmnzLF8xchVIOyPJGJLoJlzyJ2rc6rZ6OdhAk26B+++
	 9x8VaOkmomy9Jx+8xoTL2WYJYd4hhJ3plam58L82ufj5yjaqmaG0Djzb/COwCUXop0
	 L3C8VSVxLtm+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90880EA795D
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 03:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177026303358.31598.11828122359597427870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dc5e2822424505e85df922a5786a380ea83208a5e86e7630d0ea58c5692ce90
Date: Thu, 05 Feb 2026 03:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770263033

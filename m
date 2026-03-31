Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B7CC3A3E7E
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 19:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774985094; cv=none; b=OnjlaTg+O8k5vLBVruzpn340uPkrmIjRKNckU6Z2HyQUykVZsKbCfZBTAFfXqAorSM/KF1+nzZVsp8IMPs1m3uZ4P6W2IH8/nlZ8IzFF6rklL+m1xYWRW3UCQagYweswFbiJXuIgX2DMW9yxlbvN8h/QrWktJ72CTU3cw7p9qTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774985094; c=relaxed/simple;
	bh=ZsFmz2e+EBY2QpxUMXySceVlOYFD3ejusEyG4xPahLk=;
	h=To:Subject:From:Message-Id:Date; b=Rwil7jargqp7XQOW1OJsWMxh/gIdl/sKsdj1EmYEttvcnN1vQTudYuW/dLFJHcGrkqqgC2xGLf40oYFodvwSiocL7oPeAW7pINkdA3hU0I5lYHwiM2V9wNI6BTHd0WgdqyrK7FIs5R6DpdYrt1K05tHqhIaCSut3pQ4tQvot/pI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tjOt+T41; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tjOt+T41"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF9BC19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 19:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774985093;
	bh=ZsFmz2e+EBY2QpxUMXySceVlOYFD3ejusEyG4xPahLk=;
	h=To:Subject:From:Date:From;
	b=tjOt+T4107QSsCR0qK1LrhIhmu+6tWIN8gSo5lV5HUu3avWAWYt7hzkaLapIZlwRK
	 T2TYTcUVBICODGqdv6jPtQi7GP35cCeTGHkNV+/iZmT+g//EywuvRY4U+CVtrX8dh9
	 LJb0WJlwfzJhgQHiLTyj4P/xLa2EttVPjQDYgQEQw9i3zrLcYetf4jczrg1FEZOMgj
	 objkr5qHMXZM75pB2IBQbgotaBCUWRE98UG+1r2SeISNm26Mb7YLPR4DzVTdsKGyYj
	 eujrUKBazRqN4Fyud5FrF0omOJXHYRG3300+nEm7CQEvztOfS9kOc8NPCPYrols5ae
	 Ll/QpeZiGIIxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E2210F92EE
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 19:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177498509361.23734.16068358746271611192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b406d23c2b37aa106875e1a92dceb189ca12734ca8299d60e7fcdb3b76040727
Date: Tue, 31 Mar 2026 19:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774985093

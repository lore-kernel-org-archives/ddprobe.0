Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1383C07A
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791867034; cv=none; b=jqbxuVTA4A/uXXP0vfkGuro/bFqwePP71SoklhKlqHNnUY57oqScPgAHaiR5Qb64ACGYG030fa0T7dYlAu+yj4oFm0E3q5TM4vx3EznUOVR9A9fcCxgLFcOQuVNQmZj6N9FjADNkDEqrEk/u38AmUborcfDbAEFI2GGpBs7+7AE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791867034; c=relaxed/simple;
	bh=fFweZ+Jv5oSghOzut4OkXXf00nSbKveT0eNHEZAPU00=;
	h=To:Subject:From:Message-Id:Date; b=iTFWdr4vE1qZ+sMajzBbb6FGIsgE+5UA88jdePbK8+EVjW+bthNCzLd6P4kRZQHMZzqlDUZ+USy4pb3Vsty/AK7aRqarUvc29y2qwlk8aSwEK60d5AwRKrJ76hROsER99ZbgMnLndTIOgZvAp+hyXAHyUbTJ7bDN7dJEURHYkTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qGXIrwTI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qGXIrwTI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD56BC2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791867033;
	bh=fFweZ+Jv5oSghOzut4OkXXf00nSbKveT0eNHEZAPU00=;
	h=To:Subject:From:Date:From;
	b=qGXIrwTIc8VIo9V8BOHCCt7XUC+YmYY5/CrZI6FLhP6GB8zP+KnseqFqcoLXG81R4
	 3ERoN8wKbwa7GrhXEDSvtl17WkzewYfxnjHTymK/rGFKjfD9XtKrugE331xOwyuZ5+
	 3dAJyV9NKlLIsZgHb49YvA39izC5BAHGRRo6VdeSwWy71TygigZtFWirbjtOd+OYa0
	 3on0bcEqtwd0zd0N2Stlric1zO1vzzlvNDNd812+cCL7yhZjW+8BpprPf6bNG9gsKN
	 QmlYHZDc0kJwNqtIi4B5DgmqIE/mvXELenAI0nCwbXbzr3XwX0M4oPBvAyHHmYKfe5
	 UZoYSVAxZzEkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94D3CC6B03
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179186703368.25850.280060770907122160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7bd2e115ae80adc3661bc27f8004bcf3c9fcb5824a7af89b8d4b3a3a6b1188a
Date: Tue, 13 Oct 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791867033

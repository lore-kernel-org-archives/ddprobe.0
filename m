Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 708F32D97B7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791735634; cv=none; b=kyMibMZ1E3FPb1P9hiMPTfGumxj0P+12hMtNWBtgLdFv4VtYreg97slTclYdtBubly8iyXepBauCSEfGfEa3Qv03tdvFeOWq0tmG3O0w4aDoS2lsOfOy/5FfaSAWHHWpkPvpz7CKPpLVhjXteSIl+ibQn3njEBpt5TOItPzIBBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791735634; c=relaxed/simple;
	bh=K1WGlBWpcI7gqmG1kdUY6CkpgvqDOLVcEj7dfVql5fE=;
	h=To:Subject:From:Message-Id:Date; b=MVZRAwoOJulkUrWHlt/cznxGF6qqHG+5KOeocIBqYr+T3SPvTzG+8XDg9nA38b+r7VrdFTX5Od5b20e2hZVfQDem610T46PI97a60JGGCrgnZeFh/TIx9FGvAVZAnEi5c2oMAj3VmLgGsCyyJudHXR6KuRHG/uAewpkhcezZIVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SPn4Idvt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SPn4Idvt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF97EC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791735633;
	bh=K1WGlBWpcI7gqmG1kdUY6CkpgvqDOLVcEj7dfVql5fE=;
	h=To:Subject:From:Date:From;
	b=SPn4IdvtsGQqea/SwFrNuwPgL06r/HW6olUVNOYqFNrxn9tZIWoccquN7c5gQv41u
	 Jy/1tP4j2k8BniNdz8y2W6HZ5He0Xi2E1502JtJLGErpQyDzmMofosCPvAd3F9ePo/
	 CVyLl7MDGxBY9y2WpIlnlGrXinGfjAena9s6QpOfdq9LIyrFuhj3V7+09wm9uaXnFZ
	 bjKxqDfrO7eQO9/dWZdMVABR8AZ9Yg7U4OWLfCgqm/5tp8Bu87a9CDW4v6oXUJvXAe
	 0g3j5CehqJE7YMiUGnbH7ASFFuHgg7DWkM2LGB3Z2c4cLWLwEu/wk2l1C0f2HB4lEf
	 x2kjrkwApv4ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADAC3CA9EC7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179173563368.32761.429482183027089653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da1a455af55efcba20fcf0d43174926c57ceb8dc44222a543d47d06c5dff06b2
Date: Sun, 11 Oct 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791735633

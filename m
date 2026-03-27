Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E8803E9594
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 13:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774616694; cv=none; b=nr5En7xiTemnY2FXChmuenBIid6zF+ocj9atzOYXxfRt41fAAqUs3dn9yBsx/gJPAi3f/hq/2KKA0PIle+7t84lboA/nrTqB7kYqYiBsxCXA7boJ5kxEiw5UEGLkqf0lEv/TrwM/mSwsmOFIMoRflYsCxkLbSceypPzM019qHqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774616694; c=relaxed/simple;
	bh=GsxSrbYYnI/44Lqg6W9qzSnG4pKPTEE/dtKdo/uLkO0=;
	h=To:Subject:From:Message-Id:Date; b=VEQnhwhS+URY0/UwQYlCkgX4DS+KSlU1/duKIeRrUZW1UJfHzHA4R5uMNzgPqmha4bPeh9iVrpcgTrHwpHJVD3tn2AqT0ha9qmr3iJa1JPMdiTEOUm/pmz7d+EFSoDqnkkI19ADgIqJZPLj57IxWCWamTBJydtS3FfT2516owIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FRCKt9Nq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FRCKt9Nq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEDCFC2BC87
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 13:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774616693;
	bh=GsxSrbYYnI/44Lqg6W9qzSnG4pKPTEE/dtKdo/uLkO0=;
	h=To:Subject:From:Date:From;
	b=FRCKt9NqlTj60+8zHf6idMItBgo2thuyRgjm8T7jHgLdT4g2fW7JXQk+yx0xWA1NR
	 u7FDweg6NO3pyibXqFLQUId8OUwH9xceK8Rtxp/zt2uwYjPzI1T7YHt0TuttDy9ufR
	 2aBb18+7OApW8mUsSq24g/GLnG2LptRqVqUSqoL7FNua/z9JGcP1u5mKMWk09XcFbv
	 nk2BDtrQlred4Z0NKAkiQiWwiwViLVWwodKTXF3TJgIn64Xed6ook3FWfSdHKlqW9c
	 au6KN16UXdw+4tHK767R//Y3pJpRnCWXeR5AbdFt3o8er2tpTIl5wB92YIBuSKVhwg
	 1x5KvMTQAEddQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A38BC10ED674
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 13:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177461669365.12550.16255939798706297158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 854bd029fed5c4d060666080e508bae0c9f1d561c7320da78a92f50e1cc6d930
Date: Fri, 27 Mar 2026 13:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774616693

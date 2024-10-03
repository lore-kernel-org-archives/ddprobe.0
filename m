Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23AFC16C453
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727972754; cv=none; b=PpkXFIooGFuNrYhliGDuVEG47c5D8YnWYMYXLIvyYghPej2TTATkrt12VDuj2+nY1+oVlESnWvBUsRbEL4oH2X/q3c3B8JNiNpUmibVw6YPWUdwGTby2OzfK5z96sWxPLrFxztK6jVFcn8/HIuC134w9El+donkCykkGz17YuBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727972754; c=relaxed/simple;
	bh=hUiNCPEA2WtNk5QzQe74enkIRM24HtqIkgu9pzl0D2g=;
	h=To:Subject:From:Message-Id:Date; b=a/ouV8c1nwuTN2jV4LbtgW88FKljL21GTnKElqf6RNhnmSwyGoJKBqWRtEVizdGbPMSYaLRDnIcZtOFDlHmJpCPMCyZHhKtj227B3Qhg98rQ9yqlboPOr9UAGr9ce2Qb2WGwfrEvYD8BPFTMh29youvDcBMY0iQojdMh9e43xbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lZlKB+PG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lZlKB+PG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA28BC4CECD
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727972753;
	bh=hUiNCPEA2WtNk5QzQe74enkIRM24HtqIkgu9pzl0D2g=;
	h=To:Subject:From:Date:From;
	b=lZlKB+PG725qB7vw5FlYGJvTLa4pfy3pOTzlRfL2CdJUD5a67kC8+n2l7vz7eU5O3
	 mmwnY5KIKCxUVExUL0Ysv6sQ7pmArT7wWVwH5AX4S+xpFC+qWu4GZt7qqRnRys7or8
	 E2mdfO0/RAikAkhCAEUadDjyy9zZlxNV/9OirARtTt1I5gdQrDx/qmU+tZr2hiIXNx
	 bRRz1TLJiZEyApxIPlG7qBs/uuuc+uQpea5y495xrdoIVtmPq/0CDmeA2d0RCP9vqf
	 +Dx3AUEwWCy3SNpO0PrP92hzaEZQ/sAEebVZxxNFh9BvqUTPh8PJvtcc0nn72o9RF3
	 39WJX/VuMy6FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B0ACF34BB
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172797275361.3249.7046372950847742919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e14fb5d8370280bb17d21b21e8c50620662739c937099fdb4c3862cf4e9fe585
Date: Thu, 03 Oct 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727972753

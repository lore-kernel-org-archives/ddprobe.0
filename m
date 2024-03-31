Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED147757F7
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 09:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711878497; cv=none; b=rc5gE9peAmN53MTqMIbPc3RkVFKyxJpYvESLESQRg13XJ4da9ea3qi3142Mfr/ZD36UDop8YimNTlVb3pMvS1D4osUr6iL8AZywvVeQUcSd2zXRBBphpg3/4aZrdLalH1NRmhDlL9NzVUCIeFWa0YZpFd3NJ+buCq4Ak4pGML14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711878497; c=relaxed/simple;
	bh=n2WxklWHVciaIOrKpl1vmg7jfWGeEK5xMVltzVYwyRo=;
	h=To:Subject:From:Message-Id:Date; b=YW8lyRwKvyyA+pCSB2wyOOo6w0jTRhlWgWyygw3NtlCR6cjqlVi75ApkAxgIXkJzi+9t8/R/ZbgKeLeniH8xqjeFF47X8JQrJhOUKUHHi8XGpenC69/ZwDKE8TesRl9PCVD+hxVMAsxPN7XZQSsCMJRKDlRltVxx+IzKNGdufdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ra4qLcns; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ra4qLcns"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78E30C433C7
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 09:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711878496;
	bh=n2WxklWHVciaIOrKpl1vmg7jfWGeEK5xMVltzVYwyRo=;
	h=To:Subject:From:Date:From;
	b=Ra4qLcns7pEQn9dE0GaBEMZ5oWBRwiOB7cJyQWjtXV5ifZvUtTILN7lovDglhKGDd
	 BlIcv/2t2lXwg2pfLWIjJmHPWeGe0nkJ/rgGIq0RsncsP24ssBfU/vMYYxcUiD9wRa
	 uiLRomc0ShGVwezwsTBU3a25ZPMuSTWb98o7Omv0/oPi0EXXAnfEc+1tUZaHSieVvj
	 GeN4doWYVf31KnmRd0gyQ3F4PvmtUQwcw3CvD8TlxZtICovxhXNUIY3IdD99EMHWGP
	 2dvMcPcf8EySO9ksBh4MLo5qKDe/P03UdrPnNoBcQOH8RcAtV5/KXJGfvHE40YUcA7
	 OGLQa8ALUvKKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68870CD1284
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 09:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171187849639.11906.4888148336787039886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 275afb0cad8e1bacc32621765c877203d4caf041e723ab7b05768bed748b45a6
Date: Sun, 31 Mar 2024 09:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711878496

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC20131ED7D
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 11:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774611293; cv=none; b=E9a3pbqqyL7l6mY00Bae6rzzSvHWyTnj0V57x0Mk8QbLKnaaImycB+VbvcE4v47kbYZQIxT6HLzkR95Ht+782QfsookSFPwOJWUSa5TrfM6XcUc+/u2PE8W+G0EsJqGatt8c2tNcnZ2nT/BcnS36XypQHGugIS4/kltsmhKU6DM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774611293; c=relaxed/simple;
	bh=YlBcx0cDlZh1oLrNdAWtJKCsxDwl5+vucogIFPrkNM0=;
	h=To:Subject:From:Message-Id:Date; b=u/J2zEUMJuGuHe/zUFcCld5o/wsFoOFEant05t80eChvL/umMBKE6An6oCXUj4cb6LdhilykfdeNkxjTMJoRLR444HGi5V6oxLZZolPyiFIKwwMR67akMexzx6kjXO6bgNLxTSyFCWh2WJRZmitZ0pAwTWlz8M3fnkl9tnWcY6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tVgcrY1q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tVgcrY1q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BF5C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 11:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774611293;
	bh=YlBcx0cDlZh1oLrNdAWtJKCsxDwl5+vucogIFPrkNM0=;
	h=To:Subject:From:Date:From;
	b=tVgcrY1qTQru6FVZmuq5Uh8pklO6xUAUwsviNNsmqbEWCXjxMb8P5AEHJNlCoCyGb
	 47vS3eXu8xd2TG9Pnvw6EsMSqxKPuiFNM6PwpYZKrl9i8mCtt+3DDTFgrhWKh3zV7+
	 U8EbUNop4HIiKeM76Z8aMNA/q/uHRNjIrPCsIZ2ipeHdlnC2GrUV8zDfCfng2JYVtH
	 8OF6iwcqWdSeGU78Hvz5seFzG+zAkXRiTPeGvXxdi0AzeUhJYWhqin5uwmPU6dtjBv
	 b6cjD5F8abnUTv6QEaNRyyNjMYFb114WRH+YJ3+/sFM9XB0lmlHKilT1+0kgya0iJq
	 FVV19AVAtCSlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9111110ED65C
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 11:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177461129358.31232.4147858964034637594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e88d00190ad1bc362f1216a3576e200fd3c0d9ae9f469d15fbb81750ce5f7ea3
Date: Fri, 27 Mar 2026 11:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774611293

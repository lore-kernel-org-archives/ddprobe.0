Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4014C86334
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 03:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739505536; cv=none; b=W+A69B6C5OVCtr+Aq1iFG+MFYgnqoYa1UkNhYy8aYaY+HQu7H1VVDliju+CJDsjFmsisG1YzLQpriZwGl/3ahFkw1avg6qmL9venEYzjwVm9keF0YqIRXi79Ue/he1BGc4cL9L/qAIS5O8gN+agrCzS86dIzzQl6pWGIeZXVgGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739505536; c=relaxed/simple;
	bh=zDkU+wnMNBjLfoDpjxq9Hzi7Dc5yIWCn1HvWmUkUFVQ=;
	h=To:Subject:From:Message-Id:Date; b=ee+A9OgDoC+cF8MfjXxlWRixkFWDJhZSpcFvzyyIQDqowHsBCuTi9Z0YcBO2i2xXtaYb/wY3+alfUn9ty05ONffOH9F7uxS/WBm9sEOSx2YS7ZG5KkO5uxtXOXbbr76MrA4ibMOUMTRKbzegnxLlD2LBD/WtBfJ1ckrp4b2hyxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Obf+4O9Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Obf+4O9Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE86C4CED1
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 03:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739505533;
	bh=zDkU+wnMNBjLfoDpjxq9Hzi7Dc5yIWCn1HvWmUkUFVQ=;
	h=To:Subject:From:Date:From;
	b=Obf+4O9YvzeUlxzkyDbyZ0G4MPpLNBhPDUOcjC4+YQ0KXxMPgwtoolAKax59oFi2n
	 t1ZYa6KGlbCHH7yYroCJ+qjp3+kZ8PMg+ZH0kREAJUaBR2nM5rfWzTagyCOb1S6/zv
	 IMN9Cj4aY1tS/4uOWQh7dEBRbfCqnPRiD3u3kj2pxje+uh4NDlZZeFfB1u3lWvXWSA
	 G1LaQtc7krEfHpGfg8Yi9DtIbsAYnOzC6bjJ/D7P0nKhyJYV8wWeexYtBpB5XpT5Tb
	 6FI+RmKTatF16IiE1HVxtd+e/X8GmVCvotWjiT1f2RtyNbW7nY1EFX7O7DWRZ0FgBO
	 ikeMORXyQzxog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9972FC02198
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 03:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173950553357.30296.8336467770240032405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 179d7a0f1fd73172f40b8e0e88e223734b9e0ac24f0b2bec01db63b0232e284c
Date: Fri, 14 Feb 2025 03:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739505533

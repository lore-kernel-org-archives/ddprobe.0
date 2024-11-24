Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332EA33FE
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732415154; cv=none; b=ib8ZNin4IrVR0qITGXueXYEsiiSo5h7PQYSOgzMFT+bQhQaffqIAKkqqNC/8E+wNwDrynUt7Y/XCo1CE/JaJ1YicLgaTdwOUnwWoJt7981ne2N4MZwtGxZ19bt5bjOWNOVFAk6Fvdwb9SHYiTdAg52eMCX+XC8AsW2SSlu26oUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732415154; c=relaxed/simple;
	bh=gxK3rOI9nR6cP3EQjpbQ26D8YsPTMd4lDrZyv4JJJQ0=;
	h=To:Subject:From:Message-Id:Date; b=kvqZfTd4ZYy5gpbyyBF8AeqYNSY2zPwZPjSvOeJb7ADTj11rRUTKEdZy6ASsHWJQLoit05I2f3jo6qZ7vtH1vmM5uJMfAjlaC+9A0ijsH97cwW8xMw7V8TMO8kmDjrpnJdj6d0QgUz10wq9q+C+sLYfjSjuVf9kENbdoI7LtsfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Atug9wgq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Atug9wgq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEC20C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732415153;
	bh=gxK3rOI9nR6cP3EQjpbQ26D8YsPTMd4lDrZyv4JJJQ0=;
	h=To:Subject:From:Date:From;
	b=Atug9wgqEc1StiemaxtmMl3Nwxv8DXEjg+aK1r2k3IN5e8g9mXvtrNoCeQV0a5Dq+
	 h9atXN7nCKjhFh/oveBQJzw1cQa7VIo0IlgayBIzKvKdkxfYP0zdNLcn0XpAoG68aV
	 WJCeNyXR6Sn9wjKirn+osbMwl56v4ksvcAN/vD3Mk9FIX49D+zsbJ19NWQic69kiH9
	 zSTxnEeXIa6YwW80AuyGxGMqX8Xv+TsxMJRHel8UmzaUylG+muQjIK/5T5IcA2aV2u
	 +SXyQDGl7Wz3BOJJeCeJl9kZgUjInaD/t3WN6BSacnELFUmmte3w65M7JWmugoZCUl
	 vBX7Qm562MJ5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D9AE6688F
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173241515358.12819.14952519457199468446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2b5feb033f250aea9485a67d5e6184c95300af043f72065e9f7ecbaf66be4d7
Date: Sun, 24 Nov 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732415153

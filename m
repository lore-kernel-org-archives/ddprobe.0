Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C7F145A11
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742750395; cv=none; b=Hy0qd9EN0DLqmIiv5ue7ptafo5y+3SjGKayv17eLSa8gmLgaII6HBod8mUmlOYc08iUS4w9r8Xn6I7oOhAc0BxITJZjbwE2wlVF3Z5BdQTpYb4+X0CDSddh1iLatKdkxOibEGu4MA/FdVcsIaD5b/vpckBAxXTBYG/NwEBcWw6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742750395; c=relaxed/simple;
	bh=9RQVWMIjzGeQRFXbuOC3RXauwUC8obdSEpUTdYQ5Tt0=;
	h=To:Subject:From:Message-Id:Date; b=ipiC6csnCyR6wYNroVuK6ZNebFPIIe3MlpvCpigUHEeCYUXMjL4KKYcZSYa9ZymcRK5RdTdGyN3GlhmDLMl/PXMAbkDnybiJb8XHny71QOhzlu4wkvo1XfOO+QV9LIve2DuiwZ5Cg37Mmc+XVtQy9MFqrqH5GDZeUvaUideLxX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dzNqy6YU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dzNqy6YU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BF0C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742750393;
	bh=9RQVWMIjzGeQRFXbuOC3RXauwUC8obdSEpUTdYQ5Tt0=;
	h=To:Subject:From:Date:From;
	b=dzNqy6YULDBXeWW2GNrC++VM16CR5JojXTWy5FbymUkgV+KQybeJymzRahZZDs8yO
	 7osttzXEGUfZTMfTh0kN+ANmSa5etGhs8tDkb/20ltc/M5Q5C3r+994vzBripMklrg
	 zcZ4zmo8MlTVz10iIKH1T26hn1pazhlyV4Itrj0cNOB/cr0y46cL7atLCBIS6SywRJ
	 uT0vbqIr+Ii96FKuMfvzgZxDf5YmWyBTUG/U1eG7Ti3DVAAAPXZDLOHb0QBkCDbFp3
	 5m1FP0WD4SfdUGco1k15LpmcRZwhi4xJOeEZy5kXxV2+FRPqpE8KS7m/ND4C9WTjU/
	 hpya6QBqMx7Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9404BC28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174275039357.23781.7133940252966607053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f256a61f979b9ff3342e1dcfb22d89c1b67ae6c21763c996aaad14233d3c05f6
Date: Sun, 23 Mar 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742750393

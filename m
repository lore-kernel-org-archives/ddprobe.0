Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50D942F3C1F
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786218034; cv=none; b=EyXkcxmbQwSHNxfNg+tIKHCZGfwAOjkzbs8EeALYMAdoNiM7fDbvBgvq9+hvaeOIDeYk5B+cTCy8KAZBAYYQCJ0TQk/yRACTYx3raoHZpwQRikEfxSi67qzDHVONVd/bf//W/pzFiCLPCEPJSnja0oVvmufmbfEFB7tSIS63IiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786218034; c=relaxed/simple;
	bh=VP8ZofkFZqXVwPh46BMdJWgTKdyUcQKinIJXS8PGLBM=;
	h=To:Subject:From:Message-Id:Date; b=GuKnn/4rbAP2rfz+wl/hVGfzSIPHruL39CMH33FTdO0izXwIAs5BX7lYu3pEq6h8SkQfkHXslhTvW3rvbkfd2H/D7WnmDEWNGbSeL6xaQfKdwol4xW1ZfvAxHZsT5goWuhhJrYyVVUrxUt+YYSwgo0xSOJU5O4Yo2QEk0pJN6mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=scJxQVRr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="scJxQVRr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2905C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786218033;
	bh=VP8ZofkFZqXVwPh46BMdJWgTKdyUcQKinIJXS8PGLBM=;
	h=To:Subject:From:Date:From;
	b=scJxQVRrwOvIvGZlUoPBbCGmByinp63ho0vKROcgc3f0XE8tW8yYvKqVZRIZgjUgP
	 dqD8nicWlKy7o6+MGb5f320XB+T++vK7p5bknMVFXV16K0S+L1SQjWL8EL2worP7L9
	 bxp2vyaRzX5p8IGJUWnQWZGCspPkbMvlobzBmHruchd3f8+gFQVEWdPivMApRZEbiH
	 hDpJ00sOyfqPyEq7RRJSFEN67yWIZP7X9LSl2l06kNawAwOYgepiSZVxbVSGG7zITj
	 ymA0mHim7s/1o3EGPBaFmto5F/c0zRUhPu6Mey6Ylx2rFa09usjU5QpQVWhah30J6Z
	 rRkJm9MJwL0Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A27C5AD4E
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178621803368.16193.17716322768234070193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 694a24874131e219cf114ce2639cc5d8ca23e6ff5107224e1b3ec28f56aca654
Date: Sat, 08 Aug 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786218033

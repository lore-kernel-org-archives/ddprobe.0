Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 183DE9476
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 06:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769322834; cv=none; b=V0FUHr+Xv8zJar3LaxFLbpiEL65/xLbWowaGVv47NoM5Oeg+xji7VxQQmKVVoIvdn2dgryHz58oBJSu7h/FXcHnB4IZLrGoqxo+RlHZSkNFUqs3rGCDqmvNXVSd0a+TDJJ7HKuJvH/dZiFx5ovk4XYgSW8SIHD8k/nNHq/cry+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769322834; c=relaxed/simple;
	bh=5jRcBmEquhD9f2vlxYBu1bArhcVwYkcz0ntQG8y78bU=;
	h=To:Subject:From:Message-Id:Date; b=Q0ZHRV0OyKOhkU0KmrTHLXNnevSr2jr7fdsVr1zeB5ca2U30FI/ffruyI3MRjTVO0SQ74fU3l9zFusXH0MWcG4tpn8y0cy+eQ0BJmuu7taxQGTRc6wVQGci4BiX1LOe41low4etR/v2FsfkeArFzIh93xRb0tX33UPue4UNnVVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bOqLphRk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bOqLphRk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21B5C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 06:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769322833;
	bh=5jRcBmEquhD9f2vlxYBu1bArhcVwYkcz0ntQG8y78bU=;
	h=To:Subject:From:Date:From;
	b=bOqLphRkUxZT0M63kZVNmm3TAQ62z94rch0GDBmp7dXu+8CG/5CiJtOyfK3lkqX8G
	 sOgLQZL9R+AQ+5yXkp7tXbRlA08vQwt5oF/QuM5Ds6eFkHIydMFlh3OWN6FFj0QdCD
	 dexul9Z+uStQ2iehvISwf6nT+Uy85GsO+UIZo9rN6SsMPXXxeT6cg9eOBTuGR5pj7Y
	 VDAfqG/PWMlh0CNYygROVEC4VnRt8QAbi1UytG9eGEBaKcHfuDWoUsR/CTuQWgL+kE
	 znVMaDbUTwDow0eYFGUuoeB7GzLh/Y+euUXkQ/GmnRNhXIt1H0AaSeu53AHgjMM7JZ
	 Mrsi91lA/Po3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A61E63C85
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 06:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176932283357.323.16310311546295066304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b414316b54e74fbda50cc5962a9ce66274e07aa45aaad03bcbb2eb7531feadc
Date: Sun, 25 Jan 2026 06:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769322833

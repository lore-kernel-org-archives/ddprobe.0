Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4827F293B70
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744318194; cv=none; b=V7+L+HLkmQHbsPPBIIjfe4Yke3NwH7auQccWAX6tP5WTOoNTyaIv2EC00jSoWNSLGucjczQZs2AJw2N/YGo3ksOmIU07VHk9n+4/522tCxmjHdBtJoCtc2LbP6Z6hRHPBaNaLBsvz6cgjPp3EaOSZUTQqAsuSuQ+t92Aqh7U73o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744318194; c=relaxed/simple;
	bh=HO73SJ4Jg63iV9bYtSdZ/jdUHLtlmwkWelU00vDCWTk=;
	h=To:Subject:From:Message-Id:Date; b=kjRo0qso+zLUw6qez5Sqq3XM9brwr5nkoXyJ/FmW+ZZ1+WR2z+l0ReyM/WkHIWe4kn7DWUQqEJnfMKuVgbizghEDLc6dr9FR9CKwqINrx2AIVehrVtbg7w8aBjrFm5up06LCLTO6FFhcEzkVBUQLOPbZjhgkDJIDnFFEtsT+bBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WUAm/gUw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WUAm/gUw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92CCC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744318193;
	bh=HO73SJ4Jg63iV9bYtSdZ/jdUHLtlmwkWelU00vDCWTk=;
	h=To:Subject:From:Date:From;
	b=WUAm/gUwNSbGQD4yji76XE41Lpfm4M9CWQmmvNbSZudseXfyN11ubPI6VDy8hLLIx
	 5BNqod1d7wme7HiggevV+i3z2HcCMhGA/IwRLMTMO21yC5UzGf2QZnKqdzt3ca/GLN
	 qWusSAcizWAktuYVTVT04vXx8WVnSS/9JG6gpoARLr/udTQMov1HJQ54DK4rYi1brI
	 CC+FLFScp5jESUWHbPgR8E/DYtNk8NP8fTU6rulKGXm02VPy00/fAfVRt7sjccSsX7
	 95OESV4q5h+kZ+ke5LoN8reYc/UInGwpbwiXrv5ZvIQEFrOLYbhp44qUqwamqFf33J
	 hkto9zuv87W4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96677C3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174431819360.15581.3358862105985070192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b1e2d544cbb7dfbdddc456fc2f55b32e4542e425ff1830d068f70ccb3ffaa1a
Date: Thu, 10 Apr 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744318193

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 450D02C3261
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762524594; cv=none; b=XjiqSrNfGLtW1lPTI/9s/5oXVXGaTEWwN/u+bD74+erTP39hDqNkNaHLLihXFMFlyOA3sPSeOFeMB3WEXZDZ3IsI2DOXQ3N1uqNUQpfRqfVvFObVEbh+4s7Lj7XqevIMj7h54hKDXZUSYiROzexLofUYAFNRB0zmECJ2dE1N38A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762524594; c=relaxed/simple;
	bh=Tiq0CXgIc8lhWBb2hCtjwrjtHGBkL7KI/7UOyaGizsY=;
	h=To:Subject:From:Message-Id:Date; b=RtO2U3/eNWtHDNMpsSrfJV1Vpkhq9tn46aDidueJ6oEKP2b4QbC05d2jmxYjjq1Ok5/DPxpwzk5yFaIWsZ0ddVsjo6RaCXdUud/NwwwO72K5zOtl1Ql8g2PnO9AQ4S55qiJMqDh7qx1rvhebcNm3ZKq88djAkzhRAcOrr7HWVlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h84ra+Nf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h84ra+Nf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F43C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762524593;
	bh=Tiq0CXgIc8lhWBb2hCtjwrjtHGBkL7KI/7UOyaGizsY=;
	h=To:Subject:From:Date:From;
	b=h84ra+NflaFFf2P/Pg7Y51SAb/eibqtKo8KBpT+xUYkeXRrHf2JyjFIP5lXlTL/sL
	 mneyaFfgU2ezxr37/vE7s6bMHRcGuEPgC72JjSye7mW3ramJ4N0L7/B7jbDCN0Mv5s
	 Bzk9YmuMg5mWpo2e71IM/Xs3+TVarHjQrphCRq5sAURZw8BhALywfZ6vbryJTttM/j
	 g6irJWw6krLLTRNnS5LXUTUcbLV4AH82+rAKo2QH+bj01NGWd8hgQGo5A0cW9d6Jar
	 uULILTgC+7YFEoX1cxymVpnhLfSG3ty9C2kAVE1jWcJpqHcLMRWZC4yZRzeYkI6Kr7
	 DAmA0CXAEcVjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972F9CCF9F8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176252459358.17137.2650710327894213424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d6bea2751d2fbc0465fe7ab4504c16d6e856f55bcd0c2eae28289982f67ae16
Date: Fri, 07 Nov 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762524593

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D2BE1DE4F1
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 19:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767467634; cv=none; b=RMX3TR+qp5gCa4nylSRp2DhDT2n+/ARurZiZrgr3pHgFzSos4lw+I/iiXueViK0i+grQ/DL5+cidiGVvBRQSNCxPByv0RPkleW6SZM0tJTRiVPXmmm/eOF8nlGHyHMifhc5oqERRmLXsu39a/m1wY6c46iOldVehwc4c7iguLD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767467634; c=relaxed/simple;
	bh=qkfWZBHfeWwOUUbfYss3R23FkidDoUACU/v6ifUwsNg=;
	h=To:Subject:From:Message-Id:Date; b=IPRpbx/Orr1GBy5kmNJWTFCDraLqsBpkO3e3znf8f6MjQW1GjX6hVWspFOSBI6BGVfnaxBgSaS0hFmPXPMQEbHuR2ARKKwVNcTPyvy7GrP2VB3ye79SDJ2dAtHeqkaOsfDLjA4jK1deJEaRsEzkTkkDSvjS/+kilr9RTU1v5EuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OJpO3JK6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OJpO3JK6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEDFC113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767467633;
	bh=qkfWZBHfeWwOUUbfYss3R23FkidDoUACU/v6ifUwsNg=;
	h=To:Subject:From:Date:From;
	b=OJpO3JK6NskqzOah0VD15sLFWYco/koCqtpcKNkkQiFEJZh7hLFbIYJlyLLGC7YIb
	 Ttq0ihNWQPDrzM9OeeJnLC3MEFYU+WZaNXB4sOhY1R1/r5byWvCN22DVdNR6RzzbT2
	 4hlhWUp9losq3SvTLgWLxRog64UjRUp/V4mBfMh932BZBBbgakWrVlxNA61g5fVCo/
	 WzOBLH8cIPQA4wOrCCWrYHJTvQHRXdEgyqH+1ECjYtZt56J38+bdDeto2t9ElRTPbK
	 pUVjMfk3kKQP7CJqPkJmPbwvd3tjTtIW1T0U/kOBJmF/cUBTVqjxxI93s+w8e+ZJVW
	 8UNPVX0YmoHKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91382FC618A
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 19:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176746763358.11037.7927495206422506373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84b9b61168d3784cc62ec3f5cf5b85ffbde8507a47a32ce89cb37f3f52bb92f0
Date: Sat, 03 Jan 2026 19:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767467633

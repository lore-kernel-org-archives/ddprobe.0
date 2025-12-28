Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B90F24EAB1
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766918034; cv=none; b=a0jGo/AkV6bkaBaEqRrnzt1YzLwsi9LgImIm+EWc+5KMaE/qW1G53CYB7sVdQ5wG8j7f1RU0gQq+1pBr28Tv2ad9osCZ9DbuFqysZTPbhsjz3zdeiXpPK8VJzUqyy5eLSjDVV8unLyunIlb2seGekFu6r9XY7N0KwR5mJO73L3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766918034; c=relaxed/simple;
	bh=fvBMUYzmZizieguYGbA4sF1nzlo0FmDjYX3VFZb24H8=;
	h=To:Subject:From:Message-Id:Date; b=WKkcVlsgK+sIyOabaAEkfvN5p2DoMudnTD06F2rqYVP5UYzJruQRJUT2FXcI37hPlYNk0n24vVVi++zf2kbekHhMj4TSFEuNmDTFmwKRXu+DUSurUT1N9etIzN3x56fY1pJ+SA3MDcfLsE9ieECtuqlczkqTCPOqEkt3Y53P6jA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EL/wTTIa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EL/wTTIa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC8FAC116B1
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766918033;
	bh=fvBMUYzmZizieguYGbA4sF1nzlo0FmDjYX3VFZb24H8=;
	h=To:Subject:From:Date:From;
	b=EL/wTTIaQa70FC/ltOaMLgkAOhCHbvM6gYeN4xv5ZF5PYF9yy93UnnJJ7fp0QtUNk
	 6SXlmCY7B6r8vtfFbD+vwaXxjxEQMqkElCP2b9ONnGo0+h4lTZqqV0Zwzw3Rk+kDZx
	 +Rw1aMifT+ChTcc++IgsgZmSoF3k0o+SmO+JOWgFX8IouAuHKkkEdvfdr4xA0KWJiR
	 eE4Sr3FQccX0hU3OHfa3Tt4bC0tq5YYkUjUo5AxWIU+A09YscvoOLpkmh80APIAOKy
	 tDLAmcRPOHBtT3I+lpQtuQl59hXVjxTIm/sRxrR1cQpQZgOxojdd3fK208nfh0BzW2
	 TacgY/tytB5Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972AED3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 10:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176691803360.8383.12201391000743739393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b5ff8095efcfa327d4529d853df213c62cebdf933a987287516695a62917401
Date: Sun, 28 Dec 2025 10:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766918033

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D47ED28399
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756516793; cv=none; b=LU6VwmS69vi5kGWiH4i82AHwACsYrt4AWzCbvSqy0JFu/HAHEVFAR30e2Ll7IT8km5zzgrQThZITOTZ+bCaMQ0VvBTZ6iM5qr6I+8m6MPEA+j2gNCCBJb4cTfmuZt5nMEjSMmkvXIqZKmXCEf5xEHpfwGNiCWZXkLJshvy3MCe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756516793; c=relaxed/simple;
	bh=T5Tvq30cylh9EDJ54/ecglD09q4wuYS3zcwG8VqX3MU=;
	h=To:Subject:From:Message-Id:Date; b=T3c1ws9lzq5AB1zN6fpjQKWm4jSUlC7sCL4JvOc9MjEUoUi8cBaoEmTf6r93G3nFSSG0ovA3iDbgkdjIVW1BvaWYA13heUpn2iiPVXKsWgXLPHOJXut0JPkTASJq8qpEcHzqveAuiXc7Jlwbn9DmuOzLHfCqHYJRmtEzCcOUGQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SLYI4VTI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SLYI4VTI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85EAC4CEF0
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756516793;
	bh=T5Tvq30cylh9EDJ54/ecglD09q4wuYS3zcwG8VqX3MU=;
	h=To:Subject:From:Date:From;
	b=SLYI4VTICXxT9/W/6P4x3gkz2rXDjL2R9jTCVDEzDeY+tndACk3eMqUQ9lcVpZetb
	 jAy2Z9IWFTrZmsSEaY7YaqrlkgNXHJl5qkXFJIKH/D0rL/TY836x1dkbAysEDIRAqO
	 c1CD9Y+51YwRDcvEUgUSBcNNYChFCHgM5FFXc+PdGXfhKIeFNKe7cysRL7XQrHmnwn
	 B8QtcWJBcZmWpkisZvVfCMeZH0zanc84s3hAkOE6IJhdjlnwP7ro2Rci+3BAzoD47b
	 DlHtvHIF209r5X6mEcb8nfLfn123mx4WL+8phompHV71OO6z/m/szd2dxe5OCJRd3P
	 s8D06FswwakBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D69CA0FF9
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175651679357.17114.5564451851768510892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 127b27c7dfe445c93be99f074206212eaff6062344cf2b116e540739fd6240a0
Date: Sat, 30 Aug 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756516793

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360015437C0
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788871834; cv=none; b=ouJn61e210BR/+iZ92l4NIQXKLx5Y8/daM9OgYMEXca04774CMQRG9BVIYPUWenKSn4yiq8cttN4VrS3HxaBOI+gTbiEOT15HyDXrAtgvkRnnIkgwxJFp+eyxOMOv3WNIORM9/tmAW44Eh6FDrO3I/MODp4Cbr9Rz2A1/vyf9BU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788871834; c=relaxed/simple;
	bh=tZqhQCGqKx6vSpF4nAxRzBDxwqWA1agkeODdMLD4r3E=;
	h=To:Subject:From:Message-Id:Date; b=ieDj6VVUsNcCdUUJWdrvM4QBxnw/JoLl+zP0rAsh1eEb/gK8qW2bahWTvaw0Rd9YXq60Rqth8tWB7WyL0VySGiSJZtDZkWDOZLUIr5MC2v0suc0uxgVYDKXconhlltdR9DX5Hzjj/+qg2a+Q/RWZ4wJZIbvb8rh92OtyBrmbx2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qk1qrUgW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qk1qrUgW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D88EEC2BCFB
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788871833;
	bh=tZqhQCGqKx6vSpF4nAxRzBDxwqWA1agkeODdMLD4r3E=;
	h=To:Subject:From:Date:From;
	b=Qk1qrUgWIuq3U7aTTtJErftU24M8JHmgMaCMk4yWNrLjMIZ0OnqvUU395r6wQVz8q
	 nJRjijEQG6RYbM7bBeq6Pg1+N3irsLCErWFFaLc+NHLeukiHIRzjnfOw8/TSzh2SiG
	 M4uY5gqriVIvbDfUo0SHn1CaCROO2uQ/xiQJuw+y4on2sLMc3yhHlQSVZb7vAhWKgg
	 DCfDDUlX9aM8/+9DNOTEZ/9xL5TUe509Fn2CqQNCY2E5yKC6wlv0BNIje0z+u7iN+W
	 3cAAJnxmAQZqtbMKnF1nj/o3fY3tbPwFTk0O45NrfLxYVlzumko7t6W6dk596nweny
	 7DP+8bdbQ+RkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B373FC79F82
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178887183372.7387.14575963660996521511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 514b61fbf9828e1cdd9a594d9e461d7634b18aaa99ab571ba9255137cdae17eb
Date: Tue, 08 Sep 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788871833

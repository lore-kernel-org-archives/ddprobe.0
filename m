Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFC396ADE
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 22:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706049497; cv=none; b=f0JJI+sx5S9R4RzmePUWhmLe1iY60b+rN0rNCCvWyPSDL6wxl9WndwyC06SbQmfuLkz3gHMEyluqt7+rmT0nmE+W8uqM6X+D7n/QrvTW4+XDbulO2Nn+0PxqOYDuv3PluQbV8j9WVwslS03PYVguUoqN5qo11eJUqT5WRC3dVYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706049497; c=relaxed/simple;
	bh=z/yRmRMkZHzFm5rkICVKxaUzDQ7+3LReOr7XfEFco7A=;
	h=To:Subject:From:Message-Id:Date; b=phlPHiNCV4EVOUVMW9/eNvoM5wghPLvFwouk2Gu3Bvqp19dq8td36bEd0rmm/I3C0nsu/pfmUNCxj/A9uUUbrimlP94O/g+eFqnDuTA6IgMCiK5NcJ+DwuyXHvdmp5dcVuLYrH2Bm9bbwe3paPlZ+YWyAuCH+sb5VV/Cjg3d3Io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kHTDQg3Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kHTDQg3Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72AA2C433C7
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 22:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706049496;
	bh=z/yRmRMkZHzFm5rkICVKxaUzDQ7+3LReOr7XfEFco7A=;
	h=To:Subject:From:Date:From;
	b=kHTDQg3QW4lBgMlrOmRBI/+EdJaNao7hErDiQocBQnBNS/9/wGcBQUUfJqdHUI2yT
	 8TbJR9qrbWN0sCVUlQBAAYNJcmds/0GsvwQDjOJKCs6DENAHN6FIngFgHXJ7zN4acj
	 udjd3h1QPZlssPA8qPy4HMlwXZSqaDx9jtoRDflWTk7DAYOFc+trVvuFDVXq5exYv4
	 +1PF1xSUamLS7rWGdcGBa2Uaqoonh0cqgnp8xgSMnY6DMAs9hqKGkPf8qsYiuDREBx
	 93xqrOLzFm1/kuYs9+0r0Snlcwd5WDbvW0bb6zYlY+GiHtw1lC3W4OUcEnvi4uDFMX
	 iB7kRea9x9IVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B385C47258
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 22:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170604949636.19384.18260376914151706687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 440e84174ea6484a8a4cb004932f4a4f6f6c2725279160b8a43cbc9ca5c653ed
Date: Tue, 23 Jan 2024 22:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706049496

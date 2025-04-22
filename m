Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED8F3202978
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745330994; cv=none; b=KRP1ntj5ymVIpU+jFG9kTJ9S3hr1TNVjvdyYGuNpIVaBoLWwT5JTYr+SkXgPd2qa4M3Tu2VeGYrpQm2zd3CwfDQK6Pt4LG8Zc8rSeEn1oL4BcAEaDh1cMSfOQplmVMbZ0WSIXhpfu1qrYj1+MW0LKVvBTw1pGBy8UizzeC41E0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745330994; c=relaxed/simple;
	bh=AkEiTOP/dg75VnTTyr3y2x1HzcZY9opfkUc4nDP+SA8=;
	h=To:Subject:From:Message-Id:Date; b=p8JUa3i4xRUovC5nHS3tK6wlg5g/BZRFjpUAgoKfNLwR56OhFSdCGaajIm7Rw3WHi7QXUMxqJMJhREyO+R7dakK7Mu5yQRLL5LzTpGYbVwlTZ/Fy6JUPwmp/8lQP2uiK8gpfNzkbddiFCht1f6w0WbvtqWK/319gyMmCJYz94v4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=td/iYJHh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="td/iYJHh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF7CDC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745330993;
	bh=AkEiTOP/dg75VnTTyr3y2x1HzcZY9opfkUc4nDP+SA8=;
	h=To:Subject:From:Date:From;
	b=td/iYJHhPYRptANm5OgUIm5wQVJ+j3o2H/skzmHTtxZtEqQMo45wPVtn/e3eawyla
	 DgDmEvGbnDFTZJ1vpdBBpMgxJGLaq6hF2uVkxlelaiK1hAkMWnwA7XE4MjJ9QyrS4H
	 6B04unTcbJEdvbBMgL8MBhDjQYpmkp+x3axyWbj1tIVBOSlEP+5jR9iN8siSChfBwh
	 K5qGSaGBhbK0R7BPHcLEcH5eg1o5Z9M+KqOXTYZt89VGC6ftiTqb7fC3Dl5PBMvESF
	 zu/92JurCxQZYEBQaGCTKP2Q1ShElIBs3aQtPNuEBqyYfS0mhh0IhO74Woj93aMGzW
	 zE+LHpglMu7wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962F1C369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174533099360.26990.6499867640107411240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c96e68a5c8ebd8956a805ad3396d233946d9356bb2e5fe125d9ef3f93c1c2880
Date: Tue, 22 Apr 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745330993

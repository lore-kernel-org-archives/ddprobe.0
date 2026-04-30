Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE56A3A1D1C
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 07:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777534053; cv=none; b=ceB0qd6OhpZ3VA4jvsM+CtpG9TmhkFxNHgWIeRm+LiKptYDOZ62V+c319+p+eJyDBo+6eswnsBoO9kLdRHR+O9ZHdqKkr/mvaDXXX+87y0O3aKHLe01/+RmqbQjfIdf6YIYGa50JxXJNx4dXrAHEFFKtMqZiiu+NxRRluI4YWyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777534053; c=relaxed/simple;
	bh=WwlhbUznKXzkoih9qQpM1gzLwhKt4JYKP2f9pIUg6YQ=;
	h=To:Subject:From:Message-Id:Date; b=oaI7vw4l7b/bVzZtziIlyvijI0RdKhD0eYqF0QxNtoZiLd0r4Sbif6S/8hfbEKus2X3B11lLzOzWgR+vprydXhXV+31jHjWOZ7LIBsTteU3Gcl74A+NIGj7oBO60G80AlsnXacOVTVmia+8G5R2i7c95c3tCX8zCzngiq5hcL7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SDQGhSb5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SDQGhSb5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B796CC2BCC4
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 07:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777534053;
	bh=WwlhbUznKXzkoih9qQpM1gzLwhKt4JYKP2f9pIUg6YQ=;
	h=To:Subject:From:Date:From;
	b=SDQGhSb5/NFyZEvWCg+hqkI4oQZC/+mkZJ43LWdoog5koDAoi8QWW3OEsvChO1X7m
	 5t4RFKF1MVX6tHD7jBD7f10hR42cXrt1vDjTWb8y3H2VoaUYQLSymsRzibzrm9wH6o
	 IyZanHZ83H24LBXggsr/BMsBiziqlv4MzHYIkBw9FmcIQ20i65Gt0NqNlTtv5Wljzp
	 GCfeO1+fo9f0gtzP7kiA1ufhyTeat3Fm/0mgXrzOaqWtV04g7cAMIFqktee08zau8T
	 s1T1fqyRh0Wfq2rhOzDmjPqZ/28k6a1FpqKSkF/96MRoLL5vHT94locgxVKSvH9IOq
	 rMEGZmcBUnXaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95D0FF886F
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 07:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177753405368.758.12865196731348558396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a54114b3eba60f43b768a8e69c16e5610dc1387062925a0fd02c47f39e719cc
Date: Thu, 30 Apr 2026 07:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777534053

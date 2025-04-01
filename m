Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6512E3384
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743470394; cv=none; b=n03ycVYEFPVTDFKjkOgdPWKAteNPIf8rDgAlHnod3nH0Ojlx3Y5MKj2ska+X1rPNhUc/ofxnRjv/VS0GRpHWo+GHXrLU+ueuxALDhaNzf31/F2BjgDaIvmD8E9vws96BEN8UGLh66qK/auMYqDAFya9PI9IY8BM8J7irPhSgGZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743470394; c=relaxed/simple;
	bh=EmJrumw6RGbrH1mF+a7neYP6yina1eUYjY/Hx+gBrEg=;
	h=To:Subject:From:Message-Id:Date; b=DV+Ti5ys83ncwKAl2U3pMUlI0AwItJA9wYWbpCKW3RBwLy54i+AZa/dhNlfIo6HTNtJEOlakBJbuVJwYaFfFNZ7USb3IGEHToFcfMeNPEDSurWjG6qlegBBVsWRuygJ7VTYrdem7B1nArBQZvKLFtkU/8KDJAjSI/ArdgQZVir8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JVneoo2E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JVneoo2E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E92C4CEE3
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743470393;
	bh=EmJrumw6RGbrH1mF+a7neYP6yina1eUYjY/Hx+gBrEg=;
	h=To:Subject:From:Date:From;
	b=JVneoo2EhqrgMjI2hKIqAIjpRTmNirZ6KBcoyLZEfSaaFu5CgrMhD/biGO0vtvJEZ
	 woQfImIR/NUOVa1EiOSj1KMo/MJ5RxfwXhEh4IjbvHbpUuREktJZXIHLsThTPH5jd4
	 ZQbVeHaMJpbyP6xz/1Ln8k40D7unKimrtn7XAFUwdvIX1AhxJDm9qhvmiDH2MwCnCT
	 TCJM5m/CEJgmdHMUFTcnYfF+yvFWEvwHCp8DcUw5XvHXbwElSUgZmINeu6dpwx5ZNd
	 qFzeGnGl2FP6TCApp6j/Gm3QmJszPgX8o6dBMlW8dHUnDNEL09uesuUACHXf8aX5zg
	 /uZiAfZRgUkaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909A9C3600C
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174347039358.11551.7167428188790687865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44f7aec355236b1fa399fd4e7f157426bb8e7ba4b334f5af78104fc2fe3c8546
Date: Tue, 01 Apr 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743470393

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9211BC3F
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750003795; cv=none; b=rFDGXvTbN0s6CRtqsQXLEYv+PhOyWAP2wHeKuw4svSk4Y3RUaW2eQEoqy0zcwHXGZmkg1vmCyRpygwCpqDYrfpviAINWyVO9nUL9tBLYIKvk3E/w01GK/5Rgbt1sa4QChb1JOGQkXR9KHPQ2UabK5tI8B4kah+uhhxPM5j4exrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750003795; c=relaxed/simple;
	bh=4uVjSXByvFJTeZmzilArDnjVbaE9u5DKV+A/In390LY=;
	h=To:Subject:From:Message-Id:Date; b=fZl16re9A8ZZPYFdmC6wfJNdX4sdRksGE5P5cH1K2N1e9prwy6s9UdL6cT386yVIThoi56QYhLp4HlCWeXGAlQ3ytrJQwb66ToDoXdVGGxfdBjsdtZ36yXHPsn7LNqNZcjAZMF6Iue3TynH7wfS+WM/dxfddx0qqlDNknuVNA28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M1Ibe7Fb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M1Ibe7Fb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FEEC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750003793;
	bh=4uVjSXByvFJTeZmzilArDnjVbaE9u5DKV+A/In390LY=;
	h=To:Subject:From:Date:From;
	b=M1Ibe7FbM2u0kh6d9UXAJGObhoTIePBycRPPZ9+bqnB9Aejt1su9AUOPl9NlirIb2
	 vMpeyh5r5t+ZN/oPQ5DSnKT6Hsb8SVJuwxiC4lorgw39us4M35O5lxr3wkfz/ErEzO
	 42Axtax4on7jKzSY7KSdzxHIPFHR8wrG1oJQnAtBcWD7smqK9gCoLDvLvpfdpJAAUM
	 y0ycIt5FXKlPVgwbgYrzzfnPenPHGkLwHst5wPSs20eS1COSp+m1UYZEFxRjjkkVvV
	 Zm5wVVdlWaLb0fvL7NckiBEPPF2h9OAeEzcnPA9lBrGOjjkIuyUj+5+hePHFyI2wnt
	 o+Dz6hBtUu+aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929D9C71135
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175000379358.30642.16455097997330141683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f415aa7619ef5a3cce2e4dc36e6c0da27465aef212b0387354bbd2368723afaf
Date: Sun, 15 Jun 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750003793

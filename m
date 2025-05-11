Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D0423BBC9
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746925794; cv=none; b=pH9w1GrLEXnvQmRx/22oNGt0TNoW9FGjRz0TeH0TNdbhXtgws5YpjHBc9UCBqcAykBrnVIOlB7Cl4amLwnjS3Gfhx0LKjQ3P+fGT1o+Fb+ISKL2dtoRudEPz1qvnfdXotZf+E8+/kqvtMZx7eeu45P0ZpVEDPEWlulmjyQVDlBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746925794; c=relaxed/simple;
	bh=lDnn83GyG9B1VJTJwbOn1PwlQjCwMImdIzqZe6TYwHE=;
	h=To:Subject:From:Message-Id:Date; b=rS+UGK3eYEcEnSnTMdkhjr94zqmLCSmM5R+BVqlURJVHo5NNEtgbqNagN92oG/eW84v+aznrFfAlqsjMbyMckF5z4zL+jY3HDVgqBH7C1b1UX0W7mN67MUqtmN6kS+JO0gn8i877xx5bEOmaN8/fbWvsgcXoG+ZAOqin0TfYB1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kbYUwyms; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kbYUwyms"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DFFC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746925793;
	bh=lDnn83GyG9B1VJTJwbOn1PwlQjCwMImdIzqZe6TYwHE=;
	h=To:Subject:From:Date:From;
	b=kbYUwymsuadFVNw8EOS0q5NjGAPBMLaqGoqiZJS8k+cPn0zXPfHQW6E9MLz+uVdSp
	 zZN5sdEbNSB0jEmzG5LhaIKXipZ350E6ZSXeCE5cYhoVYHIqrjqVjCXxeLgjxmbnGX
	 WPTRZeYwJIsdUHskH2Fl6Yg1N6L+F0dqMK1F0fnLZfEEMVV3v5ZmNs+MQYs/fNGHKy
	 F28H226T7lcJ7tawLYJK6VZ5WiczDk96YSiYcmTcTg2I2MgcD8WILjHTEt/zPvSKzI
	 O9OxSayCO7l6/sYA3JIijIBWt6hwKQZyNA/gTAaJ01Bum0WPzOvXSjyBPPd3ywLoIc
	 RKqU6ehcFZDig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CB5C3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174692579357.13371.8549153791625137444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f876cb3809465e7b8487b3b3f05ab07c1aca70609fe2d3a009ca0c675373cc18
Date: Sun, 11 May 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746925793

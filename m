Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3644335579
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 08:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769762633; cv=none; b=k9ygvB3asmDK94sK8lJ1yFEmRwZgSGcXbhTYoNBpndmRLmaLoERkHOLJCUPsf25SKaKXph40Qy4tDYzKx3jWw+7Tip2X/p7RijKjUj+RVk6Z1fUJ55+zO8kMZXJJg8cYWnOkLnpNdK9/F/ebzvjaTCjYCk3oEuGYgFBtVf4/ENY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769762633; c=relaxed/simple;
	bh=GkIxpoV6xb+hBC+fe/nQn8Gp9VswOIaxPJ5MU6TMgrQ=;
	h=To:Subject:From:Message-Id:Date; b=JcLe09/AWKubiJMXURfDP7zKgfl7fYj19NTWB55+yC3DjGVYQW7wxy4gpds4mTfwetEEaA/vy5PZDTP8ZD3UpnQOev5oUHLPmIgQ/q3VlKO8sapSqVqRTy0HpdFUu6Ojp1m/K9++vTzzF0Nt/xitJpfx8H5PnMwWnacazOH6XYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FFVGtgO7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FFVGtgO7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A3EC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769762633;
	bh=GkIxpoV6xb+hBC+fe/nQn8Gp9VswOIaxPJ5MU6TMgrQ=;
	h=To:Subject:From:Date:From;
	b=FFVGtgO7Maj0pJ6QkaI55VpTt8he7GWxOSXA1p7h5IzaB7OzToeRfGllGIHVBJS3d
	 eisKHhzF38b+16SWM7yUlZNigLpIuakLhJbqPlbXdG5F7iTAvpbRXzIKp3iwB+smi6
	 zOwK5tihhZHErxAT8W19nUqphHSNx5bvilBiNQCw3TwABkmiwFWwgVRDwVnO5NriZW
	 VyLslOhPf644VPSIQ9pq+4ykH2Kb/ZXNt+IhluuK8P8z2AIchYQBQOI/EI3dMqcOjw
	 n0Usn8irlxvEa3hRe72V4ICaLfu7JonuqYBKSu9DlrUGUbMZ1CGL03ddLYEWbT6hCz
	 Upw45SZqDtk4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F48D49C7C
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 08:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176976263361.608.15752006719247981290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2fb4220d2291d0faa5520f3be1e15a45ae9c6fab27444eec513067a0f8d680d
Date: Fri, 30 Jan 2026 08:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769762633

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39DDB539A
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746991794; cv=none; b=OcusfLDzSnjIuJSrURLdiPu8dpdDyDchDlbJNgtOsOMnN4OYIPZCtzcQVthKLuxPjHeBiqBSfeVi6dqhPmcO3cJ74yEzQBDdAsiZ8bDAIYhyZ1JUfe9fkRhwxQslauN6RRt5IYBUMirjdvVf2/dtBppXZ1BQdSV6Z9gb0435+nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746991794; c=relaxed/simple;
	bh=aW8ydndxq8YGaAxGsUmSd/STqXzFs0cMrcrUKsyrm84=;
	h=To:Subject:From:Message-Id:Date; b=h+sTDkeNqulq5Gf48I074QfblULnZwImvJoASWDSF5yorUcwDBHOCiuV9ymUY5vlwlyvEJSbe4Di9dZRvl6ogcJ6xlGYSlsZsJvf3bH19xr8IVuI4ZJLiLLf299Pmc/bKcSgtBUmIrUTpQJK63MECNZ0OPbtkFSjcRfvm/tu2UQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Re0urWBi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Re0urWBi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5151C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746991793;
	bh=aW8ydndxq8YGaAxGsUmSd/STqXzFs0cMrcrUKsyrm84=;
	h=To:Subject:From:Date:From;
	b=Re0urWBilOXiZep6ytnMSlnDr0kTWxGwdTlczMoEafnms4eCp8iUV+zhMks9798pH
	 hZ3GIVx3tDcGJBmyzfAoKfvb1Mt0Py8kkYwrLZVp68P/F9N2eXp+ex3zhhThqj+q5p
	 Q7F8ejItOWBAUjbm4jbIUr4SRseSxJRELqU5M8NVN4aoh5HsEUFWpSzyemuzk+3raN
	 IYjiS0o76TCsxdUnzfBBVIaFhreTzKkkLKHF3cuLW3O/TavdsY40ttxaHTIxdE+eaK
	 Rm3cDyImiqyZFhER1j/WM/G7jgC1AeAp6zIlDudifDhlhR9g+msPK9EvreLpchwIKd
	 e630660G+2vhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AA7C3ABC5
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174699179358.18528.9343724206356327396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8714e337c79448bc4470e2a7a887de04ac137bbde23d69ee23db76cbe3913452
Date: Sun, 11 May 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746991793

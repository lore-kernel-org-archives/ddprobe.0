Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393D223BB
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 12:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739623735; cv=none; b=mPiqsCPDxKlkD+7K1l3ZqyB0nelmQIhc8eNitbBjxrWcq4/UZu5YWG5czjP35a2+L2lRZNo+ZIJ9/rYWSMLDxOFFcUXHDjH4rh1Tdrusxf4bO2brpI2/98rJ2tMsWpHLm6h3GpJzJHBHdmB9yQGxfo4agnXSnZbKc+qP29n151w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739623735; c=relaxed/simple;
	bh=qAPgLtm3evJQ92qKzpBw8CiUVqvjXokJYQvpUDmeYT0=;
	h=To:Subject:From:Message-Id:Date; b=DvEdxtVnU3463O8NWIW6oL5ScIZ+CkLm5PL9x5k73dqdWaOoF7tmnvJAF7An/uc9FLqamgxHa5D7Bmuq4O7qdPNCG4aNgFil0T8RzANOiCGp46Ax4rwpkUwyumLVQkj2V1E/mkccDYhHRfVOdASmazf6fmSty7DcC8/5WwHL5OQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hNqAdC2f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hNqAdC2f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AADE4C4CEE6
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 12:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739623733;
	bh=qAPgLtm3evJQ92qKzpBw8CiUVqvjXokJYQvpUDmeYT0=;
	h=To:Subject:From:Date:From;
	b=hNqAdC2fc0aNOYofeFHut4YG6PBsanVR1oXwetyZZmZo6dn5s1da2w7CkzwOLZBYW
	 80JtwHkqdU25YZcPcW01RZ9EhdUx6KOMUjwutj8r8BPSvACyI57XGg1PfKqqLI7Ahy
	 v738SNzbyGdcrYjCmoys/0ZZC3BmO8QPtHOBsClMecGp4OxrqciAZ4LSkWeqUqc1MY
	 7ibxDVEi7HQ2rALFV25lnD87WxTJAOVPrTtV0tB4ybV74/3nPwXNyWy8YgGxuMlGPq
	 v04IngRE+dO0vaT2YS5VXx/yXDhwAmgyyb+saw+Pt2lNK//z5qBq7ckmEqr14Kbx5k
	 LcTmkKPVdereg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9767BC021A0
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 12:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173962373360.14977.14615502602717424672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 627014748fdcf6eaf4495a0721a29344fbf51db9e797f68a3eeebf6ef4db6c59
Date: Sat, 15 Feb 2025 12:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739623733

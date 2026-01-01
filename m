Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A4442AA9
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 14:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767276834; cv=none; b=Co1DcPN5LgSjWq3HF30z3ELDPM04aqx+XO2+LKxgD8RNhXyzfvV4BAI/+WLCiaseNMmOi9NCal84tI7no8sf5NY1b8myiCAl9WLbB43dDqKdsEhYjjCQFPiDlSXMnXGA5Rn+S4XqrccycdLy8K0kp2GPcMRc3wrkJA+hJD9XVYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767276834; c=relaxed/simple;
	bh=g7xx5N/1PU2AT40oqp7TYyEAX9+MTI06efFekC0VUkg=;
	h=To:Subject:From:Message-Id:Date; b=b5PukObm3gu8DSvJl/SBTJjl3cDuDHASyw1Lg3Pl04mkel4ZTUxoN5PFgjcSAJJUVr0pYEhdaZh4XOAD9HEYJqet518zm2KLeM2hFQtFNj1T+ROWMwoQdeifNzKujWncAeLxSRHD4hqwrLK18Un9Yjputl19+RV2de9OcU3we4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qxxgZk7F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qxxgZk7F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C16C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767276833;
	bh=g7xx5N/1PU2AT40oqp7TYyEAX9+MTI06efFekC0VUkg=;
	h=To:Subject:From:Date:From;
	b=qxxgZk7FEvyfu26u7izAS5wITMoCDg/hPSge+UyrQVrjYBGhpRZofupuvsWmFOBep
	 J1r6d5HjEyquA1Qb+VA5CEiezQe0GMElTuWX6dcDL3CsfUVpiGTInUSg6OWaFrs0v4
	 1K861VHP7+pxKstfq0G0+TMtUKzoi4M28c2m0sc9U6ySRB5QQcRDZpJDn5mSo0a0Tt
	 6B9wZDZwKS03nb+ZzVdxrRUokue5FO+sIw+X7/jPByCKZjaIDto4nq5agYgeNjiggm
	 O1koWzngKBa3OhJcmzRUQ8nmfRw2joYgWMLOiMbitxO1L9aULqit2gQTWpf/yVOumb
	 ooFVcA9O5oH2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F21EED603
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 14:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176727683358.18206.10177532322852375746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11573e2c6a5699593043357cf1065c580e08bd85b477d28cf2a6c5d985b361e4
Date: Thu, 01 Jan 2026 14:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767276833

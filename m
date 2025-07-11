Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D631865EB
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752253194; cv=none; b=j3VIKdnfIgbQ81QK2oD+30gJyuDV5VvhJWgry/xdJemfRUG6C1f7nlFxt63IgVNrwEOolZ1+ARHkwZZaYl80MWXmjWWKHYOhg31UEDiXZWmSoy8huJqvtYu5GVrNYSzLFBIEMM3fvuBPG8S8lOlrsxvIeVctbAQgSZ6/ycURsEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752253194; c=relaxed/simple;
	bh=aa6IGYNiTy6YqBuU60oPEaai2Sykajk72TG6f+YdEiU=;
	h=To:Subject:From:Message-Id:Date; b=uBL5523sxY2KT9UbS4qfT+jdkLOYp0Ll55CQI3RW2RJiTFOk/J7oG6ZoN3RTaMehs8GhyM/bdQqEGSJUNdfolW9t6EKfsmsMjne0ZUgn5gQz3RA+RYaNgEOGg7OGEGT7d0UqLcrF53utzMfIAULGx9VhYg1UuoolvRVfIKlabh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NM2Jo8LB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NM2Jo8LB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0498C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752253193;
	bh=aa6IGYNiTy6YqBuU60oPEaai2Sykajk72TG6f+YdEiU=;
	h=To:Subject:From:Date:From;
	b=NM2Jo8LBTC0sYp0zpFyvgQoqlVUsvsiG92G+CRoUzOaIVdVylozlCj4hCVfBKoBtk
	 fatNSsCa/qBoVBCI1pfTqG8bZ7ZP8Ft4XTwYDJ2cyAjTtbgC85AeyolPTB1Wh6Q2T+
	 3XqRbV8v6fuNV5eKrPd/xDFL8BZYrj/CGRm8uq4f48cj1nEHhEyP4VcbCKHZ9frp53
	 PghMTsZZZNiwbCC8MhyXTlFOyzPqT/9QiV3y3G3JHtxraI3dkI9buxFy/zCa1/wRPz
	 qEZ5U87gGS2c/iCagQ5oUMJN77fMmm1dCZmJERr2/UADLS4A6aI281g1xJIIAlYMW2
	 01IaefpLDVm5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9050EC83F1B
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175225319358.14904.6413428310550655357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3f3d6513aae8897d31a58552906f9ccbd1683940a681ad7d77448ffcd91db07
Date: Fri, 11 Jul 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752253193

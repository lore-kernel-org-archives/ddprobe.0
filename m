Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341CE2500CF
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746520194; cv=none; b=ux9SBiVSgTkRWJ1gHUS5tcS/K5Ybo4tC1IKpSvzMVrKsjXYga80PR0VrN2Rqhb25EBBOTKe92/OAkLpZjrGDQRTugrVUNaqbnh+aBl+KVTTfTonCqU1gnl1NRkhMYls6a86jeqn5Tf63N6ApBxSc0LfpADE7Tu9bONo4HYVhS5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746520194; c=relaxed/simple;
	bh=0VVr9r4Im7z+NoHeyO6Ef3fhTLpYhPWId2J+4MFk0Xo=;
	h=To:Subject:From:Message-Id:Date; b=o0/gGC3oSiGNrgzo47KE/ROg3xaOm9mJ0bKzAFbpYPK+UG4jz1juVPSbwhuHovO8QzYrvj+7eITGj5fi7SMEYdFxIAg3Jy02XaEzT9VCYxPzWTvRqKxTQ8M34L+QnpWu8lzu18GKJFC4RdGBOAyst44Z73MrlrsTlpH+E+kOFqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gi32ntQn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gi32ntQn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE57C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746520193;
	bh=0VVr9r4Im7z+NoHeyO6Ef3fhTLpYhPWId2J+4MFk0Xo=;
	h=To:Subject:From:Date:From;
	b=Gi32ntQn3a1Mg7LHn/cZEFrpVzntc99U9C4/mBtxy6fbSgOcoQJpuVqYzqUR0xqiF
	 mkvMMj7qXzj5bUaTzQBjXWQ5mYlkyuvh3m/5STgMtgS+ZWvzh9Nit9kKucr8QxF4O5
	 egYYKBAHyCRX9hi41Oi8eHcmX6MMW/Evi5V23f8tGMzqKSZtUe8FoYQfXxyEnK2QYO
	 Fm21GNd4ORO4ddDp8KJrEU0gLkF5inYm4ehKSPC2nlM4Z3mlcHbt9ZrkLVsZw9df1i
	 AeSbLjcvsNfBeEpusmi/SYl7D6RiHmZBFQ94W0qiOFgI9RywGszE4M3OmpAszSu6so
	 emAMZPEiVIf7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91765C3ABBF
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174652019358.14346.2951552440775846036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1ea0979dbb93958e98e1a5a850d9bb5836ce72adad51ba8efcc6caab91ff8e5
Date: Tue, 06 May 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746520193

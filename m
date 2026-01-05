Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FEC726E6F9
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 06:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767595434; cv=none; b=dfdz5qGKyxpq1QhZrcSZaCNSvp42k+uGd1Dk/j+Ly6wfZArLeNOAl/sOV9zmXI4q3iLnAkFtfKDe+lpP5sl/MkUsNwTyuVdO4YPAhVIb3uKufp+KS0Plgkr9bmOhA1VMGBtFrK44NxVyYfw0GckHgCQZMHsCCNlyvIhLpJ/2i6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767595434; c=relaxed/simple;
	bh=hd+zP8z4FT9Y32qJC4+lPcibATf6hFy5la/01WdvVE4=;
	h=To:Subject:From:Message-Id:Date; b=IIAABi2XGglyRalboaZuqn1889vhVLxBQhabpWLOMQ+lniX9+6e85rCH4Q6bMWOy/daFndngE44SgUSP7eaZq7SBkRGiptHE+aZqTMaYCF8fVuEMt8aZJcCSw8kQDT440UQGocwrKTEoKj4M3g60shPCm3675JLwIVPOIRzBMzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qz7zcJQO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qz7zcJQO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B37EBC116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 06:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767595433;
	bh=hd+zP8z4FT9Y32qJC4+lPcibATf6hFy5la/01WdvVE4=;
	h=To:Subject:From:Date:From;
	b=Qz7zcJQO98dzY46YnNpql5KxwZ2UBOCsrUuhc++F7bFOaZxgkd3/7mg6z9UT7j3u4
	 5Vog8SYmHuYMNeUFPYJWZyHQ3b6y3ZL90xU3r57EwwtkaMinrizJsIH5PUcqIFbQOc
	 YR/sAoHd+pdBO3a4tIVVGeBu/8dWbbY0osDI60nrdMe3WGdSP0q4AWADgLpJBBkpqs
	 CXDGIgqM1bx+L8JhuQVHXhFBAAaD42TJJ5Kf5eigPKNzzVEgANMXIC04gbphFH1t1/
	 lkVvOw5nsrf5CocrUIHCDHM4UQzZ/sy4sGD39Y47CCOdmIbVPIiv3g1coWdUeLETL7
	 qQOu971ikjCBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E424C2A072
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 06:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176759543360.30504.8755817308007787942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9a079cbd40558b11bae798f78c10c6d0394337910b04dfc8d3e970c78387384
Date: Mon, 05 Jan 2026 06:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767595433

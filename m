Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248CA25B090
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790658034; cv=none; b=kqMtt1rqBaoolXVJL4v4CZxAVxcMAPKz9tNKzdPm6W/KaoGdM/Xa1cC1oRhoZCOUHzM6IdPcQ17NYrQQ/AysKdFb81d3KuKQTZ9zwclWEnrWIW/e717bzBgQC59LBKm2aPw3c58rF8QG9YwudxY5bx+b8qu3r/W2ev8OSXG7L+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790658034; c=relaxed/simple;
	bh=e8+peOO2VzuUbLA4DlpkzhSJGVkaIX8hmSPQm5u3LP0=;
	h=To:Subject:From:Message-Id:Date; b=jzBSFoPUrxybOyr3+dMMLWKq6qLYiXiB+ZtC8cFmCZtOuOKBgcaSneSj8sgRUad8wT5OlBHA6lC8WugATeED8YuzQkRa+KbKwlf1IQ0aBuvo+LDQK4QMfNkJEtfyGlLmI8/TqZxXs8irf9v/o0T3LVT1+WDnavGSVclvDgHBA8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bvS/Qqxs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bvS/Qqxs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED58C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790658033;
	bh=e8+peOO2VzuUbLA4DlpkzhSJGVkaIX8hmSPQm5u3LP0=;
	h=To:Subject:From:Date:From;
	b=bvS/Qqxs59b7MIMtBr2bvgpcOqRABpCPPLD6FVJvkT9Ezwr/rgYwcGZF+L1BoSSyz
	 weStaib0MMKgkELOFnWtt00gIWzi0Og3yqh8OAFFPfHJzB2v233LAEgEysfh7fqrch
	 Ide4kKcsCMfGIYz7mYu2jXcomoiF4/fMDPzosJ0paWIP/i4JZM9+f9EknaXDt2JTS8
	 ovI7ZqME5/M/vHyu+ToN8djQSRLWKYrmwW/NdYwWrJhjQwu8QrP2RcAMhD0VCoTJo1
	 fj9mMPDmILzSBEMcbQxNSGqcajcAntlGYAYeHFuEEEsWy4HZJNguNOf1YxF/35rufD
	 brx6YOKWbbQyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0C9CA5FA1
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179065803369.16121.10173035583022021959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 178c61ef8737b956d67b0b7829dbc84a39dd6ffafea03af28a406eb59695ad1f
Date: Tue, 29 Sep 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790658033

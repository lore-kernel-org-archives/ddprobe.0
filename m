Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388FA347C7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761509394; cv=none; b=nrz6gj3njM1+JZi3DEHKUOLSOGENYNGmg6QDbc8GMk8iZPElexy0ATS8vX4j8AIjlKAC1aV7o0cclJ1XTaLuPwKE7iNegbBgtSYsi7CGi5dvRzylJtHtqDcAE6WEKRN3bBZTgUkQHK25bDSBBQMHM5uM0MMeKMLZVZ0gz98fKIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761509394; c=relaxed/simple;
	bh=QsUctyZVtiB5Lti6hLQ+44QlxsrkcH2deAhYwBanEBs=;
	h=To:Subject:From:Message-Id:Date; b=SM2EX2yEcMVkt4JtNf064JWZlZDNmOyEpyjvtTUiu7MENxFbmYENGIfq2W3pkloQJ31DGdRz/Uw5+Uj41GydKS1wYJjBIDnrd05MTuI6+hg4Scz0LiHWFcgAZCzc3dvXEcMo9noroFLdz5EPg8VnVGq8yTFqKSVZNMwrrfJvJRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cslblrwa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cslblrwa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67D8C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761509393;
	bh=QsUctyZVtiB5Lti6hLQ+44QlxsrkcH2deAhYwBanEBs=;
	h=To:Subject:From:Date:From;
	b=cslblrwaMusPsek7F244g2feqHKBO1wkeU9Uyp2eArAG4sMg/R36hrUBOPduGcmOm
	 xdtiXmVOR+yGewHRJkpmpgQgtU2kpYVBzlZXdKOLUC5RWOIi7isi8Ul78+oMHISQUL
	 0ETDcemt9abxN62CY1GXtYSUnxzT/oby+NpxybtZGobPe+tAbVIUxHp5ellfnePkuw
	 XiI0o9yrxI4+JnKzdQgjzgq3LbqmXjpPijcvE9SGYuABNHGZXRLS32dQsP8kb82ik2
	 RisO1b61ZOWeUNbRTsSvp2WCKqXAqB5jV2I8sfcSGmX7T0rUjVzrM0IFVYrCGc5zD1
	 NtlKn2rGlGQ/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92578CCF9E9
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176150939357.19283.12200085342271495138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2a895eaf6a2c1e774d35b8c79845b5de8fc60ca6bcd2e184fcf3a47b61ba435
Date: Sun, 26 Oct 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761509393

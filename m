Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FC3C1494CC
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760073594; cv=none; b=e7fqnueAo8ygyXVC5eQ0/4bjVKI33gv74rQ8dKNisfAKvZWMLrqoTdKebRfigfOO0q674LQofL7h3rnNMZYV7/wHe9Kt79K9CGEcnyK3EQX4wSsp0FqEX+hE8/E2DRgd8USM/m1fkZw2BpHnbeFxJPoxppzTYb1kLJgA0tcQJgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760073594; c=relaxed/simple;
	bh=nneKHqHY5q/S52Z38yC227AcCNYtn7mwhpY7nuAnJUg=;
	h=To:Subject:From:Message-Id:Date; b=tmEjFaUGqbjAUGz+zOuZ0Kc/Ybi/2/gwZm+zpOAL/tNIaA0XK5LkHUbDF333b8NvWcl2VYD6cex5ONZHfBTGi4n77u6YN5JFl4tQl1yHBv6C5SSa7hLW0UYNvTTYW/Tl+iI+B61Kkpjn7hgtkKuJ9hqZa0qCowExW37LZIDxRxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PQLwh5SN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PQLwh5SN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A269DC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760073593;
	bh=nneKHqHY5q/S52Z38yC227AcCNYtn7mwhpY7nuAnJUg=;
	h=To:Subject:From:Date:From;
	b=PQLwh5SNAT+PgLsZHHNoC5yFIwegBbrlz5MHbv9cwBZn4zeAkpw6Zy7L9RndFKFGA
	 HBIHxFhg7n64CaujNBw8E+pkbcZTY69Zbm9ebaIcxJC7Ne/7AQPU1Zd14yQ9v5mqf7
	 VjPXwBCoJcf8ZTEU48psEyKFuWRKQ7omo+m9jLld+zFMqxyEh1tUU+JQ6mhs2TfVbo
	 dSgCTBE3hyr5iBAl4gWQLYtfBY0lqljWZuNumi4sk2e84RogO3bALVzXeg9fvsAPd4
	 Df6lRw+Gu8jNa5Y3oxLVjhyBCvFV65t0767OcpVUDbrzT1+3Gb5RfTiEjL40CoG1Pq
	 CHHdpDBbnf75g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1E5CAC5BB
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176007359357.20780.14728421440686367059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b3c4de7f41facbe3fabbc0fbd06e641ab0273db94205d16818bfc4607d4f425
Date: Fri, 10 Oct 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760073593

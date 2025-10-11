Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2030886340
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760146794; cv=none; b=Sy8O0WVIpECTNRO+N/KJm0HdtIg8wraK62esgTSaGi0k4QkmfUVt9fT3JSewmNOq0aomcGb9MG6qzPBiuyCHcXYFfZi/WmVLKnxPrFvLe2eyimSlZetRQqwOKgq6tQlvzeeCNZVBLCmRdDePvfueMxQGeqyFsU9kWb8wI0ibwpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760146794; c=relaxed/simple;
	bh=mxec3+v2ecDZ+LTMcm/4gxm96OTdlrIs83tbV/VuBu4=;
	h=To:Subject:From:Message-Id:Date; b=b23AAoyp50Igurq/TN1lsINQYGN6YtWnpaBYMMNDePDKInlqS1slO++jzYEzlqPwG585wxv87ezVXEVqQjDgF0/hvxVIVjKnK3foqO8hnrQCCSGvrsPh6lvDH/qKdRj80e47oCCVY4Rki2So3PEfHOQq91IBPe3g3w089Dr0cT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lx00rSXm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lx00rSXm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5594C4CEFE
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760146793;
	bh=mxec3+v2ecDZ+LTMcm/4gxm96OTdlrIs83tbV/VuBu4=;
	h=To:Subject:From:Date:From;
	b=Lx00rSXmU6ocfA5Zhq7/kj9DsVN2HhONrWuRWSqksO/nSXXgxQ9dh54pQvpj/Uy7d
	 71oT4IjdL5LYDK5U24krL8f99z0DU7B+U9KXxufxhumX3c7WJC4i16LBqezgxHQ8ot
	 4YdPhOwI96Gzh4tGMAoH9Cgw7cJ+/jAQPdBzmr/0pPDzaDImKuqjWm8Dis+boskXe8
	 aw3p25YTJ/AysNYKMDHBir3iG0m+j7nmI6u9ztDcCBqWLUSvHNrvlqGBFnmpVtaye5
	 m9I7SJkYudsKPs5+Agy0+VgPUoeGmx87HCnlzB0q1ZjJj80UAQzvQcgIY6ua6ABVG4
	 bwGAQjONCKiQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95328CCD185
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176014679358.24199.3176306124009983977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5d815c41e4323f812f53db34b5037df245aaaa5ed7359013ef67dae72a91873
Date: Sat, 11 Oct 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760146793

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F301885B7
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731392154; cv=none; b=pkxEjI/B5OzUnFBSb7zsaCSmzvrYCRPOVWv5Y1FEpWGgBkt8nT3AM9Ng/r59QSDXHe4bdY/4CAVvPm0WdiRfOjpFNXMH95UBs34m3AgdwjO9Hx5axkOMx34n9PrHu2PMuvHG7MzzcMrrqqmlB1V4YQtBcTASiAZb2fqx8ItYc5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731392154; c=relaxed/simple;
	bh=4bwFyRotegm2wbqJ5nbqxlOg340NQfYZrFH0Cvjb1W0=;
	h=To:Subject:From:Message-Id:Date; b=n9kK6858g26ARyMhI9BJ5hPpqjWTeUlFxTCquvAvMqKKqBwh79Nc3ziewLAozXU36/yU/Q95IJpZGvRt7J8cgL1FL5SXhwCZLWQZVKrSTnNj58DY/4/W8W1zpnHrgHdR0e/jdxzcRZkrB8boBEoc35QAfli1HAoQj61o6sNBJVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cmEcyIpG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cmEcyIpG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B53DEC4CECD
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731392153;
	bh=4bwFyRotegm2wbqJ5nbqxlOg340NQfYZrFH0Cvjb1W0=;
	h=To:Subject:From:Date:From;
	b=cmEcyIpGG59CVBpfDsvpyqH2Cur5hpl5x77Gw3o9fRBuqtIjsYcEJyPj6WK1a5DW0
	 2G0kshfwXm+sY/h+ZKcgXpipyW4cI0ljnRLqGnR2Fq63kBkCwGuKvfV1sbJiM3SbLG
	 nnENd6FJz84KffOFiK7zMeBVDCU9JCsdgE16zFnyYcXwqqo4QG9zbtCSOo4/+UGoFa
	 y/LtCZ3d6QuThmdLXUPcafZEfn0H6Y8z5se22O3XJsxZupQfwMEYEd27A9F+lWpS84
	 61YpTzZxqDSYjQysxShPIodAVEOkpu01pyp57kDGg7Tm6IpPRiK36O1vxPJjbrnXBi
	 Kzl7LC0SMOHEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 992F7D41D55
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173139215360.20915.14349180205405458293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7334a8c290204bad7b93f62b309389bba946345345575393c08b7dd0dfb74343
Date: Tue, 12 Nov 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731392153

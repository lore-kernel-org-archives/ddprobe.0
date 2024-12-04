Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295D9239180
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733334954; cv=none; b=Jj2pSWCsshC0MEQJnn0xy7grn8qZlBLHDZxSj9DoSi879HjnP5DEeDCJ9YJBk/nCQZV6H6HayJ49QhMA563kGSw5ZkpVKdP+dPOG68GRGngW3HhBU1gjJpsvdcrtlLiNOT6t7fNfPT1QC5d+Ax695cmjR9H+MgdkE1ti9SWLrAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733334954; c=relaxed/simple;
	bh=jCilq4yvpIoOypaOWoevXOrqRkiNb3hbAsus63g9B/M=;
	h=To:Subject:From:Message-Id:Date; b=iTC09H2ZDMG8MdkkVDFWMVPBOE020w0lKuWW2FVDi28HGxPj66dXL7UsTUmxRy1M7NVqCUp4V0CTa5DW5EnLJ/21LmFSrKCpNovf9mH7sTSqUT89+VzcyxMgOk5sAVHjct2eGn1FHIvHysLEa5NW9oW27gRVQOGtB0HKd+szQq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rQN1+YhZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rQN1+YhZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE09EC4CED6
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733334953;
	bh=jCilq4yvpIoOypaOWoevXOrqRkiNb3hbAsus63g9B/M=;
	h=To:Subject:From:Date:From;
	b=rQN1+YhZvnU6mVIYNQCMNCL7mNiRNH8LKFgYJHBRWrJqmjTMuZogBiYgBV8rSqXTA
	 +Nz96f+6qE76iI6yasisJP4q06WNpSp4m+wIa6qd9PK6+plHUgKbQHPjWuCA6pI5bA
	 wIzvg+hVHXCNL7gB8Bro1N29yNYZPNXYgAlORvzI1D0NishurmnPS2W5Ri1V44PB4B
	 oopdpiEmypqp2VzM/gf3Jf7rQdL3NE+TJYjoCfzbGxxT10JneM66UMZUoa5tsGz5YQ
	 45BuNj9adLg5OjnmP7alYW3b6eELZSL66HrqAZPuC+Ql4oxHQVK16NyatrmYabbUUv
	 a8hzNDmg9bX1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 984DCE7716D
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173333495361.25531.6293936281117340554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a838638c218def291c0d11b1ea4bd36baf258ef028f89431e79256b1a972f76
Date: Wed, 04 Dec 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733334953

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4222D3AB5DC
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786521634; cv=none; b=f3W+arr2+bK4PStegRWjtc0LSwVV1bMn98kpwaz30fu7BzoklaK4mUkFFT5MgtJErgE7rSW5iEWArdDhyZw81pk2R5iBq72KJVEpw89iQthRnS6t1WeI/1T8KblIot7kwxWBvgo8MYfl/D99Rh2dxInVNqZh1w+ZQcvZ7kAPsQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786521634; c=relaxed/simple;
	bh=tZhKKGGtsfYyeGjN1S2wHLLEVY/QTxWxHtHnw/oobBM=;
	h=To:Subject:From:Message-Id:Date; b=Ils0ZQm+1bQeUKo8+gE6zfjsus5HnKoTCPqGjWp117y9IOVRkxmp27p2bnSa0zbfUXrQGrMccF6aweLMpQz6u2wijUCKMT8SQbPFmutUEVnUaEURhwTXtAf882Pi03lXgs27sL4x3Ix4MFjwL/01lpe9FaudJ/bdd1YGetquVR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JXronTLU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JXronTLU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A6EC2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786521633;
	bh=tZhKKGGtsfYyeGjN1S2wHLLEVY/QTxWxHtHnw/oobBM=;
	h=To:Subject:From:Date:From;
	b=JXronTLUaCRgO6F1bprBVqICKHDhdM+RESKqqznFQaL4uH331CiSo0G7HnyReyu96
	 mYCHCQanSXeOHEW1Ut8kJ0gXlBfkjYKBxKTIMNI8/qmcnHvCpAYztfBWLLZQnGSmFC
	 hYUz5T7jtk046bp2uO6IFkRbdE0IpCGQ0/Ntzf8cYb2DE2eJdJIC3hKN1dSBuynCi0
	 LI5Qy3smmOaj0/xsQYc3eGnhF5KGaBu/+/Xi1e99Doprge2ml6p36B+bWQ+x7lVtyh
	 175VOcD9/0T9v1mCDfA6OagtpShhAnvJw0KJhwHqWTnPUjwROfGBFrDw4IBIh/umLA
	 1pLAgLNCZZsJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7B9EC5CFDB
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178652163374.14739.18373680825759315605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b756ccfb8747de31dbeb03ea6619fa275d003b1a499b89834a9f57b6415fe5a
Date: Wed, 12 Aug 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786521633

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D19151ACE0F
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726680953; cv=none; b=f9hKvglH5vpupyJPugD8ciWS/BNXZnxX4QlBdMbtA6cJNEDtUPYD1QaH/ztHA6mhAWFKjmO3t7tPXNkevv/RnvKvGC1BhRKli2sQE6NlYUXcNLX1mIXFA1Yg/1kquR1D63d0c1KKQE5Xowrb3lOsWdWC3Yj4IuuCy/IwCc1/HEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726680953; c=relaxed/simple;
	bh=QJ760IsfE0jZr8lpK3E6U850SIO2oVh4jodmpx0dI+8=;
	h=To:Subject:From:Message-Id:Date; b=dQ/exDR2amqjVCMyI7Vjr7+11gib7EX2yjPf22Dgw3E2Mir5AOsWRrQR4Mj+NtsYXJiTtCJKHTctAdggAnRUT7yUgG9swvmayo+6s3n+JJDarUv6GHy9v79NuskclJG9g3BWwaamB/q2OelQhdUpKTfFkbPdjChGkTj9Ab2njwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o+m2u6jr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o+m2u6jr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CBCC4CEC2
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726680953;
	bh=QJ760IsfE0jZr8lpK3E6U850SIO2oVh4jodmpx0dI+8=;
	h=To:Subject:From:Date:From;
	b=o+m2u6jr3SgtfMCHTOEyY0qmMl1PIH8lac4H5N8lZgKHISBEEworr3xOHiIDc/1Sc
	 m/naehWsEm016T/knv0xa7eNyJaVV5DdJOqkcteoOcIod7BZ3ke7+lNLjSoiVSySup
	 X/v/UTT2eM93/OaKMOa/qw9ESIyLc36yJ3rvOmhjnpiWIEKIjofnCIC5sRMX5q97eY
	 6S0zl0fAhjsUYT3R/FLXDMMqKNTjumsqNFJnj1ur8onIkhRkioXU7U0uwI6aJBJf5y
	 akvD5nPtR9TxMDFdDpW6fHI4ACDvbJ4jbd9YfgHRYaOsPlWNdlKo4/snYZ3AUNcKjo
	 RrKO/i0Y1sVBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EDDCDD54F
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172668095358.23163.17370089663733573594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7000f5a78ab68dbccc9bacc98582e635b15ead3ccf2f1887bc59ee9cf227823d
Date: Wed, 18 Sep 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726680953

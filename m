Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B3D812
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721955354; cv=none; b=RfYgCey98JZFTGUy9ERrKLV8hDgudThDWXwayi8IWbVln+0NQjU8Rd8+PgXr9YsT4BUQ0swyJFyLB/4SMgmDZFsG+QypEfHphe/9Vy4Uu+dE8tT2vI4jufr/ZM5rE6r/+bOKlImAfG0XQ8wCam8Yw0BjjMRrfA2UoswaUVe8oA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721955354; c=relaxed/simple;
	bh=rkC7goUw/1+Y4/E7NpFZ2Hc0eXSaKf+6QhipLcSfVIE=;
	h=To:Subject:From:Message-Id:Date; b=Tue4aBkmdra5u8yuqSV/ds0UuKzj9j3CL4ccfVAfTEK7ifOErcZmZ6zZhMnPyHqOTaIUG5/k+z1v5C2qbKjJmL2xzz6D5x+CrG5sZy9LpqApjjq4tN5csFxblIzgoeK4w5/35+GQYQZchUJyNrf7wjrRMR/4dew5anCOKYrm9+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h92xWiAu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h92xWiAu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A979EC116B1
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721955353;
	bh=rkC7goUw/1+Y4/E7NpFZ2Hc0eXSaKf+6QhipLcSfVIE=;
	h=To:Subject:From:Date:From;
	b=h92xWiAu6EB+immkj18SrOSGxwXuErCT4vOVfRjR+IwwKkqZxHo4JEns9ezE62rfm
	 piwjvRv9/KAJjnN8enUMes9eAHRxbDkqXM9B6PXepR569p1yQVpZqjUpXBvn/83/ac
	 GUJE7AM5mWGzY1DmYHyAw7uT45oO2hqUr85lAflrDVSthTge7o9piHLTUvF+qi9Q9f
	 m+km4pZl3Ug/Bho5ii8zJgyaVuB0rNaO+cqTIo/WPsVTIGSSJi5dHklPpdbPFogeTd
	 tga2vu//2AqCYfVEhX1b46iLkOp7CU8AEsqwx//JPvoq/ZEoK5RTeramB2Hc/OotEC
	 ONhDrNExgdWSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9528AC3DA64
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172195535360.26369.15508075139576566375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 084e3cc7442cb0d32e18e9bd370e09ccbc93a4fd27e7325e6df0d4d9e5c98b77
Date: Fri, 26 Jul 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721955353

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6EF22425B
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791264634; cv=none; b=ZuFl8YaU9Oy0j4nFND76UDRcEojeYLO1AviyBTsM6M80sFleoLXv3JmdNn/5M7NjfsY+YUVNkTl4DUW8emomi983kUZ2zULrGtU4mfdTL1xMKJ1mzVa4B6Yd0zoTaNygEZqXG1aR0p+Xoisv9cyYKYjOcsgSlk7NY6Nks0QXbcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791264634; c=relaxed/simple;
	bh=trKy6E4xmHkUOUh/bhPhviTqTQtU1qcgfFGR2XiL4kA=;
	h=To:Subject:From:Message-Id:Date; b=lM9s9x9Wwx7w97Av+ITB3vILNWzKcHnCTa4KbVddKqW/TmAPQzMz51WIZCq69z0TS8czSV4o6zNeBIhz1a4FEXKeosJ2in+tOXkdkn7iUAhtiZRHw3ErWlWZ2TdhAHuhDCvRWMji5QQtG7xooYTpU4MeeIzlPoWJ7bYFIeKzMhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jFjpEEdK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jFjpEEdK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE3F4C4AF13
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791264633;
	bh=trKy6E4xmHkUOUh/bhPhviTqTQtU1qcgfFGR2XiL4kA=;
	h=To:Subject:From:Date:From;
	b=jFjpEEdKWRnADVUsjvDIaR9Fjg54i8DkFBBznvk7dXqP2U/FfX7VCOF/IdiF9WK6B
	 5fIABMkIFSD5/O6DS4zNzeS2samh2h5CsSJL/FPWoUOBMthoPNivDnOHJYJGFZqvUb
	 1v9Ozyq0B07E6y8k8yq92KsW5cuNQj0zrJfntXGrjJLnqGCxi2EzO1N3WOm3/CGXEz
	 COP7939Q/wGUsdX7c0pRBWW/lL5QkU74cZBzFAsj0TVJNR7yYrSvexuakXzI7q+R+i
	 WQl4Dhkxuc3df06hq7EsYzLdap4K3aN5xkFl6ObwtC1w8PkYEzt0FsDL9moSnKzqR/
	 Re2SYxV1xZmUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB53BCA5FED
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179126463369.18679.6264164855256707302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f22c60e79c530a5f28cd5bd61f19fcefaa816e0fa3daed7b42f8b4010319b2ac
Date: Tue, 06 Oct 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791264633

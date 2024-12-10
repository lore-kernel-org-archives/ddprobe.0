Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2411E23ED41
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733856954; cv=none; b=rday4d6Mm06fgZKq+MXumWqC0SQm2V2mCo2k/MX5vdxZ+YsPlkyh4PA7p+kKoUJk8LHjElM01XQBnCa4Ffen2qrcLwvO/0JTWff+uv18Cs0ko/R8yCZGvGbvfRL/ZVRuf4qzPl3juYAYA+BEsPnPBAHGO+1K7QUH7exfznbmyqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733856954; c=relaxed/simple;
	bh=t33zjeqsrViEalTU9B3reSY2RFH+szy86CS42ynzl8o=;
	h=To:Subject:From:Message-Id:Date; b=sETRYx+UWkypC/wiZk09Io/N7OyH1AREtiqZsi0izs5mUl02JjXdgO/62auR53kqG8x3aEv/kKtSa9yuy6FZLY8vR7oEVYtNsWiLZQ6ckXhCUYWtCP1fzAQgSF+ZdrqtO+EmhQgyF1139Deuz68Sg2eG15z1CRSLQCcbvWM8GWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B/GN9RlF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B/GN9RlF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9404C4CED6
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733856953;
	bh=t33zjeqsrViEalTU9B3reSY2RFH+szy86CS42ynzl8o=;
	h=To:Subject:From:Date:From;
	b=B/GN9RlFQcElnPyjQtzJ4b8/zIMrJS7dJPwszxRzBv3TPmCgHTgrfbX2hDwnr/xwh
	 8nmXwY1MvSzU1yUDUNs1ZPDimAJKUENn1+Ilgo2ztUZoQ7y5/Ga6cxSoPVd8YnLz7e
	 G7v27Ez36GmWkZZI58AbQnqR/pYVE+5SeEHSpRHP3qmiUoSkjB8CVTs1tmEuSwGp9q
	 npgVFhJDLEntjGOtF+EhnZzxuGS2rNi1G9848IGxuRrpXb3OlBIgokS7V4lVwXvl/q
	 ELodPmf+4AwGiX1DLApMih/tZ0bLozeQUj/3AVGcoLDJWZWsT0V2NA2WYoyfKJynoR
	 BlRrw2SSMhQfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A9C1E7717F
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173385695359.25868.13738565508225367866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54b01608a5464ec5358ca445568f0db01fbcc6c0dd2f81aa335ed05fdf2d57d5
Date: Tue, 10 Dec 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733856953

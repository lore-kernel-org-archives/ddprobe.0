Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FC9226AFC
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 16:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718381303; cv=none; b=GgrPJYyjfbIS6O6Q74ub/43jpzRsv4huYSp5oh83S8p7HCN+NyWZBZqFDSWk/3QoyVP6IKipvbWHgluqQY49zJt3isIbQckrTIoMce4Zhv/xGfljsCTGWWErWkvD7EcEXUdLMqKPMfrBbS8AaRgiPLsftD/5SGZ/ShmcE0+5hiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718381303; c=relaxed/simple;
	bh=2Q5ooA6y3ZWQhYlBSQWsTcqz7nsY1GD6zX2ioE2QpFE=;
	h=To:Subject:From:Message-Id:Date; b=PNqmJMs3fQ/0NyX8pLDycv0A3HJ++kDSTdkZNHq8ddL4dchJhaIJxgkMQo1ss9388vmJQy0ECJjPhPMDSI1Nqk+e3RRxqOOHa3nUA4RZpL3SophXgeBjBJbXuYjCpZD1Wo1kSDKjGlXipr1xHkXsP4IdAcxPx52g3gUvBO3LZms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MFCeSJwK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MFCeSJwK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA819C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 16:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718381302;
	bh=2Q5ooA6y3ZWQhYlBSQWsTcqz7nsY1GD6zX2ioE2QpFE=;
	h=To:Subject:From:Date:From;
	b=MFCeSJwKn6i+Q2EWGSv34atNZJmBXr4/tHy91+Q0sCWGwKofH8sSJRiK/+WSKDlEG
	 jIo0U2fciuNz//4jDQXoFXbz9TnlwkgrsTxnes/uGlWmJCBgGQYUyH51mCiwoHOmPH
	 KkO+QxAV0M6Zf7GhfK/ptjsdQ7Gz1Qb2Sx5VaLRIBUAyXgwc7kypDNJK33HPQGpoVd
	 QpXGZFIQnrdX4yH6WwKPgCzNXucSIuCxVHo7VUlEAx8zB3ntApAMYSxG9hAVdb32Ql
	 qML/PgSEVyKpWh6z9/2duq6vXwXkI4U+N0MHKfq/6kqfpFv4nW0J6zME9n3wBYB0ly
	 6goBWpby+ZMtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7871C27C77
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 16:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171838130280.14612.5996066645291987331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4c4bd21a6a98fcd77e76e5d12363d7f41f8f1dac4cdd3d8e9012c6636a7aee6
Date: Fri, 14 Jun 2024 16:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718381302

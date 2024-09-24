Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25BC37F460
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727210754; cv=none; b=XEvSIVPpR8iSlp6+b8vg0shOyzlrmGNjJj6IBhqGTYAVTo8Ojb90GoXtjM/3sCTjNSNiceTsNRgHeWQJGSBnIO4HFATJy/DNaVRRo7DxOeIAWrbArVJTRMXIzWPz+yC52whF/bmeA3Dm7O1YK/lnpFPq3P+UAiG3ed1pv4edoNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727210754; c=relaxed/simple;
	bh=HHFDLbAjgyRfHaBht8/tO4fiol9MAQjmsmEYjHzZr4w=;
	h=To:Subject:From:Message-Id:Date; b=HWzihcnOABuXk/2p06/OmYLhbcM8ovS0AwUKXxZkOW8JSKtM46Nn6yPwwHRXvOgcKNjBcoXhSPmUbXYYMQ7X52ke3++Zu72rrxKCfq83KgJnTzRMzpsXGrPt5DR34CpoKThxaJDNWaCAWnz+yrHmyzIfjs2qBtjvewIriQBZc+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g7uB6dsW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g7uB6dsW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACDEAC4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727210753;
	bh=HHFDLbAjgyRfHaBht8/tO4fiol9MAQjmsmEYjHzZr4w=;
	h=To:Subject:From:Date:From;
	b=g7uB6dsWloyNfm4RJSfQd92PEhewX7bKLBEIr2DNjO3D1ZKeNR8mFk6WiIcDLZLF7
	 bR6QGlIRh5zN7bq4VCmL29GwUKWa8zpYE9DQnt2RWXL5Wjr8qwT6jo7XB3TGSNzMIO
	 8Pxvd2+VhlLk4G6YZg1wS3AZjorFxMQEVRTRMzJfOHIewB1lfInV+jen/P08l7GyGU
	 TfNd60q2uy6JHAFUnkB044Qsuv1lWe1AxQQfMJdpAdS9S73IPqG/0CfvhsQYpnj499
	 Qa0CEGlb5ZGFFCSFqnRnoMs0yRZqM6+q+lvc5yWbsJeC8oTDx7GgX5fzLred91KyO3
	 yHoazEsHYZ9Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A77CF9C6B
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172721075360.14693.7622270794329472470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82cf9765dbb1687b06fbfd7a8d6b2016897aa1c46d03308a7502f49db7c28ac5
Date: Tue, 24 Sep 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727210753

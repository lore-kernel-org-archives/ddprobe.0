Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49EEC17C7C
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 12:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717332323; cv=none; b=Ih5KD/nAFQzAs+hdfqrP4PG0RXkX6N0cVvEj2Sfhp6gk6a8Orbh0rYaZorGfAmHQKqo5skwG3BhFhManZ6BOcqeF42Y1zZ53B9nC1Y0toviACxu4YWjdXtoj09NJAWBpnoxvwlYIq8fhlOpR22ejpew3OLahrWrWOzcdVwcXScM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717332323; c=relaxed/simple;
	bh=Zd8UvBFTzYB/jXTL50B+HeBQXVd2yWQVJSnRSGVyl4M=;
	h=To:Subject:From:Message-Id:Date; b=ASf7TSgb+FFbnWS1D8//x1Y0kRxzHBDBXK/9cwhQuG6rTw/mFywatDC9iUAD6PB7tN7buXQDcjaL84xtQcxvF6DywUkhowSYWoeuxCHtWIhyAC+AMuB08ikxImx8pFXHznQy/+lq2FN5NaOE6bGrvXGZDoLBG4ugqHdTSNBXPYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cf/OwM/S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cf/OwM/S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9D5CC2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 12:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717332322;
	bh=Zd8UvBFTzYB/jXTL50B+HeBQXVd2yWQVJSnRSGVyl4M=;
	h=To:Subject:From:Date:From;
	b=Cf/OwM/SDx91zQCzyIhUDPq0pa1DU9IyS3Ke0D+GTUtDZNXn4m6Yc3yuKkr8FJRo3
	 t8/Yrm5XoDC9DzI3w6iktAXUglNBuS+M/Fk57Mzu53Rg9STyuQy2EWnOr+L6Jk0ASA
	 /s8SsoCwo38uKNKwj+FNLLi1eNOGCHZH+tLtpJ0oYEv9eiZte/icVbVsG8WpZoyWdZ
	 jIJp3RzwEyvIAvLASTXVIU2klChqPr8DAtF131T6TaFMaySZM5yV2I9+AbB6M/E1I8
	 gFEaQpCoTbnaBiBHcM5Wed6+Anzroif/TsS9wPrikrQV2VWbYZdjPYX4GU5wDHI+Lf
	 V6SeZBCxHFhQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2514C25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 12:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171733232277.20760.6851463925729945424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 502ef9947f79422323b0d76f8c439b4615947fa0bf89a8acb14d96c0f5d5ece4
Date: Sun, 02 Jun 2024 12:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717332322

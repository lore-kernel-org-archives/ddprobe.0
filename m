Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DA361922C6
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 07:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717572383; cv=none; b=RJs9zvpsIMK+rX7FDZvhDwXYiFe76ltnbcoF7M0CFcXr2e8NWDTjZ5vl+OCAa8s1/zawzWNHToeVeBEe0CIoejw8ZkK/oIgtUlo1O416yPf4eURb9FGJW49rBVJYAQocYoIj4jzrGFzUb7ouGwPv99/7tu5GoQ0tqEa7MQei55o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717572383; c=relaxed/simple;
	bh=tdLcIwVi2qNTCCtAwrzdA590j6yu0q9ih7zuKXCA4HA=;
	h=To:Subject:From:Message-Id:Date; b=YS4xfV4EYykl83xixcyVs5kd30zBYlm7hEOfqCax0P6amBS2c0hqWBwXKr0GPo8qRdQx7/iaSElr7/W5AZYeZmOJwSoYOjNFqI7BBXmO9982oCWVHUaKxnWaZHpHQthbu59w2OsQcjHV4W/8DwOzDNDYU66E5zHX+bQHebpwkZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TnfmqWMm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TnfmqWMm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6414C3277B
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 07:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717572382;
	bh=tdLcIwVi2qNTCCtAwrzdA590j6yu0q9ih7zuKXCA4HA=;
	h=To:Subject:From:Date:From;
	b=TnfmqWMmRjQewyCEhs0TAj4Dd+GwI2TqN7ILCNpDK/YeLmDeaI+dzf8o5jqjZI5mt
	 yDULqFdOKy9fHHfBZC0k+OzhuIE8bkAUKiuqOtH5TcNvxTu1gdS/SPJ8YbXIlvENMW
	 1p4l+lQKTvT518kWDVn1jb3DcacXMGFgBVHdZUikSdEUEfcmBhUuVWaqHCkiwd/0V0
	 1VGofrZ8WJzB4On6+OHRbTwblvlSa/md/XISE8tFXph8qDoS3Rxa46HeINKgZl9+w+
	 HjdHuTifhDOTNL+NjrdVxktHqMAUApZpjrHLUSFApOzgaO/DFRHLeC3FxI7wA+5b2D
	 WO5jQU1tqxJ2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C24D5C25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 07:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171757238278.26362.2288823606498089919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf5511a047679fa7cd4092754392758dd7976338019af99c94d998391ec1d002
Date: Wed, 05 Jun 2024 07:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717572382

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 609FC49635
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 10:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718534903; cv=none; b=X4zQLlgyoYD4E8XWy9IpOPdAUl5pd4fnragKHlgUpD2DZWvXWjum/hdXJ6UKHJxV+1LOKFEJBKce55uNa7K31VE4e48H2SsRZY4WhQCj9DBFMoyTWDzcjsJY1ROzIZNu9OaBMXTX/q4penBB3CqqTFsAZtjdBSeQBel3FfolnqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718534903; c=relaxed/simple;
	bh=0zYfkzImmmWOdmJvf2jzCvUbZ84MII98t17IWEuVk0A=;
	h=To:Subject:From:Message-Id:Date; b=XEUIuxl/KTcOtvIY/l7A1+AeJAKNLlipD/1rRwnLdekmVKyb/nGJ972LECPzdooGL+GUAsTm8xtOS10BM3lq9shsR4k8YUaTH5ywFycvGW8fxinppIT2OvC89Kmar7SCpgmKqaXkrtyfto+IGIWF+bNQ5pSRun8ZRbHqBNDXk/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a81JdIRo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a81JdIRo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC555C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 10:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718534902;
	bh=0zYfkzImmmWOdmJvf2jzCvUbZ84MII98t17IWEuVk0A=;
	h=To:Subject:From:Date:From;
	b=a81JdIRoWmh60juiqsz+gqvaYbpnp/TieaSQ8wB9mlUvIMWHCJ5iaREDqNZLJB+0W
	 CEyQfYsz9UQWbHq0Ghb/r/VnnvhKhja6oDLtnw8LV15b9rr19pQGuGu7Qrgj8gQNPe
	 ySpOxcmqLS6dSO1D8FwnkJMxQRUajOXGI1QW07QGeSWJpMRtdiiIQgS1Yq5VItbcD2
	 m2ThXM4UNCuERjA3BGnnTG4yxi2ej+PZKBtBDHzG2DAWOcAEevMsywp4aGxo3u83bk
	 5jMuXUbWhS/RVloWtTtpdSSwygv1oEq/5rAPyjPXaogn0TC30STv+Bsz9VlmIW5TX0
	 gKNJRDpgxLOyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C82E5C27C53
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 10:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171853490278.3453.9401926007954270677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 912eac447323b4ea68e22016dfc4511af1e05f05d99e215076bdff1173b91eb8
Date: Sun, 16 Jun 2024 10:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718534902

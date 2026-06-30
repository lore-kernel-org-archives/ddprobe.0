Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA8B40D574
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 07:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782805114; cv=none; b=Re2XdS39+8wOXCfZHp5j1gdNdDSV0NImwX+vYHeLYAp1b0VN6rOMjZimS7Lvl7Y25YgoCjKGIakvGzCGHVsn7wDShuYGlHTjs6OUM3jmxDg0S4gvvqGBH7O+oYoKe9nPhl7xjDvUvjqZCpORH3QMEImF0vcEK48rqJJlZ8OVWbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782805114; c=relaxed/simple;
	bh=oFWHJGhRsAx/pS3TYcPJKk5pA7X7P13SoslpB3q//1E=;
	h=To:Subject:From:Message-Id:Date; b=QGJMNhTjGYwHV9X+OdRb1ZRyxvlroaq3FGb1u30byQxD2szjZLdvzVkZpnTUSQ732Ej1o09NQc1yWywBuBFmA2tGPuuQpg0e47FoHXMd6fkN5vNhrXsfW2sC+1Pnaw/0gjyN1XUBBJF+0bGynXftMQJqO2oCgTpC7pvkYc+Mdig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DQnt2+XO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DQnt2+XO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE6A2C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 07:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782805113;
	bh=oFWHJGhRsAx/pS3TYcPJKk5pA7X7P13SoslpB3q//1E=;
	h=To:Subject:From:Date:From;
	b=DQnt2+XO6XscxM+QQg38WHitw7TAaj2ecdLD4FFq4Kj/6Erg3VWzsh2j888IJ586n
	 3uJBHSIwURBQ5sQWbthC0yaQX1F2v8iw9Oa1njfvciNP2pJi52Yj3KeTJqe5LoY9ro
	 iq7a4SQGytRLVBW9jLqyFphrTE8Djx6mERNWmiKX3ZzSyWTIZ1SMoCpuGMZAIs5yUl
	 b6hOeQ87C/VTUdGUhu9U3xGuEzOVNqIqWEMRQJRg5fOQqS2I2LZjLpAdPStQQ+4lRy
	 ve4fkhJ5nS33l2nLMl1SewrDqV+eimTvP3Ao6JJK41jW9rvmqn5O/uGGgqFFS9CzE5
	 2GcvVsPkCyn9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8455C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 07:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178280511368.30924.7156958283324990825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1039657e02f8318a4ae7f29ccf9d90a5ca158c38eb4288187d6d76b1277122dc
Date: Tue, 30 Jun 2026 07:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782805113

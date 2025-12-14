Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204A81FBC92
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 05:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765690974; cv=none; b=DkdE+re85BXAEaFfUAlcsw4IyDInyVfRheoj470IkR87vt9ykfxLaXC2Lszf6Qo/LPm/PEFUUW5+Ht00KWojl8+H7kOsgGjwuf+HuAvRtXbIGUSI6tU0w/0eByzcHqtUZlExuaYGPE6rlMJwVMHTxTa9Azm4XNyVu7Su7I417p8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765690974; c=relaxed/simple;
	bh=/CrAQlNmjnoohPAHEkmzFOC1dm1409yYnM8qXgs51Ok=;
	h=To:Subject:From:Message-Id:Date; b=Ax2ZFVyvlfAHj+oDo2EBce9Fgyt5Y0zvZOTRSqbIjz8p9/BjKivRFO3Nje3S3LqLkuhp7JLaiHYu2BTEJhy8lJCCjeryOrzd6fbTOEwBaHaGfiGjw0qf2pLsPE2I4dA0r1tdn+9cWiT3IuwAgFZJuX2eIodHnkX5xjvh49pArwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L14H9ioU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L14H9ioU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA64DC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 05:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765690973;
	bh=/CrAQlNmjnoohPAHEkmzFOC1dm1409yYnM8qXgs51Ok=;
	h=To:Subject:From:Date:From;
	b=L14H9ioUzgut2M+K2VJJCwOlaxMuAK12TwstTQLdtM7oRPnj9K3KFH4CfSMuoHETd
	 40tKAr2ePTx5Yoxk8cJESJ2jTa7FizGYpwpqZSbvDmR3kYkY0Xqs5Ko5XXRgZ03J7f
	 YBQQq1P0WtMOdKHCP+2hqoXOz6CXE8vGXVVzAF0Bo6/QFV2QJNiB3uTqcTwG8+jjPq
	 McKTeD6neWsv4WYcKzvl+417Fx2zHH3SuXhC7cV/+OrHAgN0y1Eu0LnJygYVhF6ZHj
	 YeijbWMqEVbJDQW8GV3CBmKBQbVFILgN9RhI+FpRUNh+eYQvngdJBi6G6iXsMzUXH+
	 Rlz2rrGDNP1lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941F6CFD314
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 05:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176569097358.26517.9546014130014137536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a68d71fa238e8b3390172efb5ba6ccd3e64acaa1f1ee33e7da16900394fc18a3
Date: Sun, 14 Dec 2025 05:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765690973

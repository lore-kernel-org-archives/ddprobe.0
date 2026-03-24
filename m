Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D6162459ED
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 20:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774382694; cv=none; b=YuYvSkHRPBIt094e9XMgRo7DU38inpFdZMK5Aj2oEBwwwkEKsCU4073ulcIHR8RiWMbcQsfDwgkjOE5PFHGGIZT9J6qa+HvrfWQexY4xd3KjQ+3lEKOWNXRjTMXFHG7UwOClt6eMLKa30sTDnQeproSg0RDFqtQbnovXE3Xek/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774382694; c=relaxed/simple;
	bh=ZMg/unXf90pvO8Lu+kUt2PsMpyF3by5NepTZUNrS3tc=;
	h=To:Subject:From:Message-Id:Date; b=qIB3nDDS0ngVzSgQBirsOWpJMWUkEc6zazqX/5s7yajZe7P6NmcO3VRaPyqp9qycTsxF6JxjAv6wItgnU0WqfR1ZHt+RnGdqh0PmZPUBAn7Ir+jYGHOb3UVWAMpfWKIh2VGtMk70nBJgXnQehWn6tx0ERUmdoobwlpptUNI9Ynw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ueed7iC2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ueed7iC2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DE6C2BC9E
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 20:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774382693;
	bh=ZMg/unXf90pvO8Lu+kUt2PsMpyF3by5NepTZUNrS3tc=;
	h=To:Subject:From:Date:From;
	b=Ueed7iC2pmcQuy/huASrtt6Z1h8KXQ+mgPuylXfQUFtxGkDrQsPEN71w76LbBI/lp
	 jqpya9s2qM9xEesDccZp9QcnOCkVv9eQ5fe6Xklgp9BGeZH2DdR8MyUsI31F/KuTzF
	 kGxBDjQgrqq7x0t80FtPizEYsviSRkQQzaBgFgOli3lc++xIqPZydT+TnOM8cogjWp
	 RsyIomF7kG3FEYaBgqLYpgiYA1fOnl3FNWsFhQQ9Iexjk+iwUbHXlbo3ph/in+O8RD
	 d+BfAZE6+nbJmsqPRTCrtKuav+FBw7dSgKEgUmXKigVIL7WhzD8q7f/i1kiPU+A33B
	 6VV8nhTcZ3e3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956CCFEC10C
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 20:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177438269360.20000.9462127209734994763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7f6599e2ec786a7799a9b216ba9c9094b230cdeb20cce5528b8efa433bb3ddf
Date: Tue, 24 Mar 2026 20:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774382693

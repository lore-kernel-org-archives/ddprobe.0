Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D2B1F92A
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747174795; cv=none; b=g1sl0lkCoBG6dx/FUeRdEZM+SJ9Y6vUQ0dN8Q0OYeFMVOksX6efduy2/VdQobQODINu/gUQp+rQRMWr6UTbflUHqKavYxIY1ejgx4pjGdt35pmne+reFnbAZr2wK42rU5J+BWyf9VR3NlznY8deJsEiPxWwUY3jmMXYPuA6Rn2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747174795; c=relaxed/simple;
	bh=VryioVZ5LQDsRMsha2S3Ug4m0qvCens3Mn2YPox1vMQ=;
	h=To:Subject:From:Message-Id:Date; b=PDvcIQnGQxScEMIdxuXmVXqwOE7Xobms4/MCMF5OroD4RLJgFmbObyQ6ayvfZHyeRYejbaM7Y7R4fMXejO42+Uj3xfgvFxG1jOdJvDB460sTUyOVHvWgtrAeG6uzzQdYGEqlDppW5NS9s4p3AiX4Z5PNN8mPuT7/OZSyRqP+6qw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZRpqHYM3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZRpqHYM3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0757C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747174793;
	bh=VryioVZ5LQDsRMsha2S3Ug4m0qvCens3Mn2YPox1vMQ=;
	h=To:Subject:From:Date:From;
	b=ZRpqHYM3VqbqDOMfN+7M/vKGyTJOLPhjmUyW+mkzXhftrHsDFnXErexJhzDxKND4R
	 EgUqBMxBYzNe+D/fuWzBBd1w05jevi4x0GHVuL34NuF+7L7iBKbn220TcuwPBgia6I
	 NYOIXSfY8wQSi2nyPOoJjSV4Dz6DRUZKNgFy+9BGLh4Rk9Pc9CyJTQBJAHNNiZzq+j
	 Nsim76auw6G6yILjRSOWvH+rxOff7/wKsTU53NlRsi87sqX1RGWhHJZg+c4wxXBjg7
	 V9OCiIcOaHAKp6Hvr55ilyi6yHMaZqnluTrunaVCldzZRzNb3jVP7BATJaMaXd8pLQ
	 SrFQ/Kk7DToDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E166C3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174717479357.9676.13494060659648377757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6df8a3f7ec75921aed07eb30c6c442e18db30357f0e5ea1ba9cf1cd72e39906d
Date: Tue, 13 May 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747174793

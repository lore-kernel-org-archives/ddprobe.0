Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3CC3158545
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743974993; cv=none; b=LNdC/jSOtZ3nKK96jKa2JNGMioepgJcZjCpP7/Lcv3hVpau2dl+zg7uOMCbaRLv64AB4wZ2Ya8mN74gJr657F/oPCLeMJ0+PCrnyy3CRON3Y07IqEIngZa2pfR/7e28liRB2V5gLQT+w8/xx+eXcYqVr9ejFRxu80SF4ZWjzo2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743974993; c=relaxed/simple;
	bh=/nA9m23sAuu5DlaXTyPQIePKFq1t952qmoLlgyp9Tto=;
	h=To:Subject:From:Message-Id:Date; b=BKnD43bVpovZ2h9QVM2a1zEFZ7yezMCNZ1YW5AwaTTZhG6S6uNvt5E9tCUoDc+s9WT0d+CiwWGz2rPRLfMl0+YVFOAR3M0GW6V9+qOVEKWSUJQk4LHx1zwh6UpSajEbS+yvnLSznAi6NFA2Db/yTZVE+KYzqBsrUOyb/8j3sXKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GSfPUjLK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GSfPUjLK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC9DBC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743974993;
	bh=/nA9m23sAuu5DlaXTyPQIePKFq1t952qmoLlgyp9Tto=;
	h=To:Subject:From:Date:From;
	b=GSfPUjLKnK1X+uXasJ91QuKh6yXVNahe3ha7SHCd2kgXHuOSqW0RCjd+x6GmiIHR2
	 bg2hz0VoL5gC2LDsZTNdlAKlLWusBJfjXCCE0Ub7y2asBpacxlEfH3gBAF15e3SuHq
	 tmfAbzdxbXyoBC0wnlwHEkWKVMuO1Q8Hmj+qvEIsapUNcBY+m5opZ5pKIy3vPMGfhE
	 kc1E7wYUFmw3EgvtuK1D+FcvNYVH/jzayNX8HzwpiLGsi95kYolUxaSjugyNGyog25
	 GsszVynjV48Tw0S83ErvSsT/QLp1+jA8Anp8zk7dEbmWLVKLTZIxYKB13njbXLnkdv
	 NXm+S4w6IbxLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C6AC36002
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174397499358.18560.6239946736811389982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6134eb09f97f2c7054e83f83884e560bf25742b83fc26741233dee8bd36146ec
Date: Sun, 06 Apr 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743974993

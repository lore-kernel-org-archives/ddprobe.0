Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43DC73AE706
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786396234; cv=none; b=Fegf0HCdlQ1q/q8Ik8lkIISGCMYwkv7e2o1te0gguZhTFby1SNe6O9vQwyn196QpBJNMTOmserS/Vl3Noq4cCKB1lhAG0ou4YbD+0EUv4UJdm2tE2lBiQfnxh3J+RrjmvfdpG2HTpkSFgNRnFMY3k8G1njjHvuuRwveaUIPfthc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786396234; c=relaxed/simple;
	bh=h9wwu5dbhwKm/Yx5IBZS7WpXC1vuEOhIhUU5nhjxryE=;
	h=To:Subject:From:Message-Id:Date; b=Oe6yZ7SSNhDAN7z3plKyK2ztbStDa9aj9xziXU96LXzwaCitDmGeOyoTeNWh0Fr7ICM/7bbIUjK2How1lJTjwhr8L/psSz1AgUgoqUV0cFvZovPEiLpImn+NQbwyrayDjFkldSL7QJwaWsk0rVTP0eLDK3WTsROhkulW7ZqGcQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eyLcNtkr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eyLcNtkr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CECFAC2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786396233;
	bh=h9wwu5dbhwKm/Yx5IBZS7WpXC1vuEOhIhUU5nhjxryE=;
	h=To:Subject:From:Date:From;
	b=eyLcNtkr7kbr7cdEqNryk6iiKWvqwSQhntdKFsEsJaRqe+8IhaZIuwAfa830fITBD
	 1PIjt6woqjv67ZJ1dfu2fa3bHy8/f88FZZb9fwMjpEkUq6LnQKeqmH42o9BBCG7GH5
	 kc+QFshed/zVN1loj1AjtKcoN833L6lQraYq9V52ukP8PRXC5n11IiTToo8wIaoWb6
	 a3McgFvD4WZz6Yd/U281TKCZboixQzkjHASKAOtYVIUmvWTh0bwzRXxDGR43ZpsaGE
	 MKnZxsF7g8ExD2eRwIM38HIveO+C4INDreLs/6Hfj7KFRhv5WIeHFg2fA3ZGJe48Oq
	 8cdSA7ftLJ9DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB48DC5AD7B
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178639623369.19755.17011213113022507211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dde2c979260eb95dc3077cfe0461d0adeeb981623be673c939424f981cc8673f
Date: Mon, 10 Aug 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786396233

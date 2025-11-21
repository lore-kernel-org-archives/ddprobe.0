Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F8BF33EAE7
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 08:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763713314; cv=none; b=dhec2Zby6sB8Vg+1+DvrwZGjAqqHF8GtBuyMTZUsxmT6Qa+dPfJPe+8xL006nAC47Az77G8CtDRxRjksrI5eiU1sccE6FaSRe4chCZFqYOfIzFFdj7ma5Y256HEXsnOshDwdt1AZVowscq+MBP2wAXAPhbLxzJ9WHy4z8UvvzWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763713314; c=relaxed/simple;
	bh=T4T77bZjM7pUQjNsow3+ucQDfKYhwtRg5jcOgKxtZbc=;
	h=To:Subject:From:Message-Id:Date; b=uz+g/dukDIKZKGttXQVCrvA9XeKdmovGbLyBg6gko6u/PkxZ+l/mE66b45DeHTElEacDOtdQGGa3Ri/RL4lQe0nhJELCFf6Wtlvu7oYs6fU+cyhgFiwqb8xQNQNSkaX+qi6hI2hIQzH3dqrBdC7xhXVDDG8HeY3z90QMkt9B9k8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=btLUowJ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="btLUowJ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0797C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 08:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763713313;
	bh=T4T77bZjM7pUQjNsow3+ucQDfKYhwtRg5jcOgKxtZbc=;
	h=To:Subject:From:Date:From;
	b=btLUowJ3RQVpLdtmXdouqkeCbce70TsRYDRieZ7btFM5IDKzYxqu/vFUD1aSowMHv
	 GkocU0Ii8dkx7pUbw3UJtxOFrQLuZs2SO3Stxm57HA92OXs1YkAS1wJFLeiCEtNcyt
	 jqeRwJoqA78ZEarb/+0luAdMOleh5REwZJTk//InqAK15ISHq3kKxUOlNNVbzilCk5
	 rjFU4na5e7NajafIXSVrQ+dkGYRIPJHJexxOMPgYVFeBfj4qOdct9s764q02Ac1A8y
	 hgsCMZrZNZtFLWh80zalhViAhYqmi1MW/q8ksVGw/SfeSgs+/BcclmcDuUN9Fz+A5I
	 gIQpwT/ZO/dWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A57CFA747
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 08:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176371331358.32622.12938406441450883149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 902de3107543d4eff73c2402a7f35e09cc5fdb1411fed614be8725f1a5963359
Date: Fri, 21 Nov 2025 08:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763713313

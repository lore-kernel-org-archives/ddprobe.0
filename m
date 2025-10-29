Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2748320C48A
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761710394; cv=none; b=qP0IRC7KLXrJewnWB5Nvr3BEQXeXJvf84W9OpPnE/zpSKgK9lPk322l2DpLd+XJ81RMC5sa0TQCYuiAdfIALIyyBzNpOR0SLYlzxrhAFP19myldDS5Gm8ylvmt7MDSYYAqOhKAgWlPM/FsZnHpg2iIs87/6sguEqqXR5RY6LeVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761710394; c=relaxed/simple;
	bh=cShAk3MGCJjmtnXLA/jbHC4TWzlBpf/mkRiNKIOHpEs=;
	h=To:Subject:From:Message-Id:Date; b=Kf6IpHL56sTtV7HRvuoNb9Lk/s0aeT797jjku/i/wyGY2X3/9snBRCNZAx22ZjtivCTQ78FoNGsjoHiiKcrmUzXZY1WAYI1oswsfj+aJ+ZmHm/hn1enZj23Kg9yAZFXEANVrdJlXVQ3LqDbPmjTn8s4rjcjpX3v+FN7CqUsHSnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BMTCcWRD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BMTCcWRD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A124BC4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761710393;
	bh=cShAk3MGCJjmtnXLA/jbHC4TWzlBpf/mkRiNKIOHpEs=;
	h=To:Subject:From:Date:From;
	b=BMTCcWRDcL6z9azdcG1OqLd/UF3SNkM41thmCOTi/wqWjSiL6vWbnQhLXudUFvmUk
	 f+Jny74Bc+pn0YfVVRux/17ArOOnCTievSTYiS/axlZqCKgQZnvSmN4mKMM3kb9wc0
	 3UeJ49rfGtfcaktUQMC7z1vTuyz2SqAEqoQjlB7GUu5+DdsPXOperCSPd5PDSHISXA
	 aT+fJr+70EJFJ/2aMfMr2dQbaqlZ55rf2m+12MDlOTOk3MkfsZtcALG3QlQN+0zDTR
	 xwziZz0JfvnK7YVtite1a8C2PCphefD3xW21pd4Me5Pillkk7bz1JrQDXFPVMXpzDr
	 /U1ffoN+Z7zKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F10DCCD1BF
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176171039357.18730.18250191634511206580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfb429814e7bc9f1eb3bb44bb0307aee3e48c9c6671f707dec584e1ac20133af
Date: Wed, 29 Oct 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761710393

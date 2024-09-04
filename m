Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F641CCEC1
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725440154; cv=none; b=RVCJAqaNG8vu1GKsnf8OO8A+mrFsjMFWHb6+rPxK5FB1T84DWBeywNm73FoNjzBG2eegB1abRc08XI6eVo/PzNxLSKvsOFRwA0zlw4gLXfQSDMU0AxCC3osA7FpUmf0elCZp2zP4FKu/GI/H/ip9JM3UsI/aX5fYzTZwONVRIWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725440154; c=relaxed/simple;
	bh=meaJains52XHKJZkaWUsKQXdAZJrEBQXum/EQCFVB7Q=;
	h=To:Subject:From:Message-Id:Date; b=R32Bx/aFsZsvT5tkTyilTbqzneT2bN7yVXNkFKrOIwBQ8uX3wjYCzY9xZU3Ch82td5Nvf1jvzuImJG8x6YYpdSHNIhP2/Km4uFNhKgElnLfzQRhb1QSFfxGHAD7CAXXEaH4Wwt73Jnx+QUz6do4vq1gZ879Z44EEBrHw6DWtOOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RIh7lwnH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RIh7lwnH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB5DC4CEC8
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725440153;
	bh=meaJains52XHKJZkaWUsKQXdAZJrEBQXum/EQCFVB7Q=;
	h=To:Subject:From:Date:From;
	b=RIh7lwnH91limSgqmaUgVvc5KWdL54Z1P2hwkGh7DbAEQlJKe/n8DvxN0oJyfkk+D
	 eROJXVAOMNP9NUDNK+8iuDZrSoOMcuibA4TDWUCfR+xUObCnydLkFM39zLAZSo8zmq
	 ODI9ccmYVaYAdXKz0td1kLz5Au3iMc1FS6Jnjs3Y/njRw4LzZc9XYdPYAlQgVZYRiP
	 rCnKOEWqDYmaF/wriShWCosNbtSa1jp4QrsxhdqQO/olcRmaAu2JvyV+FRYJbFp6li
	 rydaP0aHrxzeDGuur6/IRCr1TmMAoclTQho7nR/+yeIZG4o7SPpE90BaXk1EcN19T2
	 gPIi8+XWQpiJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98562CA0ED3
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172544015360.9923.11737132207522806160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68f67c2488ba279300bc98ec771c0537addd3706df01ac6fb9ae3cb1f3832129
Date: Wed, 04 Sep 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725440153

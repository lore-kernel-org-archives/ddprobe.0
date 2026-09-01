Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A98935201F
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788299434; cv=none; b=BB5Gmf3Vy4WcHLEUZVn4gKsyI24bTuUS7mEX7G5KZ+8/FcAv1O+1TNjsNG4UY4rZtW46oRFSN3HPFw/Z9mN1IFRoBksa4WfhjW8jzTa5EMweVS2J7mgUdJm8eWPkmUU6pOnO6buN4Q+JCsK+CNoo6z6K/qlsbHX6YDlnYv/zWWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788299434; c=relaxed/simple;
	bh=ahgRYXeTGKCncjd9yLT6u43KdHubrfREqo7xs0lYXa4=;
	h=To:Subject:From:Message-Id:Date; b=HZ59Vp7NsfoUPQKLlzHRMDdDtgit3mkJ/gWz8mXnpk3M37M0MvFI2mS7TiF6luL2vEXtyJetJG4wQBGMYiUb1M1XoWybbYE9crdBtloJZcUMGznKHp/EFViTWtM1dmSIDbQ0cRP3H6w262tOqcKnd+JSFUvEkidtO875AKcnJpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LkyQh9I3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LkyQh9I3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D50CAC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788299433;
	bh=ahgRYXeTGKCncjd9yLT6u43KdHubrfREqo7xs0lYXa4=;
	h=To:Subject:From:Date:From;
	b=LkyQh9I3Il8BRxLNrOYMbR2H3VpPkokL0MWL96Y27DB+U7cM0DG6O0cFZehiev6rh
	 FNxQ4TPO+gbxTj14opDgE9I5x5p5tA800oeDzLzkktKUfNk44hto16SIkZR7fjIZdK
	 KwVRFTDAB0Nqzz9iZkaQRF0DzGc0OvQUIsZmC0BkTLwgg85VHynnLozu7RQ5HvqY+s
	 UG/dU9BRb0GJTN58zYtC5RQNOvP3Y4ry6YZ1NCL25yVmg8DVxbccI9Tau19WCHN3MU
	 fsBE1eKl2H1YJw5SIHKzGn90cUetuNMHuUPVUkbVL6CxL/htnYVGzTMqi9/B1pop1/
	 gOe2aECrqVzIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE07AC61DD3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178829943369.9719.13965938091329195993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d022f98a26d35e3a2aceaa07ffb045b09940aa517c33fb9b11797d87154a3e6d
Date: Tue, 01 Sep 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788299433

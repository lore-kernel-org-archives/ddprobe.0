Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 356562BF016
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750144194; cv=none; b=do5Eb/Cno08yAx0AndHxRXBFT3H70ot/1CGn2kCbULElv/j2Pr7Dfkr0A7YLbTwQH3oJjx4BIcwh7HT3clC0741JW5cSHDfNh/D3XUjz3S8qHzRJY1onEt1MyxwPYVojhGZwuZCnYrEYcK8QpnBZjQBRayNPZW3/l3hOwjqjdfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750144194; c=relaxed/simple;
	bh=/rYVwPo/LJn1dc7yofjXt+wZZwFD9rXiSSls/H54+Hw=;
	h=To:Subject:From:Message-Id:Date; b=YP8qaNq3jsl7kyb4/jVonx9300MAsdbx+/xoQ+TN3hYfDKam+1TF31O8wjbt2t2+Hs+0T9H7T9yGIRX79gYDTTmdyjEWvhL3yVRqboTHzkHSIX3j9PZhouTnqGb2NIrQh/4hBNRPZK/7VyS+tFqXPGQXP1fzCYYNwycReVy3TU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nh4Nxyqx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nh4Nxyqx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CD2C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750144193;
	bh=/rYVwPo/LJn1dc7yofjXt+wZZwFD9rXiSSls/H54+Hw=;
	h=To:Subject:From:Date:From;
	b=nh4NxyqxtdSeznKbH6BsoMzg7zKidJAf+dtK+Naqnlsv6XYSXM55Yy01GL/6WLfQ6
	 tJCijqcR4CsOCJS3YQBslzsYFCKlLerPQAXx7/+K1j+k5Qtr3EfLsRlLnYUyUvggv5
	 hVynzopGyoAT6MsOomeRwMFV5jWSat65TUrmTFAdnzvSsFP6mVKSfAsxyhDkJ167hL
	 MDL1piiqEbllM0o9rNB7jDKfoa935smgQLTJxDMRPDrj+3+uZ4i3mytSpPTyi3S270
	 ZYSTfIfDuTn+uch6CprgX2a3rP9MF0ylQhD6lwWLIL9zv304V91JpcnGGeXne4QH9b
	 +sRlBBPhPMV4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AD6C71155
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175014419358.28788.2524861688324133799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fb1cbfdbba81cc34b98b2e6d7fbff10fb41cd0e680a1b56bff3f4255bf4f432
Date: Tue, 17 Jun 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750144193

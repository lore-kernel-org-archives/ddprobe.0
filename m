Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF3A1E834B
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747193394; cv=none; b=r5LARWUOp6tEPmV+RcGjGN2LYe9ucNyuw7g3ZwIt1r2fi1knaMrNtS8NoqfDemXHahbOA22du+gNG+rongnN+dSA9N14cYajuSp/krT+tRkzYWF5b1nU0MRnjFsUuAo07RxrqBgw9Ig4nXWFTBnVe9Gex8pMVKcgGGsWx2IFjCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747193394; c=relaxed/simple;
	bh=I1wcqoOuaqRfStfCkIcrJz2DK2uyUNqrmVTFIyNNpVU=;
	h=To:Subject:From:Message-Id:Date; b=T9KCjDW3YeJkJY8+f+NAY3cf8d/AGGdYJhmBqcfJPB/yYlpPcQiXw09RnfgIQnz7LHS6YCdpyeAw3HKUTHXtixLiZ/JkyZOqbTZtDcU90YkselMIRqXYbYV+4TMLz8hObVHqbM8iB47xSEYD2FvEaaW0STfjIJ8EDIbJDy5u1do=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TngSA7gY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TngSA7gY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F4EC4CEED
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747193393;
	bh=I1wcqoOuaqRfStfCkIcrJz2DK2uyUNqrmVTFIyNNpVU=;
	h=To:Subject:From:Date:From;
	b=TngSA7gYipM3UDxtrEL2u5XpVf9O7pEVkC8uFcccv7MepT8rm5UOMvk6S9fVkQDs6
	 gnKM/to/dIzNhHiJlZUa1/Qxz3//sY6DUNwPRmyFPJFZ7u4pBj4/3/vpZf9bmKOCMv
	 yvBdsidykIIATebOKv4tlmEsRxRLjXGztBShoXc7E0nrMM4dJspACLIkXb9VVBEdVp
	 oGW+vc2IdwE2KrzJqXag9b5dasQSOgrOhS2iTlIxhuPk6MwpNaALB32qjgtJBBTBpW
	 ApyJRip1t7ubgVhKnruROE/c+4WSV3aCF8koXY8WyzZn8xPp6ABWSS0R3iB1oIwcO+
	 DKO0d9Vp1yTeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5C1C3ABCB
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174719339357.5866.17795312935886082889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cf2ba680679341d3f2c0e5d1d2ef84c8eb35393f8f558170ee47a4d49714811
Date: Wed, 14 May 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747193393

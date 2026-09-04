Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66A1F3B0583
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788563434; cv=none; b=GG3XS77/PDn82PFpFc5Ri5Sz83K4BC6hevF541prURY9ipQM8E/3ibfjW8Xh9O0sNA6K0EarwK5r6cmsd2izwL1kKY3lwr9eHDNhc2TAUMu8OLuO0UDjY7ZNuAaRfFHVH9z6q0da7oklFG+MPzWmy0VGnIN0jgBSbkGh2/bd1XE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788563434; c=relaxed/simple;
	bh=XuLlalOv/KDnu7HKoz9UxcBJXwSb7pss8pmJlFwDnCY=;
	h=To:Subject:From:Message-Id:Date; b=HcQZrx2PW+tskc4k5YHneHmnEjnbg2BurX4PteqqIZWgWMqaDLO0uRcPMQ2aI6nhwHPRlnfjoWKU+U/MpOdbbAgQGLUoWDE3oRMHVXxGyon6vUDTSe7Yhv4wNggdbRXOcgagDgFxp1YgYC5hE/1zuMNHeOLEL/0EPqZ0WaGKPmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L6grzpJw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L6grzpJw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9F2FC2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788563433;
	bh=XuLlalOv/KDnu7HKoz9UxcBJXwSb7pss8pmJlFwDnCY=;
	h=To:Subject:From:Date:From;
	b=L6grzpJwbdv3l3lU+6D8aBzJqZk6OSV03fU/HrGrhgd9LosIX9HEV+MEcMVhB8JXZ
	 maq1junT+uq+PyCHc/L1RH6ScS/738xdjF1QoY/2nz8pVlyvuC4K+I/24P/AT9w2j0
	 sk+mW7ZZvIBljL1JvozM01SlZpUc3AMbpsqr5/ndWPet7oApovz2/VOB0Xjab13Hvn
	 9iiccfVYfWsnjlW3gK5ZeBpoBtLvgB8pU4LIgYvWuzd+YQ/l+DbIQ9Jk3Odr5w2oDh
	 o6AyQY8ieLbIMjdquEzVaeQKA2QdgiOSWyFaHasGrSKbeX5XnMLO+UiEbI/i+nlfki
	 Ju7gg1g5gOrwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F31C624D3
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178856343369.8174.16977376750255148882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5f4a6800c495258d4388b9c0e215924a358662bdf92e35f37424f3cba835770
Date: Fri, 04 Sep 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788563433

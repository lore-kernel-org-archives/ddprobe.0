Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22070149C41
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750495794; cv=none; b=su/wmyb2fYrJD2hQtMtRAptCfMeUR9GwxqaAIucqrLn5Wi/knLDCByShGKdrHzJYD8cc7pjRqxinpa/dbkcYomqNF9VUuUPVt6D6atCTO/0VSt0q/DrmgApB676wSOSOqj5gqPxTJ9WTiMJz0xWd9VjY+vgmXKV4t/H8aHuLG/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750495794; c=relaxed/simple;
	bh=6sUfUmcusA0U1UjJ8qyHHhRdemZHWHZduXRTK0JPkUQ=;
	h=To:Subject:From:Message-Id:Date; b=KlSnvMIL/tXK9gstyH0bpfB+1NaxppDZsFRvBOY1l3s/jy0mExNdbtMF+/1S+RhIs5Jcly1mz9EZyuBh6qSykxEqMgfEicpLJneA/PECCEnAjN36EP46KJ4nTgzpRXJO0SSqMQJaLZfHY0qZvh5fJLxjnXvBrDQm2naPqlRhu+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CCKcGbze; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CCKcGbze"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2359C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750495793;
	bh=6sUfUmcusA0U1UjJ8qyHHhRdemZHWHZduXRTK0JPkUQ=;
	h=To:Subject:From:Date:From;
	b=CCKcGbzeVxuayJYTxzeFHkr2aBr7iGCDO0bQ3+JXDh6WZrAnlqht8wu81AQPC/f99
	 1PCI9saVQfObTSkKa62kbV+wYBCMw986ssVOMsiPRNf3UzuKovVGs67AhYX+VYdllp
	 dTHg5k4hrY4WklPIf4GTKAE0kNVrp2Rzwx7bZ2bBpMwtJSdalyeSc6tIEvYVinKdTn
	 f4loKHp9aBukSpeuUINysbasOKZ467OIuwlS3TSewWXB0h5la1dIDJRkDYj8THzb71
	 WudnrqP5qhyIR0cWwXyD26sLZJXy4Hdb133GGFeECHvsNqVrwdwbznihD7dE1DvcwI
	 qKCykkg4ofXWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92866C71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175049579357.30889.9382193134495316250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d422ca8f2cefdbbbdfde43b4e6599865a888266aeb7ae7afcd1560b29eb932a5
Date: Sat, 21 Jun 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750495793

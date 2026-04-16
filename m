Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ADC93321BF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 05:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776317254; cv=none; b=L0WSxyG8RocgCHjEoOANmGHq4reof4XNfs5YgvW8LiyZPRbJap/uhunstLdlSqkwkw0Vg/FTobLaW66e90Nqfk/tzHQOK/w/o48DZ93PT5Z3ta6t9KlMDEUTBNiZFuJxaRNxm/DMJg7G/Yc3ZQo3TxjdVJ30jN9CQezqZxSZF+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776317254; c=relaxed/simple;
	bh=vI8uSQm+MMk92Hy74A3U7dGvkMqN4BRR0J6fimwI9eo=;
	h=To:Subject:From:Message-Id:Date; b=aEUeBRCa5CVd0rNufpNHwN/oSXPUjY258R3cMKeKYaPmmSY2q5w07syJKzaf4pmJ2Z79KMekPyUw/10leBFS+CIDAcdNffn7ggMUq9k0qEV6TDP59iPI5pA10o9NgJUEPHNKeUmJ90q9OUja1KfCcz0HJVqAxpYl1uTMoMutON0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OViWHtA+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OViWHtA+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE3D3C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 05:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776317253;
	bh=vI8uSQm+MMk92Hy74A3U7dGvkMqN4BRR0J6fimwI9eo=;
	h=To:Subject:From:Date:From;
	b=OViWHtA+Y3hamQnW7iUZt7AbVfbMZ/JFnTxAoArO5GGCXovwJZg2mKwWABxCWjqph
	 WqG0Mlm1B07pI4r6dowhqqNJNHoWDRd6qGT4GSbNoDSfQtJiQ2gkeWVVludptef/NA
	 O8eFOajShZdWZBXV/ZxU8mUkngk+FdDJfIg9yZMuHOboCbgu6uZkcuN60bRY+LIdLj
	 BnZxOXf3i9SP6W9sb0kP4uTbP9cS08voWjcRjF0pgpOA+N9RiEkvdUdTCNGuaPGJI4
	 tVrn1qCPyhjk1kjnkIH/cFBYb6jcTN93Q/5Jq6zj+scllS4S9zNkEM0/pOBS+DsoCf
	 lUHs4+ykrMeqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA303F433D1
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 05:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177631725368.26772.4465784287820413079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cf1eba93646cf5d8f769fc1b98a4149d67442e9d31e4f058fcd1ce43b83cf78
Date: Thu, 16 Apr 2026 05:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776317253

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5BE1DFE3
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730338554; cv=none; b=Nh0JeBpjVJOE5KLDUxZ85EaTcK9BZ3URcsfPttqkObXXkTWnD6yqWHuu+Mi18bGBBtdLERoFV1frbDR9F1NW72jDc40zVfUQTWRmVmxLmxP3kFUdDMiqW5ImENM0K1CXqvIdDr73ySvA1H8MAGU+oK4kWxNeX23GPihml6nPBqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730338554; c=relaxed/simple;
	bh=Uz1LyD0cvHVZN1XTTvGavDTbfBX/O3PvLuZVxcimudU=;
	h=To:Subject:From:Message-Id:Date; b=eUZeVfqhwySxlVBo1UqZ4hldj0NnivNqWgV/pdhkgodkmzncA/nvr7NlBW0Tk3LHUIu4p1coUpZZbXOiSCAH002iDE1ahpQeqyaWg8M1mJmsHwLmNXFlVfusBWosFeukFp8LPj39/Zb6PXjnmQftyeBG+eouuQzWpkWnwzDqHeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i/3V2q6a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i/3V2q6a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD373C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730338553;
	bh=Uz1LyD0cvHVZN1XTTvGavDTbfBX/O3PvLuZVxcimudU=;
	h=To:Subject:From:Date:From;
	b=i/3V2q6aysf/0G5HMmEsHBYoq/sUWf53UEpV2nEbYBza0KkyZzrlKBvjeHXk4c7Nk
	 YXrLAMLPEqZNwn7anRFXURj7Md1hfiKdPvTIZhsqMU05gy4SSVCx8TsVWthzGYt6+G
	 Y+JwWXWF/q7O7SEg3sY82g3CPIPq1riBfhI6k/3SEFtU9fVSeBJ6XK8or/TX3XaluF
	 nSah2F/vtmnxnyYJ1Ol68BDRCN+yL0W/V8m8aqWome9DQqPZ3NXU8NEJouCw7GhsuF
	 6SLuM7/1drSa5MxcM9U8KKBEZfetqx4xhLPOTtWIrPh6gHiX5Dw5cp0iQmnRtRiO7t
	 uo8e8tpfcbjRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D55E68942
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173033855361.26659.11491180386449557477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2c9890dffb8185a1d7b4a9df527f9d8675a97f4adaf2166171e86349c8d8453
Date: Thu, 31 Oct 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730338553

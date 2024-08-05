Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C33149C6E
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722893754; cv=none; b=mkgWo8Ps5ivQgEEdgVZv2T0qbnmnRSAajT3cdYFkxCXqonwzdqESd98RaKxJRnPEA8usHPLi7o/JK5zrjIYlJNwkJ36sH6AOvWM4z4mMEipoQbPbikOeFvreMvVcesAqhINVLKvpyjoEXDbqurHtsgRuWBN2YelYR1xfck2zPPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722893754; c=relaxed/simple;
	bh=lsSR6CPQ2a4d6SIKEQgvDfA4/kfahALIkoJA7XrUbuY=;
	h=To:Subject:From:Message-Id:Date; b=uGcKha2FYhvKija50ki1NXu9QYrAohxmZdIaUhY0KIBTQSUsIvq5k8F/8BLzvZnuCaRnZ95k5twZe5zJ2AR5pQfKh0gZHQ5tepT3CAO+KVYJCeUYGXrywMrdIeOKGepYDjXO0CYT7KhNugBZdqbWVOpXYs5T8YQQADgWIbvcPDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qMg2Y38r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qMg2Y38r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA06AC32782
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722893753;
	bh=lsSR6CPQ2a4d6SIKEQgvDfA4/kfahALIkoJA7XrUbuY=;
	h=To:Subject:From:Date:From;
	b=qMg2Y38rzkqQs+axeF8QX4P+qiNb4A2o3upAUofHcZerJ2nEWlyj4RRCKw1XP3ubN
	 TtQGHvz4SfF6Mhdt/vkQXYPfXAOzl4XqG7nLa/kQ2bF3jt2wkAf/sZp7kkSlP8c3M5
	 1XeGxq1OMevCMYWm7sPB93+0kiFbRaJIP+YPwHci9ahQk1d/+Zt9er9kPcacMohVwa
	 jwazQG1P+H6iADZe9UIa0t3GpJNXlTpPPiCkZFv/6MeHMdmSTYTZzkA86yBBs7V1MZ
	 TPDPhGAHdKLNZTc+SJIZg8WxZIrigC5g9NRX+TL7UuKQwDB+KLgyGieXX2IWM+fJwe
	 FSoAFQwjDspzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9515BC3DA7F
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172289375359.1225.15071945286291449849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60e1c76373cfe2fb1c3e16301f9c9ace0f4661bc03d3c2820034b28c2fabdf97
Date: Mon, 05 Aug 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722893753

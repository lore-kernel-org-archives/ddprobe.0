Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E301A95C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750510795; cv=none; b=nZlF2OXexn46dMxL/c8kcUJaUEFRqS5vX3OzES7Ov23s/5OXTS3qBek0Dm7JkMPHZposn3E7lRJ/eWqH3op4F3GdZuFJzaRaLGRwFOjCf//j30LZcau+geDMHtp5wU4UT6FqkAeKSUofi0BRjFBzy8OukE3T3dTZ2u2iF1tU8sY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750510795; c=relaxed/simple;
	bh=udpKR0Io5t3RmJeUB5CYBFf2+vu/jXjsDdmoGlvhgE8=;
	h=To:Subject:From:Message-Id:Date; b=CDtQWrn39UWJqEvNPGodeCVLPa+rULU/naZ289nrNfixv4UuaJv4KLXQr9Qygf3pXtRuQOeD0NvOpROKHjI0NfnZkd8YtoptCctmsBGxdTiRblqcfQx/yw1O2NL0IZxQzZg5h5Oa1yeQPFzj6xeSbkWQCJf0PAy1HBJD3+lIv7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oJnfyiXQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oJnfyiXQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A434CC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750510793;
	bh=udpKR0Io5t3RmJeUB5CYBFf2+vu/jXjsDdmoGlvhgE8=;
	h=To:Subject:From:Date:From;
	b=oJnfyiXQlrvbskYv5zr/WmMmmp1H0xJhT9taZ32fflVZFcTTSSClqfW3bz1wO3u8c
	 iwjTp3Kl8JlcsrdGiKzp+woyfEiFQO2RZZgNOc+JsblrkFbPTfo9Sa3/ZKOvOw7kjN
	 zJ5joMxPv0uY1v/Y9p893YYAHfyt9T8653BsDxyJ5gaDqMTlxf4Fxxcc+FBNcPyOV3
	 078QPyi08I+tk9rVUdbyVr4lHlkrqRibHy+ibRv8gEnz/KW0ojdlePvRlEMLCFGfXl
	 Ln99VPOy/6hHbueW6wrCu79axSjupvbo9j7RHTXG0cGe1L/9tkNg9aB/uTMOLGLoJQ
	 80N8P/5ekt9nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9516EC71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175051079357.25583.5969476709924094732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d6e8392518937bb2cc2bd94d8f0dd9b6a1998d6684543587a5df9001cd721a8
Date: Sat, 21 Jun 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750510793

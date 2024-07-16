Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 477D61A08B2
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 17:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721151323; cv=none; b=EvHENAFgQIcUmkvkdc0t6O90h7BafKriOHULLAfCD4zZH+mAAWP7Y/lH9m/bPxITD7vkqAmJHbqqLnxhQFPgWcRLYcbJ4Z5dDLN/1VH+H/iUTQuLskkotOxqDYVAreEuw9jeFoBJ2G0Y5l71sUX5xSBoZkqebSOklFdA4WDKdXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721151323; c=relaxed/simple;
	bh=ax/RJsD5RF5vfJJxr8aocRqNIiOwn0+2LOZgXQP1ztc=;
	h=To:Subject:From:Message-Id:Date; b=pyFFVywp66I2tke6yuliRABOUIRwoIqLf0G6QjigTliGJEBuriqVK00Y1ECVmpNNWDeqmMYC8lzY+LZdDGdthKHALD/Px1AxECP2PlVTNMJWwQwBFI+LGy7PGLmsGpsGZG+M+cyqhSYltyICusVqrXLFCkDyjoUhTS3BD7gk4QM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LTHp2TWq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LTHp2TWq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D56F5C116B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 17:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721151322;
	bh=ax/RJsD5RF5vfJJxr8aocRqNIiOwn0+2LOZgXQP1ztc=;
	h=To:Subject:From:Date:From;
	b=LTHp2TWq16ojH/1ocgC0tgy2e7Hc28LrDlXVeryas5IR3j/+FHl+/V5WvAGYZ2SFU
	 9knJRIT9Vv0ulAxz/RBJgL6bDIzThCGqp6i/ZZ+depr/Khp5PhuAtLzKsm/J/Cwo75
	 ZYXCA6XcmxFmxb8XUBXlste0g50qvk4G8flrXYfwc+VQJNaaKyFDtYRjQr92Dn587E
	 bivSu1kZmoyHwDq4kNqZjfF/+TBiG3UuSGcw8qCqku87pAziW9Pbt1UD77EJl0xSL9
	 cptpwd3ikMee19qW9grj5LSh399Xp3ysgl9t0rXRzw7lOU1Wbr3reH3Qwn+9pw0HzN
	 wZY/jHul4vEZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C147AC3DA49
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 17:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172115132278.29237.12233272968036293743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4052e973a4ae426a48b01a01c099b686bccfb133082fa3ea443d909e9b8ae210
Date: Tue, 16 Jul 2024 17:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721151322

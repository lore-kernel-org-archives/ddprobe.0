Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AE833236
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 01:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717379723; cv=none; b=f6MIvVvW3iuyBL13FB673XJzjQhjPpLskv5nHe4rRaMU32p0tCvMKgoTwcWoTjD4shb9kZSJ/OerwlWX5sq2cCFsDu6IW8eUhvlWueLjd3yUFyEn/2Y0zo34M87YGu38BPvOzLkcTQ05v0K0rav/Vu142FE6VE8FSOHFAxKvhl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717379723; c=relaxed/simple;
	bh=/vOCOPHlZ1kt8gEJpwMueCTr4gNVp3lxJ1BnDRzFiRE=;
	h=To:Subject:From:Message-Id:Date; b=nXIBHTWoly5Lw0K5s24IS9nxL3IVhmeA9LUGDB39wedHhlrLNsAbQuDCKjV7jP8gYEbW3BzFSNdMKShsSOKykwkYArBXHWYGv/J5vaaArMfYzwusJtdydlSMCNkMo/eA4cLV1umyuVquIWN/ZlySxXtuzD2exZplJXLnAQPHCRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C6NJ6hSQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C6NJ6hSQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5BECC2BBFC
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 01:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717379722;
	bh=/vOCOPHlZ1kt8gEJpwMueCTr4gNVp3lxJ1BnDRzFiRE=;
	h=To:Subject:From:Date:From;
	b=C6NJ6hSQHsQxt1g6npFFM2g9EKpw/8ascUVPskqDdYJeceAL7+/gWiS7Xiuhuz2Wm
	 6qFOdNnqgYp42PC0VIt+xJ9y2Lsd5t5W5V/9JZR4WEfjItL6unj6P6/4oZcOoQCt08
	 +jUl71Iv7eNVwUvfo5rRyknEidWDhCgl2+tjaIRZ8M9x+Rg82ljOMUcXOzV0abdzp+
	 hLT/Efvbrv36MoCpB6eeKHMbXWfGd/Yw9ghzPWymNuZMCHDXjoYFExC/HJx891fsh2
	 eehsDYKVwamb5Ppy27UBCOc8S7eL5FY3w/sUAOSn0pTmh9dy3wsnjDKGmRIZ7w/YJy
	 uG6LQpzOx2vTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2899C25B74
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 01:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171737972283.18688.4562738279550390690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abd4dc8427ddcfe1c7f1867beed2cd167bd711ddf3912ce891841e89fc2fe6f4
Date: Mon, 03 Jun 2024 01:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717379722

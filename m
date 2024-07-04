Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F79F4D112
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 19:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720121123; cv=none; b=d9qG3rM1paGkBiNHaCI27ybDX6D+8cVRM970EZ1iwQkLaAHBHN7BiTWND599Yz/FSctUnvcr16dr83xYhA4GxqMJeRaQxcmi6Fpkc/WY67uRNFLGBbd6LfDbnecw62dlILWJ8setPaBxaU2FF9wCYHlFa+dAFnAVW6mh3kaN3n4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720121123; c=relaxed/simple;
	bh=wLzZov9QRmKQ2q28TmZVYv1mZruSlMVjS4uMCOn2vqo=;
	h=To:Subject:From:Message-Id:Date; b=WMADvGjXprEFqmcZmJhYxN8WfGnTLA7qZTBOcBnH8GyVOQrA4JD/beHhaw4YXLuXC61db/PCX3UlbpT2yj4tBfZIfuNpgqiZ3DUJlajV+QA2cIZcDU5Tip45Vgyoh/HbN59FTZ4WmF8ToL3KbSj2cFQqs5Qai8TW0ZW3/OpvoBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EfPiOE/s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EfPiOE/s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBCB4C3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 19:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720121122;
	bh=wLzZov9QRmKQ2q28TmZVYv1mZruSlMVjS4uMCOn2vqo=;
	h=To:Subject:From:Date:From;
	b=EfPiOE/sM+ke1a5XFDnnPqksl2c6lRhHadtyGY495Io6YXSRKKYxXSqdxLbh025Q9
	 MfYiN5pCZWJbVNBKmVJqXy1rPr3Pk4qdB/gvDkw189v9R0zLkgODzO++pgmnKOPDUY
	 eVJ0tiGFC3UqkF96Uzvdm8aQ+WrBfligYmkLNUDOgQJp2o2vdvpgf7ULfQ04cQ/O8+
	 OBur9heNKn1eOZbfFTum0whdgy7IVu/yS1+ls5cuLJUDFAZ+bzfJCQXqdJSO+TmlKV
	 8c0Vpo6/CG1P7HUx57yURFCgAj9JF3smuOiNEANe0bCHgnUPI6dOcJhxlyJpxZGKQC
	 6TPqKJf9wNZLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C52A2C30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 19:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172012112279.25711.352656148396908653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efa0498cba1d4defbf0bb381964e2b4c6d544599a91e6a04770c419efa679d91
Date: Thu, 04 Jul 2024 19:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720121122

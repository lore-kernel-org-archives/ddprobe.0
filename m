Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 418D151588D
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790786434; cv=none; b=f0eb9yGfLJqT6ZsKZcbuq2iS9RwK6czPaFvhYw0ShsnD3iMHP51tIh/3scOsGRIoMlXZwa1UM4uwkRF3qZwoDbvX9d3zpZ9fXNMiEIUz8vFpkAnpI1yiV896RHFgWgqnjPFdb5QUL9d5zCnzP7SVld24ulKP6hh2WWhxk2mKIe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790786434; c=relaxed/simple;
	bh=itnvTgkr0SBNRNzIR5ipygV3KXTbhaOws1cdhZBO/Ws=;
	h=To:Subject:From:Message-Id:Date; b=IS6z+lSOZl6/VlHvrZCGDWNBKAzLUJZ0Zr4+BcORQBUc50VeWYIkFsSD9LpDkRKe6px1hwWHWiWJi88drGfoL6K6YMzCSv1dBRKDF1FJ4UcpHtB87FOoJ5Ntys0pV+XoEyRt26/3HkIjBy3781iWtd84QAe7k9fcujhpia3YVWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QXMPhs5M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QXMPhs5M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6458C4AF12
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790786433;
	bh=itnvTgkr0SBNRNzIR5ipygV3KXTbhaOws1cdhZBO/Ws=;
	h=To:Subject:From:Date:From;
	b=QXMPhs5MMhYL4LzomWv0QqU1NUkmVdkKQUo14j5FMw0Bxibzf5dnU+MKEiY2ywqX6
	 jZm4pq3PrmE1+UQ9JxAHb8Z2aFEbXKqP/S1nNkdoUDPdzuZOVCvY6ZRNFRhYn10DkX
	 YL0KZ3dz21PGVUhpu+ifC73LYepLwm73jIm3+ScdVyvGepdybJxF0wl412pMZiP2n8
	 Nu1QKbq0mvzteCiCUZqkgRQHg/CsXdEdxbUa6Eepxm3Jpa9WAMBxXG6Qo93HtaTzKv
	 F91LkoPoRTtlioO/VSIJp5thJWzGpLJSIbNsgO+CROCx48PEsStSwdMCuxit6ofzef
	 GnonVkNKhbqjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1EF5CA5FC4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179078643371.4128.12108791462565521357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7157dc97a3e8dacdd47609a25bd1353329bd144e6f5b2eefbffbff7dffdffc9
Date: Wed, 30 Sep 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790786433

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14E2C28E8
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732670754; cv=none; b=XJV6PKNZLa4mYMzI5chXqECrMysPgPKph9KPPVB9j80g8bBTuoRE1RDUqFE9QBfrCrmbdCUVY3KaA8cOnOYW9/ZiE/ZmomL4NE4q1pP6olcZ2kT0vdp8vT/p4JJFCr4iv7SffcQWoLZX9ChZVUrXc1p3g2No044tASBjNFHTOl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732670754; c=relaxed/simple;
	bh=cfd5MBJrkvAsZyjfQEu/1hqq/FrgNwqhPXNv4aBniKI=;
	h=To:Subject:From:Message-Id:Date; b=F4hFvg916u738YaxbZc4kG5sMjziyLx/zGiI8bGzZdfFNmo24KYOSxDJJe2tAgnlZ7JcnWmawh4nw7itB2lawqY33M8GlpHVS8Jfi4Q0ZCY1MDZeeqXQhX8NN242tcV899mTyUI9AMPobdUe/eCQ4gHunTcEWOh/aDhS12GZh+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QNEvaa0o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QNEvaa0o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCECC4CECF
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732670753;
	bh=cfd5MBJrkvAsZyjfQEu/1hqq/FrgNwqhPXNv4aBniKI=;
	h=To:Subject:From:Date:From;
	b=QNEvaa0otkqjVeC6q5me78EcOZ8Jrs/OFHgPbfQSOqMR2TAxaP1HWr0ucPqFbi3+5
	 Wf8Epd4ThowBkCUGfmNItAvFHUD5o9YAjKHhuJiYWjWobfM8G83ZS5fmF9uilc0sOS
	 5V6rT/mwzH9qcwCSZROv7Zs2FhL0NHtRAMZPhhxNyWk8z7h9szM89hjSaU8QruELb9
	 HWk0y/keGrZVtQrCTev6x3xIc0wfEDbma9Gv0tNwvs3WMW76mu0MPDbRUb4zkZc9tN
	 7lymY/6sXUOxmhtP0CICf5RD2x7u8J2nEwcy7Len3gGVIbweFQYGRLCioTd+/wMfyb
	 F8Aj78KBUWmGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A35D66BA5
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173267075358.15155.15027963028350807844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4790a850b82a8206f2f9183a5a343abe961dff2a2c6f9a74a054a72fe73438c
Date: Wed, 27 Nov 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732670753

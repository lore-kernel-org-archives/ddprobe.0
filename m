Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B052F2DB7A3
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 03:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779940354; cv=none; b=fTu4qwvXwETODYU3rvvrtOwA3zIavzV+AdmdtlLE63lIzdWkzMPUVOZ/Xt085cRHKJh2Pu9lqgUlX562I1KQ/5byQQSdChvegi1LDKlOeVfUASR//GR1ZabXNYCiBH0cbJqldftsWG0fNQfxCNVR66Ga0oYetARUnJDRWCq0MMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779940354; c=relaxed/simple;
	bh=yr55sbFXt+zxdI5pjQZTrwAqdfhffRs9l1FGocJnY6s=;
	h=To:Subject:From:Message-Id:Date; b=uyYlMEX7rN1xYGMRIXvW8XbThuCHWMVh2/sgHxONRG8yugVWJ+u2Gz3UYF30TjfW97BlHYXUJmVh4hzq1KREDce1qaD/T4Td/4r+V8NX1qkrjkMNNcnKxakYtBT32KurUWIPEQcdsJ0A/GwfYFiYePhWb0YVp3DHLc+FypeBwOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k8TDCAxk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k8TDCAxk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C65E1C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 03:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779940353;
	bh=yr55sbFXt+zxdI5pjQZTrwAqdfhffRs9l1FGocJnY6s=;
	h=To:Subject:From:Date:From;
	b=k8TDCAxkx0hv6cwUzM9m5SB9I33r5sc0d4c7oSpXxzET+XcYFijVYo7835dIpCq4u
	 E6ft7582DkqKe3hKGwz7Trna4Y87/W7r+YUkQiNIuMC38u0+atbbxDiVvdSmAJIlM+
	 wq5N57klIiwvhzhL6ek+9SeS1gWspmpr6dc7pysW3Ejxf+nsNQvl1GRn9xuNFxI3xs
	 zovHbfJWSf+qKX0kNsuJXZqYq4o2IMUYkyNt8r9dragQZTb9vBi1UsVp/BxyWh41TJ
	 TYkBhDnv5QCq2l07+kRZ7luzjuIaDQFd/DVQ17OyVJjm3tozH1mnE+aOut+CAfnEDU
	 rVmdS2KOojXXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA83DCD5BD1
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 03:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177994035367.6306.16898797383860473173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26f2b50d50ddf332510dff4982fb8d406aa21f5ee002e817c5d32f3ea47acb84
Date: Thu, 28 May 2026 03:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779940353

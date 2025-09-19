Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B3234BA2A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758243594; cv=none; b=b7mmVrJKtfcylpGq6s0AmRnz2I4Ru+5w06JXQLcRsDGw/Ji2G3nbk2HhibVPmJD0pkU1QoSzzMl08MttekubVKJmQr8XLMzr/fZcsxV+CBsAMmkpzxE5BMlc3YQte5b3feQuOtwi5wVYnqP+6GHiLFODlqfRzk2kD20WLoJJ5+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758243594; c=relaxed/simple;
	bh=jnD33f41BKgJSuprSOetY+p4ADCVSfm/W0NJEsalqgg=;
	h=To:Subject:From:Message-Id:Date; b=F3k/4JpXNVXRWzpY/NE1+6GygQb0mhG1NSatzrF3Bt8X0snVB5y4Zq2cPV6KuQE/RMVd6UAufNhV0pxWU9tGrLkbDrTRX8R2j/eTBPikW9KDPtQgIcRQQs2AnpdbAOxOQvSos6jNFUvjEDofFedPU0ijEdDdt/nt7AskNj24wbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eRiPz4gL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eRiPz4gL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47B5C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758243593;
	bh=jnD33f41BKgJSuprSOetY+p4ADCVSfm/W0NJEsalqgg=;
	h=To:Subject:From:Date:From;
	b=eRiPz4gLoYzVJ7oxCm6juQFzZNGseOTUkKjXaEKvEcgdQRfbAr+RcMYf8xmi8iHkg
	 O6P4/JxBo5Vw4tgI6nDme63oItzxWAdJ+W+u1GoKYnE5haJp3GNCgSi6icUmB/6fQd
	 pFo6l5XFjHyl3o3ShhY97Bq9Jd4cVzXDneviGmK3uf/o+uD/KV+/RV5YHctYIIiNgs
	 hYGXpRrcmGXldbwh8WZs295nOv3e9yQTZj0BnmTgfaqcoriIs+XRQ+Res1KUywVY2m
	 A6Kz3ygsqPziZQZDHWuueVE/N8sUjgxr0K/isbrVyUeGSYsv/lqunpXXYC+gmSNQ3J
	 wLIfdNTIYnT+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F766CA1013
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175824359357.9170.16079093763684722545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2304470cb3db4e92ec7fba0d7cf5a6b62b6147b589465dc23c4feabb3ae0b4b3
Date: Fri, 19 Sep 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758243593

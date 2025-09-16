Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF18A1A01C6
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757981993; cv=none; b=me8/C/oPMNMLix78Ejt8VdQrFS2/G/InaRjhagDBTSNY8pwAqKoY1CXLpo4rF2IhMF1XuUxbtRhrfDtHWFMBh673ctLdKVnLNYoWdDmYdzniqlPVlFLeeQWXBpIzmqnwx9hZ1LgFaHr+ArgzbinZIcREk0U+exL5I3cmw6EJUxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757981993; c=relaxed/simple;
	bh=aziL8n87+w3mZUW6M4FLVogvWwZm3/8wBb2/locPSJs=;
	h=To:Subject:From:Message-Id:Date; b=Gx71tDYFpTbKze/z+92uU7fHinUfbZALo5eoUthUR5fj9Z2v+/o+SmJWTc5S2igGMmPeoF0LeWSUvGVFBfp0FKuiEj+CyQMz2SICMETjiNGFYVfHdXyz3bM58PR4GGt1G+18m994dq9ha31XNRRpKiqIyamH4uAFgy5POP1C5Sw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V5llVZiw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V5llVZiw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DCAC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757981993;
	bh=aziL8n87+w3mZUW6M4FLVogvWwZm3/8wBb2/locPSJs=;
	h=To:Subject:From:Date:From;
	b=V5llVZiwXbg1Cj7v419X/aJBeHm/7aHQjh/PVRnWT8q867GN8P1gqJiJK+Jg7I45t
	 KPc36WTgRuOJ1yC1TBs5FL9zgGJ45cLS2HVD5aFTaLZq0EXGi3fYd8DjrL2exTYg2+
	 7XwH5E4AVZoKflMA6cNgfnFu1hMDpJZ1Xx7LzFRmtR5fGy53j7EK0xrYPX4tndtXiH
	 LPlXEz4Xr6vGLQagbt3peSlzZgFXPKrcLkHIVgOLLXLPHW++Bve0ya16QFsjGCvNzr
	 quLz50m7sIbTYJdFUYxFvsgBTu072wWTo54qAdGDzOBaLjoE+CYBhgq4fwysks8XG1
	 NdEmMBK1ytT/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F41FCAC597
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175798199357.13630.5601669297085322451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 253552bf5c0a67cfd502c4e67c811ecd40b8b1c64a8ba5b7ad3b2ea1342e84df
Date: Tue, 16 Sep 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757981993

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 499F32F90F1
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755165594; cv=none; b=S9t/93kIe3Ltj4HjyR61qyK/R379NbCu9EMQw52rtRfvIxb4hXzZPEn2dU2DVtir4M0sMqu6aLNq1CEnyx8WrvZ684OcA1Hsm4x2CpnZb3NoIfzr0+IxOgThDNRvnjonIi/Zefya3jNeJxKIF1a7fUX6RDWdaLcDnXUlNvg6Arc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755165594; c=relaxed/simple;
	bh=7OOGxc9XxE+ipxe/9ncH3m1wxPksq42HD1jKk6ydA8E=;
	h=To:Subject:From:Message-Id:Date; b=rsyMBqUXpfSVHNZgxzYxhmQXhsXt/Ni0BaJejtElq8KWta0YHiha2BMqmtqk1vwdyV33vbT5hQ/luGpUX5WS5W2KNi7+Zcchmi0AUDOj+Ev830y2OSR1pW3V6Uf+9hP2zRc+VDEA5YZUmbB3/zCISHvJVOowWgf+ZAKlyDB5FDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hJMjTHGa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hJMjTHGa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5685C4CEFD
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755165593;
	bh=7OOGxc9XxE+ipxe/9ncH3m1wxPksq42HD1jKk6ydA8E=;
	h=To:Subject:From:Date:From;
	b=hJMjTHGaKgS1pcpFTbzFInfxSsrxAKx+Aibv0xvmpZVlHiLBiGmhpA9p8VF6+FaKA
	 hY0ICMeGH5lOrT2oMwtvNNm5SzALRMLnGBmyNX+/+F93201qrA+uaVWsyS+u46UbHd
	 J4ain9cJUn0cJW/EQld70yZMljEyKRSB0CmcavBkc/MLhqGxf7eHVakKxkA1pyv9oU
	 YVoirsBhC71Qa8JUuXEBVDOH/0G8xtDTbye5ga2b9QDpzYlVTAa2oTixiLA8qC2B0G
	 hMrsBbvE37GAZXGGxvBMJpTZpn6Lr7vQ+fNUh6NNUplYyzRlRc6ZAmZtEtUUjQTW4c
	 s42s2UEzEMI1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900C1CA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175516559358.29205.13372306994867435128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b4c4833308af1baab6044a238285dbbf6569dca6cdb3563e7c991987188d944
Date: Thu, 14 Aug 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755165593

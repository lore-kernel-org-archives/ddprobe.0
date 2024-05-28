Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CDEED515
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 02:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716863063; cv=none; b=R4gbqgL981m4PD8Gt6gK3EfOC1Kea8QmKAbhiYMr1bBHwjBRMNpggwsVlUFHVG8A88mlK0drs/v9iBw8NTyf6VaEWfIpFUpwErtaW4iObH6H80Sacs7SnxLZKE0M3rXRyMblFhkMO1mJwn3Ti3l3hhj8ykg7emg7T6JrAnp4BAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716863063; c=relaxed/simple;
	bh=GrvmNQDZI+TKh1L46WnIOViKaKVackxXN8l55xI1I1I=;
	h=To:Subject:From:Message-Id:Date; b=JM7htD37cgxMl6I+b6w14pTeuvn2jA07JteHJZ5cYfp0IFEcQw/3tkzIFYG5D04fX8+PaXM4rFmLTpAWQCEFl9e565y+FmS3MrdO25y9T4wuMqTKkPUcZqQqUxJIguYigoGnYBxQSscFgifyvRiz7nvQ9twhG4Yt/PNMhV9+Cro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cOu81Tl3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cOu81Tl3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5CBBC2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 02:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716863062;
	bh=GrvmNQDZI+TKh1L46WnIOViKaKVackxXN8l55xI1I1I=;
	h=To:Subject:From:Date:From;
	b=cOu81Tl3/ABEQaDQ7nA7Bs0Kdti2Gv+zf/rswWpis3rg9F/ShC8VfWy6A8Nrklmdg
	 YCoQEx9POx+/y3XcUQcm5fJuFV6ZDVeKQkPUGoOo+YYFbeHvVV9nAMscJzTqWDcptW
	 pDRUhJEQHZmGxBC5OmTLU2kXN2HsFiwRAMgf/enb4YzUsvFNTtiOTUannM6REqGZ6t
	 J90/baL3KISKd4vP8hbv7zSChfHkE6UKQuCM5m3Lk1CmVtNVpamUKy2XZVlUvhtR64
	 bgspTRLNc0lKRS/t4mYSvdcmZGuiZeF58zy4na8MFueL+E5G4XrMGZzH+NdhZ49ObB
	 0K8M5R5th4Kpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0B20C25B74
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 02:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171686306277.6746.6450206427995877149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 992214022f0d1970a3e0b7a14f2c27eb020e4ef3e4a7c86994025507b7f79727
Date: Tue, 28 May 2024 02:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716863062

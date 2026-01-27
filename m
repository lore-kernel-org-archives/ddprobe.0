Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E23149E17
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 02:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769480634; cv=none; b=ko8TbAseppr6eD/H56t4kfjNlxPwCnWiN2o5vIGaCbxqYrQ4m76ljSuw1MLHDWr0VU1uZbT2MuovNtQbN1oT0Rw2v4vDeaeDF18/cgx7ics/9058VLSa5jVtxaD4ORZt+jl0ZPcGl5BBeBspJK8A+Sh0ikiQdimIhUqG9C4aV24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769480634; c=relaxed/simple;
	bh=BhzfzCKiL0etEKEI3mXKEnxYl9j4hrh0s16PeDX5G00=;
	h=To:Subject:From:Message-Id:Date; b=Noedkw2RKYC3wYwnm2u5GjGRSlAuPgEVWIPFsOHX4DxTrO6SoO8I22S5cCta31HEA6YLHb2unnEUx4kyiVhALPFGzhAEMLpWrHhNI5NIuISTpU9Yf2oo/5eQE8Fy92CLnRCLwhpunHTRnHyXEZ4GreU+TjboTUiSJvj7EoV0us4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BRlpfbnv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BRlpfbnv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF7FC116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769480633;
	bh=BhzfzCKiL0etEKEI3mXKEnxYl9j4hrh0s16PeDX5G00=;
	h=To:Subject:From:Date:From;
	b=BRlpfbnvQv3wATECBePnflg8JQmu2EfWYHAPAbLwMMyFN2dfCBALeizdKzTyRtdV+
	 /IZin7QjxcKHJ3LL2dOnz5YWHMhxmzX/Y+W4GVyE/jH2o7MfEiZ2QPfBcBb8hq8rAu
	 Cy3/Ou/v8XFszIo+8sxo+3URyEBnWrHiqRkWT7kAV+/yaSn6iEOevFxmFxBzK8rIqU
	 pKTFrosPaCGttNRl7KEJ0cIGBKfolRsPW/5eC9/OicH0whbI85jSa8wFk76Q3SnsEs
	 uuT2Bqu+g0H6qhve9b751A0MDzVN4u3udZlxMQP26PzXmxw+3Bty6ndTaRVTBMfdrR
	 Neje2ArKyyyGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91684D19512
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 02:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176948063358.28699.7649593221127340875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69fb8ef7289804afa6245f04e87704ef40190b51fbc9993330e9c6622385def5
Date: Tue, 27 Jan 2026 02:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769480633

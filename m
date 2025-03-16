Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C6A4A1E
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742084994; cv=none; b=OMQZX35IfNj33LO0FrxWFTD6LjOeV37ezW0zs3wTX0+Z6dG3+VLZVIJJq6NYgpvMNvigEk25yM0iWVjMeR4WTfB83kjTxMqAlx6J4hVip5GxkGmNbKyzHnuAremDDzlrgLrpqedbChmoWfkVxpxgZvjSx0R5PvSWstpzVAX+FtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742084994; c=relaxed/simple;
	bh=a5R+0Ge2h4SUw1fb8HyNz9AsT3+z2H4eT5+ZrWK4NC4=;
	h=To:Subject:From:Message-Id:Date; b=gn/t9wfkzYCpuBOpeufmus7kKcdkL3nnqSJiASQytGn8pDIK2Y94fw8zkWcSCW9Yw5V6kfK9fwtcsT9ki8cllxmDRVntAai11IAo3ATp8p7UOQurYHok0XF6KsyVPVlJt3mPbADoynhODY0DqwHiGPz8lxmWhcf01ZPtQuYCV9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pB16c2Aq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pB16c2Aq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C096CC4CEE5
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742084993;
	bh=a5R+0Ge2h4SUw1fb8HyNz9AsT3+z2H4eT5+ZrWK4NC4=;
	h=To:Subject:From:Date:From;
	b=pB16c2AqqHxyN0zasNI2TY9tJ7COnQjsbDMaN9Qyaql/14fBv+2L3cVY0467A9Lt2
	 grhyHiFxB72u1wORQ4h6jsAD3DE/H3+go0osD6fCL+ywcieNzWQ04fL4ZOyavtZOqo
	 /5IVHj0x6Gdj38NgYppqTLTypTXsTXtI6WsgLGj9Wn6fmBUtApkBe7SvWAWOcUFaAd
	 BTGb/pqYsAIZCFLztiIMmYVudW+UPOAZ4t848t3SyLChvWiSO5Up3Fi4F0b/rztNGe
	 TOPUyirETwVRhIy4ghnEcizLmprSCZdc/wucHdmIYUE4JkpbHHtqoyia/CBaUhnk5r
	 y5TuWXhlhpPtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5897C28B28
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174208499363.6005.10534844848313444862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7c46bcfe14466f69edcdb9b6da5083861f8bf392d1ce89c56b64806e4295602
Date: Sun, 16 Mar 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742084993

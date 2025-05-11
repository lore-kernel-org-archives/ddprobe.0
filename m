Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44BB719ADBF
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746998994; cv=none; b=rBdTPrRYyPIjQ3kllfuE912O9um5UoXhxcxCO835UcvJ8RihpSnkaZTiLVU8dVj8v7KTH5XFXU/YwuHPGybbfR4Bj3mokXm+PPuWPMGERmaD2Na7SLh+AikPMscMwsiyMpNSiXB/QCNxF002DWqQS9OCZTDhDIjhJG91DPSqpYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746998994; c=relaxed/simple;
	bh=nc8TFpiRlXkfYIFj7gAaAFp2Z5IC5Wr8XGwX5q9lzPE=;
	h=To:Subject:From:Message-Id:Date; b=stPWcOxtydqoAHfLLIBF4EYvRJ3cQAY/lskmtUBC6u1VDS8/92KFZpgplf99r9cIvn27l/2mu/ErMWc4OaN/8ILAliVrlWaVVPLxm3OxW442TsMikYy+SDUyWnm/UXV0B6crnnxSltFJ3LdiOdUwlW5jfB+yOPN/9/vY6W1SKhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yqoh/EBG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yqoh/EBG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8AB1C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746998993;
	bh=nc8TFpiRlXkfYIFj7gAaAFp2Z5IC5Wr8XGwX5q9lzPE=;
	h=To:Subject:From:Date:From;
	b=Yqoh/EBGH8pSDIq0sjS/NHizjffNgLkvID6p46fkUqiq/I78R3h9vffp1opUlENia
	 6FeCQM7ShXngA5IeHxafaBevYoLrN8LO2gCjV34L1q1jOJ4FFmySeNSg1h9RO59Apu
	 W4LwHPiKhgSarwrb1mHJUQ4BC2Msf2wx4n27pO/DStJV+n3g6QKGjiNVtTDo3et5fW
	 jbz0K5vh9BLf3FF/GSSaSYrW/45CB0F89IDeJhvkT5vW8toRuh5dyNSGxwMS1xV7iC
	 6b6f9307NKcB4f6jxh/V+zcDUMRxVsM/qdRD6G11EQ2Vf+95c2mio2Vvc24bXX5b9h
	 D+SAqOkF2dTXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9596BC3ABCB
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174699899358.13459.13011440474824207340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d63d7b5c7a8944e3e0276067ee7570cb3e41d25fe8e70c3a42b9584ebcb0550
Date: Sun, 11 May 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746998993

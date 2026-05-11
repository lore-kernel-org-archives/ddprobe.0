Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229FF21CC51
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 19:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778527834; cv=none; b=AqwagbIbLoZ/gdbwNOtIhJ8O2PisTGCPGhh2p8X4/KXXEJ4bDtCydboZwsktVFxb6Cdjc2Fe8wbQGVcsW1SzG0MRMxm5bLNYtoU1z4RlCUpYWGsaRKvVI1NQ3yy2knYAdPFmfukVORHTeDaTl/eFm7ImbdwSWGJZraLsiIp+eR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778527834; c=relaxed/simple;
	bh=/hE+fixZFX4xgsneJzoi2S71CQiJjZZN4ijp4rifJ/A=;
	h=To:Subject:From:Message-Id:Date; b=Q74/b5rhUjSY8ysBP2wWIjZ9eJ4zxUhxdONBD303VES7RS3QogEIvMt/SKzUyUz+C0zwRDca7LJhoOmm5pLvxPsEGnMl0PwN4lhCTjxGDfMkVA/Rf5yFoXMmjgoegmCz81JGiisnbPDUcaQe8vNxsHxaH1B/dz6mhsAvGOXlRcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F2842of6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F2842of6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD017C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778527833;
	bh=/hE+fixZFX4xgsneJzoi2S71CQiJjZZN4ijp4rifJ/A=;
	h=To:Subject:From:Date:From;
	b=F2842of6v24eWoNBlyIngTrxTvVysBUyKxg4B7eREMCND/EZhAgPMNWWSI2R+NuHp
	 hmqjKYPwDJQ459weV4+6G0FWaE3kolRu9BklQuemW2Wd963bcnQsSHQHqMkwTPMI0h
	 Do1AgpNCnFROqUJ3mQO0418UlHSfoEOSeIMGisi76jdCclG8bmS2SZkUTjRTtM/kp2
	 ueRBvQAa22EWTdyTjTey7KJo0pu9zzn09DIsNIP/FYRqsNw+qOiCS2xeRleddpuMwo
	 uw8Zl6P42JZGcNXJtw5dS2vnWFxAlI2dlwNGRoh3xkyJ/YAhsWT6YkdjHxYKeUJlPP
	 65+LSSiWdZdgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0EACD484E
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177852783369.18474.2113856920224372060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b70395513d50e9105db738265d1b8761323e9579777b3ecc1aed1b14f02f2305
Date: Mon, 11 May 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778527833

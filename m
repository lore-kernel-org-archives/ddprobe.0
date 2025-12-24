Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C78329E5D
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 05:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766553234; cv=none; b=GaV+x6+JvdxQHbB91tR7sxzhDUMT1jyhFHCvu8BBrlymwwWrLi+p9XdvfLM4D7AfKVZaqwHh277EkuAF1G5ffe80qDmHF2uVVdyKPQXKGxrvZ6CFXRtB4uNTy6EODQO4LTKXR5uVurAYmHxffSIjWiEnSdJZEIMaGviT1mQVmHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766553234; c=relaxed/simple;
	bh=5hJDBU6m9u3Rg46rPCvmKFGgIogcvOf/YmQ55Ui56hg=;
	h=To:Subject:From:Message-Id:Date; b=SiOucZgwH1wU3DITDMksZvCIGPtwPvCyVauT2DqvJbhzKroawDgoCqN9xtBlGeQBWjpr+emItVW3RoJFBaWdrB4w38CarLUS38FDew27ixVItMKR301tnFTjpI79ecNAMJWPw+5dMcflF/KquWEct8hC4+10fMjkJ89kbnnIY00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pYb+AwyF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pYb+AwyF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91F6C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 05:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766553233;
	bh=5hJDBU6m9u3Rg46rPCvmKFGgIogcvOf/YmQ55Ui56hg=;
	h=To:Subject:From:Date:From;
	b=pYb+AwyFuF0UfowehU6h1RwxQFXNyeCIfEcI1MbJwiOq4qTMZndMSodVgeFWhUVR3
	 +hnfnWiPdz3/i7EMoeFAppAFhSEJlzF2O+yqv1VUKaWagIgyDerZxAsAl+MSjishxs
	 H+o9ApFs0rG/duNNImNtNecJZH+1YzfdprecjkuvONgvFXeyX0r/T+9uQcOOpsigEY
	 T78jaIcdk7WtaFAHqqnz+/AWbIGhRISZHi+bHxLQjk7XXx1+rMpGdgXLi4BEhDfQNo
	 DCeaIECLH5WaZBVSO3ZHkWu4BVZ2nrsTJgHzrSbWfQK79H8YvkDZ4pYpcTx5SCLbfV
	 4J5MB0HS0N3og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977C7E74913
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 05:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176655323358.16270.2142498518732944553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27766a49e7afb63dfbfaeeb6c13ba2779aa68c73f34495f8ad5b57ad98b796f4
Date: Wed, 24 Dec 2025 05:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766553233

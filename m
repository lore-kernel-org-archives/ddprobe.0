Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40BFC3B3BF2
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 07:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785308434; cv=none; b=FmGmShOjSFal1/SPOuRftws8/5opNHHhbBrFqmuraSE7WvVm5RFohw928y/zbDpgW/2xYK+XyF06s6S1lKMJaOO3O8MsKJvdmspbl4bZZV/6A/QNMeNtR3KTqZvjJ2MvEGyPZ28n/+zZWjUdc40TdmScbNyxkJ3k1Nmnxuub/a8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785308434; c=relaxed/simple;
	bh=59anYl0d/i4ocl0dbVs8n9aaQ/PsNdw4hO7CJM/oJ2s=;
	h=To:Subject:From:Message-Id:Date; b=HMi6oMLt5zI9o53MwWs4rneQXSBiYv77zoABthyRW7MMxZ0tNora+G4Yi9bG5rpQlR9K4Pph+n/3ycVM0rQCYVld/TtrBDkNzQq7e4DvGZwSeM88SFwl/uOxHau+O5y/NxAhT2x9I/cuxwblCUtx1Qfxqi0S1Z+Sx/9Pbfna7+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KfczJQy9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KfczJQy9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8D01C2BCF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785308433;
	bh=59anYl0d/i4ocl0dbVs8n9aaQ/PsNdw4hO7CJM/oJ2s=;
	h=To:Subject:From:Date:From;
	b=KfczJQy9qWdphggmeSScsZAMjo7hoYzJE+kc7fe9CZdxsk59XPpDwSlPe6ues7EaH
	 H4UttCUMMJ4w1RSWf8VHlX9MK0GeBEc8m1TWhuuQfkBRm8Fdw4D95SXlt0iGnihKa3
	 Do6RffCQ27kCkI/G2Gq8ztkew+iSHMhltK3xnLXAuqY7j3c9jwDDz8sCH7LASwRiIt
	 BDFlFh9p6TYeeQJpe6m1BOt8gP+D6eNLRC+t/03A/Ey6prE0r030IR1tXC77Jli/mK
	 NVadU5wNnJghLEKPLqPbIb7Ag/dRTPSAkfgKfswQ8OfwUDxIiPnJRQwrOoXfFMFssr
	 rlSykHfcki3bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD8CC54F51
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178530843368.5993.1231415653500588344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3af655d54492901acced521b1f85b2002aabd93028daaac5e3d0a3f1ebe51ed2
Date: Wed, 29 Jul 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785308433

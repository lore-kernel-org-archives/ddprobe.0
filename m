Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A74F3D6688
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 02:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780452274; cv=none; b=o9wSEf8KcN9hZg+Ht/1iLuVV9A/On3mgu81i5gGb/LJV9WQPiZbMzE1zDUodStg5Iwm+o0hRYaooKtcOQiZxglGeXg+q1bcapgjLlPg2RUTJMDF4YTKB3pecfSjzagcMvXenzvrIHg2BOCMXDgXnxJ2IhiD8SvEFZ5WApDeN0C0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780452274; c=relaxed/simple;
	bh=iDx4fFGOoNaBf9SmxkXiZMwhRLMETx2FgTRO3HKHCeA=;
	h=To:Subject:From:Message-Id:Date; b=GkG/50wI4CrYmjICsn/n/jhnVq5ulj+YYyUBGEsfvHrPdMfo1zYVf+/BFuFUilpN1MqBjaOBfIAC/4O2dqJmq6PDMHhCWGd2SaXIF7ufBYQbINu7JJDucc/yWjJNF8gjxExp+k1U8dowbXz06VHH20+PMuZtm5Pjya+QPm7a9oE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YvBF14gg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YvBF14gg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9D51C2BCB4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 02:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780452273;
	bh=iDx4fFGOoNaBf9SmxkXiZMwhRLMETx2FgTRO3HKHCeA=;
	h=To:Subject:From:Date:From;
	b=YvBF14gg2jp7gbU5waidaJiHPK4Q4YUbHTGVhIu8IYSn0P+I3wFGPG+pdUIU8Nlpu
	 hMp61ZnujGFQnPV1cN327sGolu/XPW46uLlBThMnegwmH/kE37V3EvMqgsIwJidGA5
	 BoJHzFfqiER7c2LSWdtRFKVhjE/EU5blRksjWXKMpKPs6sKFj0zyF6Wl4Fyg1KQa0y
	 A88jknxgCSQigsB/qGT0fSvcJgcr5yapoyaK17RGHvRuV/PRfSe3unLuN9Q9lAlsOD
	 uidMLSJDtln4yDmwZJjKVC1TBrOdWDmi7WtaoH+Kwt3Y4p9owoSPPU/v8pv8AvjXPM
	 K6SCrgvqpeM8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D73CD6E4A
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 02:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178045227369.16326.7118138323096153972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e9dba93d46d2f966e5a0961d6deae590a30c865c0c149466978270cb57648d3
Date: Wed, 03 Jun 2026 02:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780452273

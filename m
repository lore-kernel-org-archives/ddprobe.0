Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5307629B8E1
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786254034; cv=none; b=DicFh3CmBVXYOkIZ4TnYODMiCCo1DYlZSVEf1qOR/WgRLLmY82oNPbTlQAU2J0SEIbqPC5Uew+j7+hZgGaUZKmzMtoC4E9DQxi3aSMqNO+5v/X14oXefgWQfXBF7YcEBsePUAcFM2cYm2HQkgE3p9k9DV32t7/Y/HfjEyu2Xkx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786254034; c=relaxed/simple;
	bh=NvbKetPRu3zApm1nYUwHDXXzXksDu9bSrOUuoPmHO6Y=;
	h=To:Subject:From:Message-Id:Date; b=X5y2tWVgHypQRCiRDqdVfGeROsujNYPaap1RwM+hX4pzjQ7sAVHCBInrRs0XE5x/MGlfb+uxYaX4qYYsstO6aINn18fFcEur8JaQvLu3e2zUPPk2fV+8mWykBJyTySFRUMvawiopkCd6WjjZp1tbEPPodl8Njh62YG7BnLyPj+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tMzomXpw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tMzomXpw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D77AAC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786254033;
	bh=NvbKetPRu3zApm1nYUwHDXXzXksDu9bSrOUuoPmHO6Y=;
	h=To:Subject:From:Date:From;
	b=tMzomXpwtl7AuM9OKb6RU3ksS/t3gPO8U1AiA7J87WzHpXmLKOSLIYHvQD+eNZFwh
	 GK4bSBVdugOSQVsvpAgW01HYsYBmQzEfoy+RQD1nKOnM4I5eEnowj3Q0ctb5j0Pz5Q
	 X78b7Lx23vgaGu14sCtlpm/8xedvsAv2xLWFNihH1D+wIsbEsJiYjwC9OMlobi5O47
	 W4KevJLfJdFVHmvTLYk9wpR+tphNlL3mU16JfTd609muZNawvFymugGXzo4CuoNcLn
	 7y2NSNOAgiQV9OKspkQYJnGCTlLo5tSHuqLwXzdMWUu3+vbFeBLKH6iKb3sQXIDpIE
	 aiY35OBel0veA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2D8C5AC80
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178625403368.16162.11056567330798045677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b0571ef277ed331b92cc6a18762fd62746e794383eea60b47a1f6f87e5cfb56
Date: Sun, 09 Aug 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786254033

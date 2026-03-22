Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A3D32727FC
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 17:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774202094; cv=none; b=A0MFlpMe6QDvBP/TyNeIcXczc03wg9aeEBAeGadmiHGZUBPJRZNEGcEnShggV5sntRkAdQ4sQKcof7LvB58h3oN0bawDxvNYxdBkohJrq2LmD6zsAZd3BLF/7CF6N5kzrSOP9roWzuceaN+Lzc7pDRt601RoOtKxUmSNWhf3dMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774202094; c=relaxed/simple;
	bh=m6eLh51yQC2KQctWMq1b3LyRJLXJ1VYdVj+Xa1i1swE=;
	h=To:Subject:From:Message-Id:Date; b=nv8a1h7rYMqoyQRfl/SOpZL405kMHs4kJ9L/N+tOfKqk/F0vF1nusqRaHR1tW2EkKJIiOsxhur3JgY0Hh0zyGDhKZ0/25XpnR/R84JmaYrVA7jKks2ZmW2/UQWAMsA7C6/enSv5syRBenWA0Shn2WNXLyMs69KfsmghmH5SqGPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=moQJrOYN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="moQJrOYN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD22C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 17:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774202093;
	bh=m6eLh51yQC2KQctWMq1b3LyRJLXJ1VYdVj+Xa1i1swE=;
	h=To:Subject:From:Date:From;
	b=moQJrOYNGgFMOX63vFE3urOPrB1sxmMIo4FoAxvKzQZmyVEocIZR3aWdGZDzjufDe
	 turXM71CWYGds842ciqTc7RyBLFDAiylzCkkbGUKi1wr2vpTlgynlcHE40DNoYSzjE
	 AzagPZhc42jyW39ScBMEFb92fX2N+H4VncGbdq7UkrA8/gwz6er7kTpSYyntY75Drg
	 DXWfBi0J3ae0KTfYlmZZjefOpI+vi4qtPcmUC5rF3vUivasRf3Gr6Q1hS5T6RmypAa
	 Sy6LNIyLXkwvzjqRnuPzhdsbKmWWfaA82P+t8W/N08wRvn6bS9Fo7Vi27tf2PWzvWM
	 O0Q1op5/J6P1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9605EFC72CB
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 17:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177420209358.11014.18233723084070935417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69324b5fb198bb5a8df25b28220e2d7858f5d1ac13598dbb13adc56a432c4a48
Date: Sun, 22 Mar 2026 17:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774202093

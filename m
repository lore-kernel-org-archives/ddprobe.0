Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 185D03161AC
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763014194; cv=none; b=Nc0rsAkZMpfcIgqB2lHp9pjyAVjDoOcWZmWRdzlRmg2X37231Z/lM60V2WEtqgTAKt66NmK0ruVuGluPOa1+cjEffn4Ama13S0h07ESK/KnX9Sjb+n8QCOS8YTPa2vVsJJTMp+1F4YlNnenL1h8PYOFN/m9p4EfUEFjPPHh0B7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763014194; c=relaxed/simple;
	bh=2pwBcxiHPbXFKH/aKTHeKiDfrEOg3eNIJ7Gcze3S+GQ=;
	h=To:Subject:From:Message-Id:Date; b=k9+L7t5uTSc3JuVSCPuBzmHwMkT5Zd6nVRuUrsv0Fz4PSJkdhsjmNV6v1DVulu2vZDm/AffXtfpyLxVKLI86xKHyILI3io8VgjgEdfL5v/zTnbTnuntmSSrVheqBQbnfT1uLrjIQSRWVkTUzseP1gZ1YMsU1VQAtSNJJBupQMy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WoQjZX7X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WoQjZX7X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A1DC16AAE
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763014193;
	bh=2pwBcxiHPbXFKH/aKTHeKiDfrEOg3eNIJ7Gcze3S+GQ=;
	h=To:Subject:From:Date:From;
	b=WoQjZX7XRWvWrldZdXIbrCwZ7ETdz3BF5L+ffOiU2SlmAVyKe4nhyQSgXOyMLEXBH
	 4Fwyds4XFtmIG5Sp4UOffnnfX7BxkvA4Uv0tf/Gsexs+/tCUien5ttTPL4Us45uocn
	 qbGHHhfTzGzpl487bxdrpf3dNhcuv10wtQv2iT6TuYIs/1d+qzBaHCvZOCqFtoUOv6
	 cgZGFVWYj32oEUN9wLJjIlz9CO/BWmD6C7Cj7yTbqaJFz0tQzNDgB39eEyEcaRA6v8
	 P5UGT/Cu/yFJry3XBLEfL0TjpNOhxiUcrD9Y58+IFTqcbSViekoVPoD56wruGSGaIm
	 CXwlgTgsLcNGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E01CCFA18
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176301419358.961.12691634288444610117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c01c362d62a15adf66bfd3cc014b6f79e9aabe1fde843ddfee76c1875e1f53d0
Date: Thu, 13 Nov 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763014193

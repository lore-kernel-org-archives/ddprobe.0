Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D32C27932D
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757064594; cv=none; b=WyOj3RVU6nG3CRNUUqW6rv/5o/HOh7vm1bU6GxeiSQQTRUlov88OCqTV3IZtcdSW5y/n6PPwySRhUW/mRP6MGuO4UoPFHg/WrORVP4lv7dKnbvEKL72IMfGKJpcyIbu0TRTpXED9HKWS8NkhlKIoBubz/OXB2Y1NS2l88V7FKzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757064594; c=relaxed/simple;
	bh=aMaCtZuqkS/NKgXR2DtOD9rRuhMp7xriPTMhADLe+wM=;
	h=To:Subject:From:Message-Id:Date; b=p8iIVdzfzSTncV3Hgxfpph5QDCkFOcZOi6DEpbSuJGFaegfKd8GMS+uSMd5PTI+mcZNY010mbVVxwW+7ecEKi8WiwNo7Dkj2qsTP7IwlatgE8t5WDunllf0cw3zaOKH9PUmmnXxC+KyrDPPcgpNu9xtKtVk/Jhk+t8YL8dMkZMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s3iy48lp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s3iy48lp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E316C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757064593;
	bh=aMaCtZuqkS/NKgXR2DtOD9rRuhMp7xriPTMhADLe+wM=;
	h=To:Subject:From:Date:From;
	b=s3iy48lpW6afgiLjgSSKBPSBmuuChn2hxz3a/mHMpfVSPMv1lZ1t3BbGfNEA8BscE
	 sks7f3f9fqScFfYsnI1EWUm2Nw6Rczw1EB9SarjXqBlzLAx1o9grMsa5HfGXhGNNrY
	 LJx+kVoFIZjW/26azpZnbLfUkW9vbyGEGV0owMLfaEMwAXrT/4GliGqmdFz3Ce4Vmm
	 ce+cT2zKqPnfosm6MgJVge1KQjBzIJ7rfekRWv4jszd0KrK6qpwNDZS6WH5D7Ke+KO
	 30o0kvc5Ws1x8/5ZS0ZBGlb1zqRr0bHa8a63/Tq1brMQ3luUrxBovcF2tBlM26eFey
	 /OpkDgBlb80iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906A5CA0FED
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175706459358.3066.13273921744298704442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8ac1a71f085a45d730b0990ffdda0327fa6d1ab5576d5bd430d17f3a958a76e
Date: Fri, 05 Sep 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757064593

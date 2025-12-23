Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F51B32C954
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 14:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766499834; cv=none; b=aYcTvaVZ/AF6EURvp3Z1hgi+5VMf5uF0h7JZFKpmu4wScs02pMv69FI1BXpJvGpxWqaaTBx2XFmX2af/FI6K1TWT7CFN7aLhGK0JE6XYfsfTuwDas5Jy+dJHkqTmsiWPAkdUfoMjVSjYgDZS3R3lIjT9pKtOnCdrnKU/uQCBVqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766499834; c=relaxed/simple;
	bh=6DC1Co1d7tfbgdXlxvHQGIZdxRtY9eAi8LUsFqmpwsE=;
	h=To:Subject:From:Message-Id:Date; b=kupY2LvPfCocjHASRJpV9GcO1gPHNHLrmkHdEEBOTAmwwAj+KQ6DPT3eXWVa4jtETzEnjUUT0OqKT9eyOw9IzfXCbx4iirPgkOpM16/JKKq+kqtsBc0ofuPf4WYbBDHl2cdhNt/fuTKENgCTDrm/9GKzDejPEYjTWBVFSZiumTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sjPeKRlF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sjPeKRlF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CB6EC113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 14:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766499833;
	bh=6DC1Co1d7tfbgdXlxvHQGIZdxRtY9eAi8LUsFqmpwsE=;
	h=To:Subject:From:Date:From;
	b=sjPeKRlFINLt69HNR37UKuoKVOpPOa6a3S2wOurogkdiPAwqZ4JHna3WL30Y18/Fs
	 XPma3AF0uPdZFymh1cjPEmmdEgDkPSpwIEvp1R8LElRbznll/vJ691+MKI+oHcSM3m
	 gG2u4x7m/gANRvzq+zTMofFcD9ClinvHX+nyhRozT45XBQtedpkz/n2nKXvL4dxKGM
	 pGnBpJsztqiRT3sIlMwfaHKz0VgvPBew+waLPtWo7NhrvQ1bneL3YFgfX10PVdE3qJ
	 RWu3YOR5SVpKsi0kQOHpIU4zryA+AT7p5Y2E9HtOqZ6Ktqv956X/5P8fa8alPFDQcS
	 APcAmQnErdhxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC16E6F095
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 14:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176649983357.24348.9089724359946594602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41000692aee1ba3f23560d3793a9b20e5a5354c3e66cffde5aa6ea2a89fab209
Date: Tue, 23 Dec 2025 14:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766499833

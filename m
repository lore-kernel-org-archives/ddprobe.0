Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B0403876DE
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787382634; cv=none; b=Bj9/qiqZecJwemddsZKKKULF/SlDyuNWAAylQRz6FLHr4T8Kw2l7d2GUKs7I5E/wz2W4+Fa4+UltV3Bu++npbbE+lHr9FRvrkKgshVfcC+jFUpztUYVkLIPTMUKXYAj5GvzTXyp3I/BcUhH55J9VdTjp3p8qqW+XOzXVWFKo8P8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787382634; c=relaxed/simple;
	bh=O7g1X+4pI/CwToG3U2/tRF1155hfgPFr+DV7hzZLzcw=;
	h=To:Subject:From:Message-Id:Date; b=F7VMxiG5+nfB+9FFIIkEeKiaSkzzBSpcnstWdFZ4mdB71VBY0J3vW3uuLzEA8izNev1Di/nTVz+Ig96tZZ/GrzvNmIe2zM5jiw8gOBJ3KeDtXbFboNBrAACwNq29K1Lvq2jeXcSn47YMXg0WPgp8icQ+sMIyP5i1/hGIhzvT/Qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bvx7Anf0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bvx7Anf0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB9CFC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787382633;
	bh=O7g1X+4pI/CwToG3U2/tRF1155hfgPFr+DV7hzZLzcw=;
	h=To:Subject:From:Date:From;
	b=bvx7Anf04to+0hFiW2tycP+nvxy6zbp4SQ463OG3ep4FfUVdKf6qnPZO66I5l730W
	 rfwB8i5juVFZqEf3HOsG1prVPu42NfdfYifOjaFY2BSM6muJoFIo/3vDuNqzpYeCze
	 tj092CMmt05I2/7/WEsw9o+FTKXw1C1Y5o7+gAvduuchiwat6SxgQCpfeMojmA5X3k
	 ucx5oncxcTr5I9pXBFalh5IOlrHRjqwajSVNxiCW8+A1/kZjx+SWwfqBG80+11wiu+
	 NT9R3SHL5/QFAtHU5/75zzZuqgC/pd/YW+Z0yCtS1WBIKS/7tgU9ulNEwpcpEPGAn5
	 zn0Qz8vRGbKdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4B00C5DF97
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178738263369.24527.3139417065275091853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c00e74a0a83801ac3e6726d4d86766a4564f984a43342965b9143735b1f052a6
Date: Sat, 22 Aug 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787382633

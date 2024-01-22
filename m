Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AED11368
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 03:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705892897; cv=none; b=b/OZCrMacnD6qxoEYMqkEFykcmt2do+k0+ee7NbbXe5FqMI2ZQqK97/KIsaR1VnBovQzcKIC692liNL2XXYUw3RuKlU5etonRYe+qJCC42Zn1nI+1sNs7k93gp2HH1ZKqfhQ80Iux4soh1BQhmi+/TENDJqIpOVQf88Xa7mSg9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705892897; c=relaxed/simple;
	bh=CK5ahsnHbyK3zr2DPwOOd3f39hlsolMmwf4i1B2Su6o=;
	h=To:Subject:From:Message-Id:Date; b=WN1DPgHF1ikHwKTsWDR0gpdKboCLTYsa+NJqIp3GIMpg8MkzK6KRs2EeRqLIzBP01lDoW8LYH2xgUMaa1YOtA/RpEP+1CyRQvjdZZbVEKCovOslEBCUGqYIxzIsFvlsFgQbGoZ2ql7j0nPJYWJ3uMddM5MYswnEr+/5Hjzmfc0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bcREoel9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bcREoel9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74F7EC433F1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 03:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705892896;
	bh=CK5ahsnHbyK3zr2DPwOOd3f39hlsolMmwf4i1B2Su6o=;
	h=To:Subject:From:Date:From;
	b=bcREoel9ib+TXjli/zcIcdtn8PycZBTMl60BThFkqICXF2s1gVlbPSDAsO3HEosM8
	 NXw1rMH5vtLyefKbZAv7wsoZfQBzSsLe7ovxN6PaMxIF4QQOlKmaxj2ODsyfyOXtHx
	 /Lsvtnvni4K5JKGcBOcYd8twLXlUMQLdhyU7OkllQdUzDMGrGFAbcLVQbod/qZVSac
	 XJ8phewELNdRqgGHkEG8DbAFT1vC+0WQwxVcQ2RSVpqn9TYnWhs0kcMDw3J/39fOgU
	 EDqcRWctfIx8G+tcbRKa3vlubZJKRhJm9MBVZ04UTCP/p2VX8MWEkY9O4iE5hs+Gs3
	 2W9nsi83qT1MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A6ACC47422
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 03:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170589289636.9802.16785753488650428977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baf3a76c48f148d2f9ded12d77d350e3ba98562a75b68cbe0912312023bc532b
Date: Mon, 22 Jan 2024 03:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705892896

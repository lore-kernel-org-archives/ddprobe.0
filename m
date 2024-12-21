Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D67CA5A
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734771954; cv=none; b=F9fyADDtFDT02CJNTT/75KfDKoUlAle/WNpCT4XunZXcaiow66QH7xbs9Nwk9yN22c3rz63+s/miHKBCrpAYZdpm7jEs6/K54fb9QALtqEosF0SBbcGFt1DmyQIc1TSS0Bpk5ZGgMTeLlsURTnjH6uYg8DWgRKuLE8Kit0kXtYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734771954; c=relaxed/simple;
	bh=EXRcqY3JM9yY2a7wnnde3pLSjRLUfkyTAaIVp7pXZbg=;
	h=To:Subject:From:Message-Id:Date; b=bsckRMZD5jyJ5Y127QCwJqOLBQhQUWCs7yAtlALxfYhMXMUiIto6W/+j+iNQI6CE7A0Ov0L8fbykQDSs6DK0CRW7iCoJP6a+kJ39KXQXuKqtMWoFYpp+1HDBSE1SoLoh3ozzpLNmOVTtKBJ0jKpPpbOBSCrEyO7tmYpoo0edn98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qe6OErhs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qe6OErhs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB4A5C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734771953;
	bh=EXRcqY3JM9yY2a7wnnde3pLSjRLUfkyTAaIVp7pXZbg=;
	h=To:Subject:From:Date:From;
	b=qe6OErhsieiK3MhlTyEuRq0xTwbVDgsPSxR3EirHJpkbdNkjgrwapSgbSq2XNhG4+
	 2clsFEPkJVRg3P9aFz5q+FAsFfoDFiHQh7413of73BP++O6E35HDuEQG2dH0lI1LYq
	 jEoShlRv9kHkzvgnSgc/Gab/pNVoPK/iQPC5uRjARWCMs7WOkMBjQVbwlgVMcH3cF4
	 GQwK9835fqphyESlDTc1rbvxYXiH1/A1pY7qyCFXX2nFPyqf/uxyzHLedj98/MlUGO
	 mAUvRmzJnEKMLzgbH0M9HS9hXL7z+zyQ7KJd+BLjkZKz0Jlqieh6A7Ri0Z6w9aYHMm
	 /TaSP7yTPiBnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BF5E77184
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173477195359.10024.10714787103675203184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3737bf50712ce539bcf88f1d463b97bc597a2b27127310b370abe632e8037d6a
Date: Sat, 21 Dec 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734771953

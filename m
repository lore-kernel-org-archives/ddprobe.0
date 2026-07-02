Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9712264C0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 01:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782956914; cv=none; b=efJTEqxmEnaGP9iycyz/NUaGpnRLvMjB6+UU2I5gL6o2ivfp/pXRrdt0CI7CJhR93lNcs2OG8wGWV5D/78RuyHkQTYGVnYCF7fuvLyEbcvS0Y3V37Tgq+dd0A5LJmgdVSvIXXBv3WMjhRtG/TfKDm/iBPa8U/bafu4BOhh2sRn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782956914; c=relaxed/simple;
	bh=3UfJbRDPq8czuFKPa7REH/WQ7mlieEKQwsFq7SqNIw4=;
	h=To:Subject:From:Message-Id:Date; b=FLFJroXDdRy3Sh0aEVlny5svKzIxgiDeZwPTTbvbfMQ6Vsv6DUwi79dEoTMlweMQfyu1WBGZW7d+WnI0TyGb9BpbfODEYUSjucei2LadFDPefTuVSMG2EwolcqG762ZbEOs4h6LF6dk0Em8bkk/X6z3LD4HivWbJqKM6GySvnJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ozb/ckzk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ozb/ckzk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBFD9C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 01:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782956913;
	bh=3UfJbRDPq8czuFKPa7REH/WQ7mlieEKQwsFq7SqNIw4=;
	h=To:Subject:From:Date:From;
	b=ozb/ckzkBh8E4v7om6yDtyo3FgCi8P+BzjXePRtpbf7FOnMM/ZzMF2fQS/K9jkYBA
	 L98pBb2q2zV1maHIbxHxkUrT3EOtaMV1PJElS/drxOiB2UahoPBG+cMMyz8cgJXYy5
	 2E+A36EXz2n2uE93tKhFAgtr75vKzxZQvJEwm7XPQjncqbBDDWJzn687izw/Cxfiat
	 nQT0m9GfV2ot3DcTb+U13bLznuyrz4npOUUhKh/N+EiN18kBhaCf2ULqocWoKvMsox
	 i/IomSv0B/Sc7N6vTK9CFxLhk0aBmo6G5tLVNDXnD5SUObR3M9Lwsr8mQMN6JCHKGW
	 CdVRQsJPDbkdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA675C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 01:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178295691368.24269.7470588263340260672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d40f2719bc6a5d423f3afd6518e152b4062c850f6cd89313329c70c4e01c3e1e
Date: Thu, 02 Jul 2026 01:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782956913

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3172A3B2FCE
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 01:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783475914; cv=none; b=VRLjhw07l9qtWXZ1X183g/q9VlDB95c2W7iUygdCSjjD3CFzLFtXe+82Dd8vgf4b4WeURPv4keUtXpcSbFtr+0MF2soxgKvuKSpmDdveR8uaAcCjIkCxnd8JqA2Na+X0yvYUE6v/m9IO9o0GzlylVRMMf5mCZTYHxylXug2frR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783475914; c=relaxed/simple;
	bh=/0QZTdl5Z8+y47POUmRX+B3l/j4DrgFers2NcuoxTPc=;
	h=To:Subject:From:Message-Id:Date; b=ra+3NtCC8t5U0bM+/UGUFVsw2Ne39UstL6X8TyoP2uDgaKRi7PYB7CplITAqcjYJxlBGZ4Egu6ZyRWW+yiw1BApst6+D/8N1T3fTSEUnTg1ouo/QdExHVpCWEqAIHfdMJf78fuFPN8aPr9y/F0qgRDFjz2JqvHysJH+t3fjyt1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M6pARzg+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M6pARzg+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5CACC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 01:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783475913;
	bh=/0QZTdl5Z8+y47POUmRX+B3l/j4DrgFers2NcuoxTPc=;
	h=To:Subject:From:Date:From;
	b=M6pARzg+nnRsf5jE1mMgh38Ci1cLvz/RzGD9uKj4EVcFdij4i9YJcGmLitz4ujSw+
	 BZGaLUWWfqgaPhpd2J3MQndDQE3hTbwl80FEIrYrfSr5CpzenRYexPfY2hUhDF5hUC
	 sjvcd2KR6vgnSr6qEHHQsFPm04U/CWHPpLSL9UK8gsvHbrwS6pmoZhgzyxWj8oYKUj
	 GMLPOPTs04Kc5zo51h2UPTCgED/Soy/09O/sjL9irat+TWpVVbXGHLfMY32Ev/onC1
	 PnfLlSoBPgCgZM4nvTVJWvxC+IbmT2U/6omEoaxJMgfQLMQ00kVvPw7F+hzm1rjf0W
	 nZNF9hG7Cnq0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE365C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 01:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178347591368.18006.15642171017439923019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4464dca17d8f38a22ec53e8b12690b90f09eb1123518ecc99a9e1db939fb1e6
Date: Wed, 08 Jul 2026 01:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783475913

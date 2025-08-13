Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD9326C3AE
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755060594; cv=none; b=BOyfvbbguOJs1VZTtLCwAkjvwT8hqDNJRKCAtGNAX93R+CfxYthCwg4xLmk+bW5wY6kPSrLCQgUXkPmVxsb6qa/3wqoH7xH8PuCfK7SFR2ztfVA2qpjrY4h/UUh2RB3KPRVUjr1r28v0+6Zx9n43cIcbxzlFUDi9qdK43VdiNrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755060594; c=relaxed/simple;
	bh=5Gt1MoEQKXlydVbxrI9LAiUpDBuw2kJLYyBrjd1B3+k=;
	h=To:Subject:From:Message-Id:Date; b=Tj4Xm0Kb1BlMtRvZxkvNPBzRWitV+W3pBZVA6174bun10fMEdV8yVB2dBPcaUy0texzzNCOS5X+QFz246VHhPQBC2rbHm0ms9IQpRXEvUIgFA3+akghhCo7L9fhJfFNz11fIWyJtpT2HdfeJnmw72+w6yMNX3FBZoHJaOBU7yx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z4BS+po3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z4BS+po3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B66C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755060593;
	bh=5Gt1MoEQKXlydVbxrI9LAiUpDBuw2kJLYyBrjd1B3+k=;
	h=To:Subject:From:Date:From;
	b=Z4BS+po3O2yrdvRIuNRlKKVoSRqZbOxd3rxI5Gqe9JOooSly2w5ShPGNyRIK5sm48
	 e27mEGa+qHCax5VUZWeqR8aZLCKaZ0liNEuPIQhI8taQ24HQjYoLkNmHZ5NCtbVT7R
	 MC2Hc8K/wmRHhqW3xZCd/Sx/u9tQKsCK+cowzUOwo7LbmgxPuJ5uRyUxbhxlxZRyPe
	 L6S6Rj0uB8CwFYEMX1N4r3lqZSINJNDeU8w8mwXp5jygQEYGaJCVo8lo4cvM+e4KfW
	 sEVlHeI1RKLXAfyJvRJimWqhbS5hNVMpCIhxq2eug6CxN0dCCtyzb/TybROOhMjKx4
	 BD4RdyCmbjVCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2F7CA0EC4
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175506059357.15977.6133582857959773170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f76001b8c5d5b24cb9fba78bfa56d51fa7d3a3d655ba3a8284870a9d487cbfc
Date: Wed, 13 Aug 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755060593

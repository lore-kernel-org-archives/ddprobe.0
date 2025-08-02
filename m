Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3925D2222B4
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754150994; cv=none; b=i9yCSqQYXaHsetPW0/uZAjY4WZ+XT5c9Fd+3vReOtFGabeqdCRBEzoYJMuHmQqDCEb05GU7qd+kn7FsZ6A615chk0+8ZJm1gxyi2GgJso0oOWtuArf4lH1OvAQ4a+cAEtwh4Mfx2e4Hy4U1cz9L4dWkUR+TSaf29rZfQ9RGceTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754150994; c=relaxed/simple;
	bh=rHpbna4S2zuReHDnjnxQ8c/0vAgb48P9/qTtx6FIXGo=;
	h=To:Subject:From:Message-Id:Date; b=LfyrG61Byc+gHqZII2R6EZMvPtd+kjoRc6LPvbrjH7xX7vTXN2fRMhrAfRxAyHuQanPk629/uQk15asd3nhAD0Ks2hCNKolIDfTODRYG8Bx5GvLaA6PgBpmincbMwTINUzXnCvj7S3JR42ORNHxx29ZxLEfRdwDmUeAwMc5ikIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VIB6lXGT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VIB6lXGT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FA5C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754150993;
	bh=rHpbna4S2zuReHDnjnxQ8c/0vAgb48P9/qTtx6FIXGo=;
	h=To:Subject:From:Date:From;
	b=VIB6lXGTnm9m6k7WYaGFxdegi8CQv8IIp6pRKAEx+dgOSDaPF4ZemPTAE+9ARcXqb
	 wnZ4MXBpQzjblAjig5G0/pOiHQxwnYcqmly+6+77pTrOpHCN1EELQeZcIDQ59TgGKu
	 dbRXtiOZT3lAU2blahTPToWqpSTwPaWi8LWkCMzCL1ywxQnRC/uE0PlVm1IBCF59zk
	 in0HzcCkqffWtl9oAgbYfjW4BFP6qCS2QHCknT4RGSPNy7R1PelfAiKgmzTVJfBI5X
	 XR0Y6XC6HnEXFbMb2fNymAlgCgcjObLI89Qo8qS+x7viA9LmnG86YITIj+LcNpCkZF
	 M5/FOMW+xPWnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D3EC87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175415099357.22195.1050862367726966246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2098e3bf680535699c863154f3e5e5277bfa95bf4efaa277e0ee9274da88b944
Date: Sat, 02 Aug 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754150993

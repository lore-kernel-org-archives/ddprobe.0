Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30D302BB13
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 10:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775730934; cv=none; b=DpFqTcMoFpBEmYdJxQD/iv5gcmT/gmu4Z9mX/cwDRnLPoz4hTlv3l+C1jWkiq8hXMr0CjhHcarIR2nuUwO3hO5gMpf7RsowYs+N9ih95gfcA30ukNWkOwZiw2gRc/yjmMM3YOrDkuAFH8zYT8LAgutLYT+ghmU6DXc6fYn9593A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775730934; c=relaxed/simple;
	bh=5xZzdRzKS3x6hc2R+y65GQY7SoPvtVeUttOOgwrKFuk=;
	h=To:Subject:From:Message-Id:Date; b=XW9VkoKscvrT9p77J5gCorIOyE50uXwE2q8xVcSSSAhOLSDpQapX4F/rDwK7p6X+jrVWcLLkcWoLfJFViiop6/uTPLef7yV4LCab10CpyWskPfSWS62iBTBmuUZ5y4grdJ0vqXV9rfjhHneC/BcoLVzHIXJQfdGVmmmBpNDYNUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o/ZKG43N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o/ZKG43N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C42E8C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 10:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775730933;
	bh=5xZzdRzKS3x6hc2R+y65GQY7SoPvtVeUttOOgwrKFuk=;
	h=To:Subject:From:Date:From;
	b=o/ZKG43NMjku7zHpfvn459ZVCQw//ejN9Vhq+57Llo/hz5xdBWuikvEZaFpmq1Crb
	 VtFdbFYjefqkQhf2jhOC2WULLp1wAcaoQ3gHOjassLDKSOYN9Uk1K31q1BZV2Rz0Yv
	 sLts/J8L/gwF+RLJ1uEb6TmLVUddLPvtEMHPuaxE85Q65neDZEFkoj6dqyqAOcRG3B
	 VXRZFqvvTWsfzNAh1XZP1AmzZNkf6k6UQhBgFSCmo9oBw6WWChHs3DR6D64NvUYQXE
	 HiKyQWvJVi/aOC7ih2rPQnok+zv/7STqgDBln91dlb/a6HJJnDFUnyvn4etaagFtM3
	 krSqq8w20c+iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B469BEA3C4A
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 10:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177573093372.24142.14433023162871699796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4661e5beb6a185a576153f884ae744d53c11450e23e36a89897d6b03500dbf36
Date: Thu, 09 Apr 2026 10:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775730933

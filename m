Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26DB21E572F
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749458995; cv=none; b=Jvv9BKv0ADaru+PMfFGrMXCOji/Hqi1rEwWTBj0cDaKREL/RIA7a1jyT+L1ZmLef9R5EWD4mX5tcGUhW+2L4mbPFn9Z8HhO7+vnZuMmQ4CdKFmZ8k7PDJpd6QViInfwwugLhH27oWNicxFR9sjBiwmchn4XVZRrWp2fRGSSkHqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749458995; c=relaxed/simple;
	bh=ZFVdhFfLHwCrhDALv1p2SjbgkoZ2fVD7763X14z6TZE=;
	h=To:Subject:From:Message-Id:Date; b=ZrUHCIhvNdQa1IJq9MB3rtuLLPhUpAI1ls5PlCz1vsyffU3FyPkj2iYDJKoiowKDFyevnKwSyYCWPCSV66p5JyFFG/hVnkNsVcILHcsiH7Qh3EQODZdRARyM9o+WFJI3s0wjrYNqyHcgqWsGBIRUE91vPm9kGbxxand+YJS5ozQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ek1hi0wk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ek1hi0wk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DBBC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749458993;
	bh=ZFVdhFfLHwCrhDALv1p2SjbgkoZ2fVD7763X14z6TZE=;
	h=To:Subject:From:Date:From;
	b=Ek1hi0wkebl3DZG4py7f2OrtcZY9tyv7c5LqNeZuiUktDjPjKtvDc15gPALBEbjPd
	 Y4ATXuHe0n5qvoelSTjXm5WoYfhSUFF5Oucuxvvp9KQ4TFcZkeF0gotR2xC/BZUWgg
	 /KuLLeV3+5UU7259yAZVFiRXRmc/WzkE/JIdLu3ModZMW0bpNxOWm4uqC8OA7tZmDH
	 ZHY2T1DGsOaaXd1St8J/qhC1zE+ocuSMj3biSlF2d2SD91FzJK4PwMMLaH9MZfw5lX
	 qNQE4ZLSUu5pKDxGlR4bkfsF4tfN8VYLXHICLF6H13LHULqWjbua3ZLlpY2p+nS19U
	 haL3dzFjnxGjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F293C5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174945899357.4152.17309447425652120977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bac20d09be5ccdcdad5af96bf3a3c62f6dae140a669d4252a959a69a142d7e6d
Date: Mon, 09 Jun 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749458993

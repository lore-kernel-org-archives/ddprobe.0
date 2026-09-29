Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3444E3F4DD9
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790697634; cv=none; b=HWz/rJx8tLtCNxez1KkihFI8OddWV5S05vZ3kdvZTzJ4rRCG6bnJ2O4rM+kIjkYT0hEnEk8Bthb1sZqwWsaa2OEZkQv/EGM1GCehLeKLW6HP5A4U/CchvnhX2FJ59ZOnPnqrpsJKPfsH25j7M4bJLqIaZs8DMo5z7lGxNmbq2fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790697634; c=relaxed/simple;
	bh=QHfdNKiavEQIQmkSEsYsaQilKmJsT+RjvvS2L1oI2RI=;
	h=To:Subject:From:Message-Id:Date; b=f/+GzpGXopAy75rnB0cx+JKtQnMX0HRng34x1uUq7W0vWLyAYNAZxZqHJR2o3tcxDme6AQ0jZqud3Ob5Gy93VVkz2gmu3BQsswf2S00H9a08SNCetWjG9xBzpVIWdPHbtQy2hvY90Wetgr+DfAxaHGo5FONE9iQHLkl+9QWpMho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u+vgOHV2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u+vgOHV2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB90AC4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790697633;
	bh=QHfdNKiavEQIQmkSEsYsaQilKmJsT+RjvvS2L1oI2RI=;
	h=To:Subject:From:Date:From;
	b=u+vgOHV2kwJMs/8qd1hWaEb8SMpzYQKiC9C7h7ngT6jymkDZ3YKj68SpCeeLVdKZB
	 rWHDgi8ucW2H+6WIvLnv8SJsIaLnUNQKI92y1hdBmcBZIKZKzxk5WXO0en8Bs3Bzoe
	 rnObPH6kuDlF7lYWHPi3cC7T1Yr+lWW17UEHqi73Be03iL5RMnnk5rwbc0jcg+HUk1
	 4PHyiqgPv7EMQtOdkayFgKHodPHpGhNtsWRNBxNBs5209oB2jHkXPbtYu066Y5He4H
	 xFbd+yT3mllSoKGRfJCbgCeZ+SrmwwkrfIcm7thQ51iWqPf7sGC1WtnYMPXEa0chrx
	 V47otMtfIlk3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9723C9832A
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179069763368.27412.9220503223923778769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19fa98bbda1714304a4c12bc97bea3fe19402efed8d1eba752ee2a9b5516d381
Date: Tue, 29 Sep 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790697633

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1295E30BB85
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 11:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769514234; cv=none; b=gQM0jF6CmLAxadJjvseqx7i/PH8Bdfub6EGkWW2lb6nSN+BL1bTQT7cWhILG+TmBCMXwMbnd5K8FZpWe7amH9r3Zk5tnMSTnPojSbNR7IjSb/eR9BIfb/P7Q2IMDGVRruWdJN8vg52lhFTiY+iOXr9HUTTAutpyu8jAWw2y5Ndc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769514234; c=relaxed/simple;
	bh=q0UZWbCh083eTdZv0Bjbw0rsSNoP7PHi1+klraGqscU=;
	h=To:Subject:From:Message-Id:Date; b=eb4YyJ4r7B+kT9rUOtSbsbs4yu2Z4Zzat3UnZ5Dju5syB2NINwQji+k87yK18Jrkr94pEn6iknTem/UDPbttbd5HDrL/wA6M2gQ0B732paFHRxuNmLRv0EjS2Np2W+QePLqt2wm3gNKutyEOM+YPZdlpFRgQzoMhhcDLArqRAYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K/+NN36W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K/+NN36W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F094C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 11:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769514233;
	bh=q0UZWbCh083eTdZv0Bjbw0rsSNoP7PHi1+klraGqscU=;
	h=To:Subject:From:Date:From;
	b=K/+NN36WecShIqhaXRKHje50GhFKMee6DKuNgeEfYA0XermiZJ+2esYAhGiFBipsl
	 WPY9QVWeGDStMikSMoxKJU5yujsNYJdYB0Z/JjNyG/hj6Hacb+XZRevAGd0GLKiOzA
	 /u/5QcQyQmIzwrvPjx3Bcntnzsu9KHmbBKXjfZrscxoVeHY4K05SzfoWQeUQnNfk2t
	 3TfiTYgaQoX2qPPMVN8ukIxWOQqGiPm/v6f8tKvf82OwnlVjQk9mSkn3DOZwMvBir6
	 sc6WEHlT9vgk0CgiRE4J+B1HT80/k+GDnaRE3Vbyo4yg//1ZpjKfOjBAwcfXubva8r
	 YxgH133D1raxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91697D2F003
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 11:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176951423358.6929.10278959445936922812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbd56b569e5d476eb6b80e7c623e90f3df5f031983cbdeaba6b62b67808b4924
Date: Tue, 27 Jan 2026 11:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769514233

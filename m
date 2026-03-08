Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 093C514A4CC
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 01:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772933094; cv=none; b=neKuHYcWpyrnxzHabt/ez51aMyw9BmHX5qGNZ2T0EBQQKLFR6LypXQ8LzHfRYby/NL0Tkq2hDl1rdMY6HQ3GwbUn9to76I6ae7UpLD1z4KmKA6aI5BEwK5MbduKncTgzp3mUXGBCkBJ/xp46Q6O4lo1bgEqjBerAi9/+F6YP12w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772933094; c=relaxed/simple;
	bh=+0hoaPMYNoISUE4HqyMF7Yts9boNsyAV7kvJytn3wz4=;
	h=To:Subject:From:Message-Id:Date; b=GaHkKzl3Tx6JecRnY9yRCDUaf1juzCuY9EhtvIt0uXMwM9ebo/+mLtvOg+2q/EzyvmVoHI7i9JYDJIWbW4wMTqH+6kbelHHE4LcwTM5Auku2L8L3c0XxnU0rsh3mlcSVRoVXDKKyror2S1Y+DfsG0GXQ/fllYqWgInHOEP351hM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uOLCC3j7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uOLCC3j7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2013C19422
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 01:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772933093;
	bh=+0hoaPMYNoISUE4HqyMF7Yts9boNsyAV7kvJytn3wz4=;
	h=To:Subject:From:Date:From;
	b=uOLCC3j7f11TtnqRNpo0Pn9ee8GDKrxAo7b6MOF0RDrrFj9vZsllPqp+thEHdwm/6
	 ws0EhN20ZUk7IUSltJAR//46ZhTAkPQMvZCbRKigxn6teP/qB8Uf5vlZGqlhgc9tTM
	 VQsTYrNfy1Cp4sKEtLIZbQQ4DO+nhAoYFCidoxVTCz5uVvCQuMf26hbNkNrwEyynY2
	 K0J1wlODrZ7RtmRR+SUYtzDI1N0mhAST8AgSkfdnSsKOuxMbEPttbYtmfirlVBreBs
	 wLRiqLBh3pYz4u/oUNUXr4YedpJHBI/6FG8UXyQ0IKRWh05t2DmPdmReRJb7KcsVSe
	 THPl0ArLM7Lhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92385F55106
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 01:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177293309357.17012.15025423923539465426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fcfcf1c85ba053d870571dfe0d3823638edb3b826548bbc542886570da54f9e
Date: Sun, 08 Mar 2026 01:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772933093

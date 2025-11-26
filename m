Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D094299ABF
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 13:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764163974; cv=none; b=dAuVM2pWmqE3gbWLpMTZiPqha3Zh7yzFi3TO1AjIOOeu6byj5xll2VxG8fRjkei+BU/qIFAgn8voSUgoPSRRi2GqnRX6EJbDe+krcQ2+awTxsGb9UzA5JsjudCGkXVphKsdDSOHmOkDhj+3HM0iAmbJRLNgyJAEq3Rqk2I4HPZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764163974; c=relaxed/simple;
	bh=FvjXLvTmuW6PORjs3ygRWHokYS/13hBdewpGDFjo13s=;
	h=To:Subject:From:Message-Id:Date; b=VUfAvA5P3+9fSdPNGMH1jLrLXcBZabmK/RIKqzKe6UEsNTeZGx5HBfJhuFDyT3sXtCnLKP8ZZhkMIDR0XRmv7EzS/uB1uRhNoCIxb/gqjpKRAQADzw424NtOOlMSExS9VwLTVfLZiiktXzlhkCEwrfntTrVOEwp96gLh3sMVTcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ALK59rPB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ALK59rPB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22CEC113D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 13:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764163973;
	bh=FvjXLvTmuW6PORjs3ygRWHokYS/13hBdewpGDFjo13s=;
	h=To:Subject:From:Date:From;
	b=ALK59rPBNkYgTUwm+kJ3ovKF1A7CiR8k8mhlO+MJYMJYrun0Uo7mWfCneMr7QpbRp
	 L80JSHL4LLIMTrf/OR2AbkdShMDWoXJqbATX+X40KXH5FnACi3Cgh4FdfgIt1s3rrN
	 8mmbNg1Xl1oVRWkizwW1xE6HNgavEBHVuiv/Hl+8SJHhDtPTgB/iRc8OWuua3yEqc4
	 qUlnWIvcOtd9pqEAufsNDzfesTJtW/QVlb0nQJ2/ZlYP1I78VHSAq4FDxG7YRBQwtY
	 j7l42Jf8pzKfxmaASopbkuGhom6joT94C6qsWcIM3G87Vtg8TmeNVJayWayMMJwrzS
	 fnDiEiV3M4Nkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9213CD10F45
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 13:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176416397358.21064.10695599168981423694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c3bcf7857348cda6b594634bbb2ae911855bd3b44d52cd8a0b8e6fb46881498
Date: Wed, 26 Nov 2025 13:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764163973

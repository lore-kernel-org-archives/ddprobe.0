Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208F028EC
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732844754; cv=none; b=gaEC97HBow3L7bsTuprWk+3m/cZTOsDtFYzJgGKWQQYPaSQtCmjrpcFcJSUqQemq7J8HF8kPw5d1gG4bPxiCsquMbZDnRdvkw7IToskNEedQYtZgedyDKNtFbhFqt2b4YeP8aALyRQBlVHu/lxzIRAT0vDqZL5r0lAJQfV7sgT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732844754; c=relaxed/simple;
	bh=ZE805XWbpAxiqv8KdaXauSMTdD0lLu/delxjBSQaJI0=;
	h=To:Subject:From:Message-Id:Date; b=n4HqPeaqXKtlhJDm4v25JozSXSlXJwsoSGsLwHRd2OuA34JUSrLWVins6tFWptw/0YTmLb8RC1cmHThaaYLVFdYwP0hueXkZ2E7nck/KF+L24M9OkEPmRWliyOpL8/PspK7ZdyUes9dz28b01/3Nl7ThQ2JqbdF0eNRnswfHwC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oP54vwwX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oP54vwwX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72DCC4CECE
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732844753;
	bh=ZE805XWbpAxiqv8KdaXauSMTdD0lLu/delxjBSQaJI0=;
	h=To:Subject:From:Date:From;
	b=oP54vwwXSG29Ic7YogQj9WZSPleBq6B7vuRxrFFSAof70H2hBWhZuPxo0KMuB6zAW
	 9i6vUGRuttwHqIWlDOGAa/7Fd/2vvC8dELCpngGg2uAydOj1z8tt7gq2jLMAKtktah
	 IceotXQY/iFBsiTslSdDgoqYA4An6xXdqhF7vAs3Vrymm9drEZYwDRiay4AS3MVffV
	 JXdVJcgGcixVoeQApLcmXNflHdTaBEl/WE7NbdEFMisL0+8oAXTVvVAm2mMzSY8Rog
	 9homHXN1uXb9RcRvbdwacqgRJGp7JZtD6SdXpCdc4Xsl7lqN/a6olQH8JsGul3C36B
	 w63dZsZD0IVpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BA9D70E02
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173284475359.21998.10358588114284705219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3679453f09af62fc5271be82eb1dd2a2f0b114f9d825a3294cc63acfbcb85a22
Date: Fri, 29 Nov 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732844753

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC6B1991CB
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746356995; cv=none; b=YDH4h1yBz6woPcrawpZ18QfX7GdauJuXwiMwdjH8lxWsxVQZMndpwDmYodg1KgxcV5TVJScjyZs/9tnIH4euzIeLdDfonfx8Nu975xijizINj2HthFYNLDzCWiH/n5+CIV16o5wgzQW7548r5VfhBNSFGecqMO9ferPfovc9kE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746356995; c=relaxed/simple;
	bh=qV0pvFZJkAwA+lWcotOdzW5nPqi4aCam5tXjjQvnPL4=;
	h=To:Subject:From:Message-Id:Date; b=pgAiSwvK0NUgUIg7EYwS+oWTmMvOCFxAPeexVOW9GfnNQ5/lbjiLspgYbTDhsAKmHRINW2blIYJyCsEY8AbuaPY1K9AuSN6/anE2n2Cf4yeQrZVmYRbZH7veKpAkh9tVI35lrueFKuLqsfod2MJw/VNH3q9fD9CNsgtfHZeX5HI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gkPG2WMD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gkPG2WMD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A54EC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746356993;
	bh=qV0pvFZJkAwA+lWcotOdzW5nPqi4aCam5tXjjQvnPL4=;
	h=To:Subject:From:Date:From;
	b=gkPG2WMDYi9rq0QgY4Ll4BR2/jFtVEeI8v9knrHxvH2GaESfua1UfPwrkA2Rmbagg
	 zJ2w1td7WDQxEpjmZt2ktqoClw7XMEpI6ObfSFHqUZiOzmSuun0XpCbckWEYPKvK2e
	 Pa1nX8tEOErXO/4xO+Hp7YDDmehWF56wy3Bp+mcenIbdi0Cn67JIskRO+BSwpZ6OTY
	 vmk4SdI39Ga0biZmEdYhKGDxI5DvOic7vP4W5u1MG2tTzviM+Pw9hSQhRxdlXGOsvc
	 IWTurdLOKxp5lO9urYI5k0rm4De7qoTfz6MO7dSJyUwQGJDq9YFeDuw2PTrV63bEop
	 AUcG1KbZiFG6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5E8C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174635699357.26668.2078437376214817271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cf12faaef640d6035ed9ca244e3a89c70cffce5f7f67cbbb8e889c397eb2a4d
Date: Sun, 04 May 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746356993

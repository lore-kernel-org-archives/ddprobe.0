Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F08D226CEB
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 08:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769328834; cv=none; b=kXDkjR8O20YTIDP7Kxzeg57A1VT11O/yzzKa/JiGNfirRnGrBoB7znnK6RGM5tPHX/3p3wW+NICzpiIr2noBFg7jPHemsu4s+U/9gLqV898EqMb64HMcIb89LO6FXA1Ou+00qk0BhVnzywTJKntvNkYeO4SfcJaOs1TKNquUIJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769328834; c=relaxed/simple;
	bh=0ZtyNCJMJYA1hupOoGrM5TA2x1/m6NDJk0AR2C3aFQ0=;
	h=To:Subject:From:Message-Id:Date; b=OHU1jfQ6PR2kAfy5i3mxXqjQsPwG2xxzaVhRe+tHnkM0dQkX6qonKOqspCr2Hy55BQWg+Uep/rYSSprIn6m5rkFddLRdJLwl2iMt4HdUfjRyckqjXNba7lYdrgOCRhss/sDvMCgo9ZI7PB8Y7lwHBJuYqE7VmMAxwK3uPLw0478=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kUPlvHuW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kUPlvHuW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19D2C116C6
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769328833;
	bh=0ZtyNCJMJYA1hupOoGrM5TA2x1/m6NDJk0AR2C3aFQ0=;
	h=To:Subject:From:Date:From;
	b=kUPlvHuWuw6/Zi+bwW/fueJuS6UatYxYg3WpKgbvCFFxjFe8vUSPahS4jl68anU9C
	 qB49gxhnVfvKuuF+YDAYxFvwk/qI3WEdin9MxXLLiBcustRvg2XtrDaoiYvFtyJGNC
	 6nnGGDRbhquTMN//2aIX7numZ8uHcOl2Wh0DctxRHs3t1qo4G22LsVBWQH51PzQ5+g
	 YsR2OXezMsi0b0mDsx6LHnCxLigQiqTsZMkh3eOCHfH6B/fmZ7nwvBUc924SSKVXKx
	 qe5exstqnnQD0qzvYr8chJvrpc8KN7lnXH87QfYAHtyLErLGDOGooo/GMSrK6yPrjj
	 ghU+GcDPfypRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC99E63C95
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 08:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176932883357.25747.3802211230149399745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 842629307caf3101c631a9552cbc34ee1dadc7a5eeca70fe6f2c0d6ea91e9b88
Date: Sun, 25 Jan 2026 08:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769328833

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FFF231AAAF
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 12:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771589694; cv=none; b=N1LegUWFp1VpYxzf+RYrXViNx4jRGxlWYTcAzTLigLE7CciWyCoRR1qE8n1O6ZoizR3CkBCnRcoNcliREfWUGB53if2cdbrVFzFVpNUITFdEJ5M729GIDUYgTHU36mnE58wziAXOXNY2jzdyvI9Po8mcoMWvL7UGUWFa/bksdM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771589694; c=relaxed/simple;
	bh=xXrUV51C4LbI37BY5aAMaiw9j9/H1mjIaFIewXFSGh0=;
	h=To:Subject:From:Message-Id:Date; b=Z6K7TIoygyD80XcMutVAwxlqwjU/iLv8fiN8SIrnTb4rNN7jFeOVjDq+V4KqzORPeX9NagYHoNzmJ4cckywOazN+UX6Zv2rmXqEiE2P4lQF1fhYM0Bw4moT5h9zoywbSla+fHcNndshyB8cgeSzTEC0a8146L+YfWBZIGkAKooE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RJWwuW8w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RJWwuW8w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BF6C116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 12:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771589693;
	bh=xXrUV51C4LbI37BY5aAMaiw9j9/H1mjIaFIewXFSGh0=;
	h=To:Subject:From:Date:From;
	b=RJWwuW8wBaj1Vfdj9tvOPh4JGK1qHHHjzqb5oK1BE47vZ0w7W8oHi984x1ioiTceV
	 FdZNUe9z539bENEAlKGuYEtVSkcfUcKydAaGs+Q0e3idokoHlZdrsmLtPuotGFgSfU
	 ZX8clyQjKlRXT3Mq1Q48SifNnHqQbYLXNG2gmwG/fBINXR0H3SQKaKHc/1Ap0H3psl
	 4RNuXQOHjB2yVNJSU42u4LaKOqzmNHyGijkQxAWiHra4+NbCME5QeTgpw9bjETA6Me
	 wgDq8V1sbEnUgeLqALaif9u5h81k2dP8LaElCAAcRZZrcdbpHqqTRmbBHRcm0uaPFx
	 PODl7oh6caMnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BDFC55ABC
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 12:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177158969359.9349.2210069916198883242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d9ad0865f843d82745d51311f556ff919c5b2856187bdcab731a2f1778da4b0
Date: Fri, 20 Feb 2026 12:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771589693

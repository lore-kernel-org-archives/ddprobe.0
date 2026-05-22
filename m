Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2978636AB5A
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 19:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779477754; cv=none; b=rDn49TP7sSisz/c5zx518LxDTt6NgYQd/tPiRVL8I4yqpOVd4eKIgRf0rcGsmjDWmoq2cux4pK8Y12JI6C1oT0A4rzIZRHerCpg6pApEEio9RrmOhcPRezgD+B8V4/wMQShg+u+dXkcq2cSbgWvbrT28Zwjf8AVJnrPEZoCpYoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779477754; c=relaxed/simple;
	bh=KOhqRIVIKbyqWwnz+9ACxT1cb2QS4IqUX9REqOE6NcU=;
	h=To:Subject:From:Message-Id:Date; b=DMrOqB9GYu8Du4/1MHkSzQ71jaTgi2tzrpMoZ+EWDWWnr3rLzz+H+aX513zc94+5dyrCjWhEKc/d3+e2uiEjgK9rWmQTMQW4TSoBna2kgvo3nWXz21BHQCKAumzbHpwlJqgtD3gyeXXzNiDgib12SSUWa3f2ixKagkmHOQ1S+gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rY5YXVJ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rY5YXVJ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1868C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 19:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779477753;
	bh=KOhqRIVIKbyqWwnz+9ACxT1cb2QS4IqUX9REqOE6NcU=;
	h=To:Subject:From:Date:From;
	b=rY5YXVJ2ANxl9FliEWXY9eqcQT2j15N0unomORTZ7VD6hR+Ro76IGswY8D0iEqp+G
	 ElRavQ0Tb3uGkr8h363A3ZMnsUrZ3KG13UyG7WYr5GRpUT8jDJN9RLOg5XswY7buQl
	 Te9kqvS7ijz94NOQeDeZ3RG6MkjTGCv+eF6hXLh6jiqGGnNNc9JL4XMCt+aYzxVpMi
	 SaM6sASKv+mqWPUyK18Hud6uHzR775rMnYg4T3zNUJhIdddp/6IVS44ESfmuHLfoeD
	 QDwhh/nSS9T2aH4E2MuUmBjQlWJB2Pa0h2rf33KHXbLHTkNWPNKytL/ORSpPaaakFp
	 IqmJDYAarv8iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9301CD5BAC
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 19:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177947775368.10795.4901893015539872242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 575ea295b312307302a63a98801b27457f77bf7db410c08311ef39c665146a8b
Date: Fri, 22 May 2026 19:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779477753

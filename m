Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA65226CF1
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760188194; cv=none; b=r4mz8un3nW+5NWTqERx5Jo1yiOOdDMj+gO4o3lfqY4WRzWv7NZzuFuSyGQvPKGgRjyCpObw2xjy5NJcK3aIKDkHig9H4czKaMth6ADXRfdKgvc1O1/WiLnLWZifoEi/fGE8kI7cYU7VILP21ee/f3rga0QN6CCwfhPHPOOtwLyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760188194; c=relaxed/simple;
	bh=Ttd5dvrYGq7SiumDZgii8mvMnU4a0Ba0akdQl4n0+9A=;
	h=To:Subject:From:Message-Id:Date; b=bYWGzQm5zxOFElH3aqPgA9yW/ca3+O53w7wJK5DNryh1oAl/2jzSSazans0oHG5/LQUk5zTUn6qJvJUm1LUEgagXweq5k63+cg7Y8zAHGN5JmS6/5Tp23ceHyTsC98KrVCRoU6u6lxjKgNiLw9bp6x9v6zSvBTensHoZgzNT5r4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iWf/yOSF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iWf/yOSF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2132C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760188193;
	bh=Ttd5dvrYGq7SiumDZgii8mvMnU4a0Ba0akdQl4n0+9A=;
	h=To:Subject:From:Date:From;
	b=iWf/yOSF1mZQaEhnoRrJk0kBlnSy4SgTTH3hJTFcmsOischkJHvEXM27lULRpOE+y
	 TqIU7effn1JbyXZaRG2/O15H1j8Wj5u6QgQ6Lf2H9JudicFnmp07tc66rbCkR6U1ze
	 teIzsFysHsH1ARpeuQU6qCEmS4NbBXcnvENXOAaklPCrzuiesgRE6jNbcyo825gNX3
	 fUQ3FdH+nQLPzuk9b0P3y1U5xYCO6VjuJwR1PCgPc4e6kcUrvz87T+G1YFTBFPrWoz
	 Qs1Clr0AJjhEjYX0GOB9BpfVHga6vgiIXvepvxgjqImoz5yuctCmP+zQ1LgP1txeev
	 e/qRI2wcVqpNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB67CCA476
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176018819358.18174.5388567794097896019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b64319f153046697b644d83c7d6fc71b3b73f71a6862762a992dfd44bbdc89d4
Date: Sat, 11 Oct 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760188193

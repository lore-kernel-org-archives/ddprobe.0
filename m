Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A6B1282F31
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 21:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780002754; cv=none; b=pg7rHjV5eoHkovUdIBGdIovYxejKe8zVcI0yu2jeO18ukmALrKQnw/5fLbsix8nkkGBTri79OQhZ9NU7O2a0AdjO9rQsmMtzQtiK69/0hNqhWuug1I/6N27AbSHSHdaZpYhzFAT2jSUHXMyLO0DZ9q/Hu02umvZPCWDC1iRm29M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780002754; c=relaxed/simple;
	bh=ywtwuUi+Pn/z8OwojRx99u/nQM7aS0f6cwXVStZML2c=;
	h=To:Subject:From:Message-Id:Date; b=njH9D2y7pFQZEQtsX2J0lWtipp3QumCKw9Yur8yILIexB1DpZ/EPtujjIiR812P4bze97qNJ+q+HgaE4y/BreNuXim6auQd5YeXmDpSY1uTk1qOoNnH6TAGzyxCNVRf+hk8H0gu1HACXhb5ON8GBBVTjjsVpDiaMbUv261GwIhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AfpIWpwr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AfpIWpwr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6B3AC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 21:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780002753;
	bh=ywtwuUi+Pn/z8OwojRx99u/nQM7aS0f6cwXVStZML2c=;
	h=To:Subject:From:Date:From;
	b=AfpIWpwrGMXVfFhKmEytjLfuMLUflu9S5a35spQ+3mHjH7TUX0zZZlGJcbNA+W/vQ
	 YAq+R0l/lpragm91ROcYBxhKsC35I9bg/TtzudpFObuOjfCvc//cY/nKeFnAihTUdx
	 YdoA+8nVcH97BvJJfYSX4I41zp/B+K+VSglM/PEh/gR5FNtVjeF+1tksNHuDy5f7Ui
	 6pPG68aMMXpljiob0OdhiKaubrHo3Otx1ZLW7kI7QsbHYHdqeRuFu8zFDm4qblBxl2
	 Oa1Cqe2BG8aDX+9GEu0OUYaOQKcdPA2dxHGhI+z5DGee0LnCnIa0p06/R5LbK1tFDO
	 cpd38v/OjFzUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE2BCD5BD5
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 21:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178000275370.20181.474729863432477177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9543229749b062f8e445be9f14da0245befe9478fa0d8d9cbd9135f065a815d
Date: Thu, 28 May 2026 21:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780002753

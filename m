Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49AD323394A
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788834634; cv=none; b=iO1XWioAWt8KfV4apAc87AL6pFILKUllsS9be1oAzYW4vUw9j37XI6AnvsoquoBZHmxzldMAaxCZh4c1rDLrd3GO3dIi8E7ynmduhwyR4D1Xp0MU1sIqrHz2yVxlWRBOKpbynzpbdFqkyJbYIRRSltuL7WA5hqMDHd7MAK4/CKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788834634; c=relaxed/simple;
	bh=4KfgVrmWvk85kS1wc42lfkei93FsHTyJzwBImGof/ds=;
	h=To:Subject:From:Message-Id:Date; b=T6nKUNTLE5A9cXG7Bs2wRODAd4AE5u84qWP57GeO/7AHIAxzemNnad5JcXzxVgRHvrq6Nyv/x5zsbotUR0zPQg6DFmjsoa5giAD6cQI13QI1RJ0NRoJ4bIyK10PbNYF1VGtSNPmlWKKcPHyqNW2cclsfnVapNaNCehB9K+hgyJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nqjTUltL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nqjTUltL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6BB7C2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788834633;
	bh=4KfgVrmWvk85kS1wc42lfkei93FsHTyJzwBImGof/ds=;
	h=To:Subject:From:Date:From;
	b=nqjTUltLouo4JtIO0ni1fE5d5ZoqfmTwVQ6qySVqtzQbY/Rj0JfWolQNyRAGO902W
	 zQd7g2OsNZlu4tM5cR4G3VZHb8Jclx3mJ+qypmtVb3BZkV6AIt0vT9dDJqCvcPvGrQ
	 vJ2oOlk0nY7Xu1Btf0EKedc8Jiw4+bkhDz14pnjHRpZPC4P6Dv4TrAg24nPFJ6NAPL
	 PgbhgEX4Ly3soGR5nJ0+bmULvPvMmIx+jCa1JaixgebDLBXYDesmhKnm7XJ5RA5upA
	 eqGU1u2nD5Rc8suQye94GcMVN8XjceiCPPnyOvpY1okk6fj7PaW5l9YXl1vsLJK90G
	 N/N8EQOs/GTqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA864C79F99
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178883463373.2166.17041676277411612805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db9dab28b4aaabf889b3db2c3b33d69b3a2f3a45ea6f629a63c2d4c9679607db
Date: Tue, 08 Sep 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788834633

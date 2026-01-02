Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D6F2E62C3
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767352434; cv=none; b=aglLKQEzMR1lWYbMQDvDhsmQG2an/zM/SxH3PEreQG2j8fnikZxu5j+byEKC2hSNkQCryfoJQ2e3Z8roKCX2bcdYzBm5q+h4Wr173bsBE98azlomNgnsD/vKywdJde/LmSC/GLYW5UM1Vh1LsByIntD5A5nnXtAo9JYgBS0YB1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767352434; c=relaxed/simple;
	bh=7RbX/XiVAtOqN6RgXzOaZA0+2DdlNQ7Oq1uaF7YjoyQ=;
	h=To:Subject:From:Message-Id:Date; b=qoqoCoZnLnHGqMtaSlDhansHAbVSg+u9iHFSx7OeoPRGpeIOw819ZfSHxaEa+/TQ4ajrySJYefv9N11U+xI3/MGXH42o2fLrQ2CLPZ0uTg3McuNy+m8iIKDs9gOrN9jeJIV635G4oIyMTIFyJFluHAcVFebimmuW+IX4BAB0yx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ElCYh5uk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ElCYh5uk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CDBC116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767352433;
	bh=7RbX/XiVAtOqN6RgXzOaZA0+2DdlNQ7Oq1uaF7YjoyQ=;
	h=To:Subject:From:Date:From;
	b=ElCYh5ukqfq34kpdL9BFINcsoXg1rEA7a+D6TA6K4wGV50GtSrzU0fak0R6IoIjst
	 5kmqOUbFQ3yCRnWHnSydQGeIVcn9g5A9S757RztqLabell/QCiS/kCkmGe9dD6ignr
	 +oDJsBS3XKyGi7aKHjmzXpBQRpZinl1OrFLSfm8k75LQl4BHUUgw9/sDFUoBk/vmL4
	 nU1nf3dIbgmqJqg17IAFBtZgSCcNKFDosVD0Z4FuBGFVuEJLETIY3tdthEfJS3YJtb
	 x6rV4QkEtldFEI6R5Fh6hnCJCWFHw2eOws6gWjFG0/jGFYyxXuls7VnEX1dXpr2p4r
	 yYF6WpgynxzHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA0EEEE25C
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 11:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176735243358.24541.15214193092539308050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ed9c0eb3b4a277dc8f61b557a04a5598ad54824a189a33373b12c6c5711e054
Date: Fri, 02 Jan 2026 11:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767352433

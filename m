Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2837E148850
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 21:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776547054; cv=none; b=HOa7J7p90XSfQPmSqZUxX2/TLzruSyN3nPMO1LD5wy/e5zZqZlpTfmJV8tBJw3oInqI3jW7Z+z6lDEfmrqfExY10FOgZdPsArEEXIEjcZ/fThIfWjvv0z0imkpxe3oP3/gLW3W8jgS/AJKCf2Fg941ozqEqwZgydS4wyy5m84lM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776547054; c=relaxed/simple;
	bh=pHmoiEhp+lFhoSoyLTbJymuwO9pk1OlZs1WcNktUfPA=;
	h=To:Subject:From:Message-Id:Date; b=I3x3G0ZitoxdmecwURKykvbyi3auAU5LE4Xs+VjV5+I8F0hq72woucLUV0fGgdwwhe471+595qNMBAi2hBaSP9WQArQoaOCBzsUcQWBIXardFLpz87h8HDXrxBOxebcwZE3kS7QG+ALYTWkpgIcWPCqWxhiFdhKH/53ObTG4+wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ocKS1IlW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ocKS1IlW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C10FCC19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 21:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776547053;
	bh=pHmoiEhp+lFhoSoyLTbJymuwO9pk1OlZs1WcNktUfPA=;
	h=To:Subject:From:Date:From;
	b=ocKS1IlW5brNXSVfEbPnn71ULRVeyzIGcCP9S1DZR86jIm1nzWD601H8EaG//I5Vu
	 zdElykO9JBzvNFuQVbBvBhpRtl2fBsbN/dcWOrqvhKxCxcvnAwbtrdfih4yzNUBXqy
	 5zhtK0tYdcEwW8rg6iMcjMPiCfEVq4a1jIWlKL/f4CCO2XDRzADPlY1foS357A1EzM
	 QEAmgryPEvyw+qv2r2YFcuFYm5BrqH4lHqKZIQaImwPlKSRM3/zYsir18e8Z2Hg4DF
	 XzqprCj9plpVkS9asMDe3oONrxfDXp+zvvuLI+AOOAtrNOuyF0iuz4CpBpisEnU4ra
	 Ekwr7dkOWon1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC97F99C96
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 21:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177654705368.28525.18330036569385152137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 405fe0abbc4a0af643f25e521c98619894aac0623efd24a95f40305c2929bbeb
Date: Sat, 18 Apr 2026 21:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776547053

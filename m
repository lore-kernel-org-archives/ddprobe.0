Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0E48363C54
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 16:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763571113; cv=none; b=WlbzxYDowxbn8RIw2e7qpNJWBh6ZSO/RvLHYVzJz2VNAE/aekyUeVL8IEEE06RsOHmsYaiOhOPJX2cbHwBYKXo0NeiwHzxLqtuPss18Rc/vakLNtYCPfJGCKs8gg8TLUHRABIy3hEkYpm5h4zIJX8LdzxZrYZDHVpXr1++l5unI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763571113; c=relaxed/simple;
	bh=Oh4Rvnk1suJffDgZ0nIm4AACNFNdVu71T/aSPTtSUoQ=;
	h=To:Subject:From:Message-Id:Date; b=XWRg3sBjIogDSBiOx1Y7gvR3tb9NFzSs43NNDTNchaxzXAA6Hfh4WZrNM9401Z0pDIUB6ofK7dGJuCL8DVOQuK/aFvxhod12mpipFvCN2RkueSuGYGmad/J4WReV61coUWQLg6+5FLFvfV1oqGLBMA107FFbZsokXk2YwWemCCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ej8quQdh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ej8quQdh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14B6C116B1
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 16:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763571113;
	bh=Oh4Rvnk1suJffDgZ0nIm4AACNFNdVu71T/aSPTtSUoQ=;
	h=To:Subject:From:Date:From;
	b=Ej8quQdha0n0g4xssaz2QqACY0zcKrDl6OIHTHw4ksitcavwYB5YyiQKankCya3aQ
	 nV2urDcRh+VUJHoqmurbciGy4a7sCiobSpKmmdjnU3qgkzCi6VWQgcyhrmKX+u87H4
	 5nVGG9NSrOQA4csMxBN9flxeAJKa93kar04rrkj0uEKGpRhDAmNUtPiDkTnItEYVxU
	 JXYPDxUZxiGpuh2fQ9Wnx/L3RTb2fqyiZgjHL23zmqTN+iZlQfkJQ00LkN3rDueCoc
	 jFYG6Wlf/8Z44KwtUfulKiPdZsbwHL4pxOrM7Ay2uFax/uFk9U0ZuNjWuR11dLbRUx
	 fMVjN83ra2znw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9032BCF3961
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 16:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176357111358.32552.7633777670218849899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb65a198a477395641c2bbb23319a826194c428117a060be68b57d74f9b8ff17
Date: Wed, 19 Nov 2025 16:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763571113

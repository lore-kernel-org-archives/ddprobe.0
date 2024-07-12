Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C00F16F8F5
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 16:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720801163; cv=none; b=kiBQIhERJCP/c5L+Ji4TNWjqwYFAoZKHeZtwqgkUmW063ICGnFtdwe5/LSCNbFJIYZ+2f/1ufcGMG8M1tRG41NrJkgiEQNbGjm5Bcps+HIXmCw4IZq9RDuZ9bg2Cyw7zMdW/LnlDL/Sk4IwrrkaNvu6zb6nHGRgrs8YP7NSLty8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720801163; c=relaxed/simple;
	bh=R9Ywm8uDOV/wT+SY7gLSmfPBZy9S3DU3u+INQSWSbNY=;
	h=To:Subject:From:Message-Id:Date; b=RO0RSTrqbt96heLA4S7jvFhKd8U/3YUTmtN8jT9vOZMYK8qNEQbd1KNLWDfnTd0aovFpM8JLJYoaTtFvAFRJj0SqpQ5EFuX92j0muItNnvnNy8wgk78VPoUu8q5Q4bS7NoGt57/OHcRLB1SWqyFTXhLqWVn2/0yok0OBmeVn+R4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KR2pumMG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KR2pumMG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAF01C32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 16:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720801162;
	bh=R9Ywm8uDOV/wT+SY7gLSmfPBZy9S3DU3u+INQSWSbNY=;
	h=To:Subject:From:Date:From;
	b=KR2pumMGSbNq+i0PLE0weUNAjYAPgWoAamnbOXWkwqxD+9vxU2Lig1RkRmvk8991y
	 B3zsccXKQgygsJVPqQuglqmFQtN7UxfQLbUCN+7gyS5DGsbL5mLnillPYMn0MGVZbi
	 2cTsRg9lBJqLbMjiDCxnxfxU/XBjjgJPXE2D08ZUyVG120z6OYoueguaLO7iT6Rvic
	 gB9Vw3cI1VPCTk6EKDU2yaF8UfecXhoLcu5yw0NI/3r9KS7XO6uIDGuE7lTj9iTuyz
	 uyhw98OQJxnKIMsKU7PcuCuEfnSRCDf0/scsmPB12QrZPWs9Fc8Rr/uLKya2F16a7Q
	 xEZvQhPwrSz6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA805C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 16:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172080116281.26963.5009879918295699251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 881965e7d0b1c16aba40992bc7416cc3e179a8775e398282b42faa8543849e35
Date: Fri, 12 Jul 2024 16:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720801162

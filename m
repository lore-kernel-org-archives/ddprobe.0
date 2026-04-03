Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4526B282F3C
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 20:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775247334; cv=none; b=uB44e9AtTR+7afthIjTl8q9kmVjFz9+ZKtwo3Mz8Yq8FeXOlLq3Y0OmT6yeFMYSYq1HToly48kGVrKRkTWjslzIf2SYOviMCKjwd0n/GwK7BE5gWT4q1pidKU/SxsCRCdHHaZDGPTNSUcVSOTwANir1ISLsf5hk9dC1UKEEi5xM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775247334; c=relaxed/simple;
	bh=JpuCKEv5fLJ9wbYOeCoZiu6V91IpsOzoLkkhWutVUA0=;
	h=To:Subject:From:Message-Id:Date; b=BphDV09+BU+DxkthiWGUBS+PTtRG6vO9+LEu6AcgCAgq0LE4p4zZQ6LQrLjdgwae2BE6Dl74SD+JHUuHJw+GvGUezcBHXXzJGQX7LtuOaY0kJZYKDS/Qtr604VTxQVhTccIQHshN4pvPndiYC6GOKJyQycS1yC3qqnYqksEvUL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NmOUp+Qz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NmOUp+Qz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B88C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 20:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775247333;
	bh=JpuCKEv5fLJ9wbYOeCoZiu6V91IpsOzoLkkhWutVUA0=;
	h=To:Subject:From:Date:From;
	b=NmOUp+Qz7Fkm94eHyLQXYjNWEqHrP8mShuW/fQrblbd5rwhL4FehV70BxHzCzbjrB
	 No4PmHnPBC9g/yPTMUS8KNQq+b00xrzGIDF+VMhDDoHaxSIESJQ0tfZG7euef4SI7Y
	 D98X6lBA17jgS5H7aMOP4jzzawQfQtKS/tlA1kMSHHhUxEBJRKh+FxiRYclP5YGQ9m
	 YT8a1F5X0nuMcZx12rgzRnf1zqXiBOFqZrjo6U4QALLTIw7UQzC4xhMe/EUeJy51vs
	 +lKa+pu700QIsRZraB3uiCYj7pRt9ka7W2ccl1m5jUsyMdatxgyjsjXm6jaQAtcFO1
	 3o2G4W4jK0V9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0B4AE8538E
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 20:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177524733374.24256.17621414838651437466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ca89b4e53ca4a42bfd35f96ec87a9589aa2d37a7aafb3f8c04f5a91c24d2c9d
Date: Fri, 03 Apr 2026 20:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775247333

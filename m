Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A6BE28DB54
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 03:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788836434; cv=none; b=I3EZfvq2yAPBruUg5cGbJQhvkNp6cDnvHn21GpaSV/PEEuDdElFcw3JYimzxMt6xrhcgq5ChVz/W6XzQ7rSTGIcv2Yndn7VE+lWhQavUtgIttRUu3FUdjZIymBvo4vIhmVfOkPSR3ZHCXlY80w+nHUKdWkaAlPkfqpfdXclg0+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788836434; c=relaxed/simple;
	bh=LAtRIORs3Xy9M5kqhhnPo2f8o/WoxAwlRPYCKPH6K7s=;
	h=To:Subject:From:Message-Id:Date; b=pPYNgfKqqRzZFQCw8i0MtEVHtutqR4nmnQ5GBDfJ0K7RTw5ljQMRs3J/0fFW8cF7fErK7vU867FH9rbMI4LnAhv21HODEXEowDTgwdMO6L/Tlu9aStULxCv5e+U/nIECkoz56/tyUILm1Pc0lkm90w9KJ91Jd2cVpeFEtLpq6/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NRVZU7nB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NRVZU7nB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBC6DC2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788836433;
	bh=LAtRIORs3Xy9M5kqhhnPo2f8o/WoxAwlRPYCKPH6K7s=;
	h=To:Subject:From:Date:From;
	b=NRVZU7nBrqR02LaxP44hYUtOxSxXWmtxL2scBE1OQzwxmvsdPw91c7StcJHacxBIV
	 L2ZCQyARcRydT1qx+jqZ+kfQnA3izY2V6g/xBij0TatfBeEsfLBhQcdsbd9a0HVx2F
	 h0pYi1Y9mH6fDVARAtl6mYoF5eAIegxGDNAfdya5tgkGmhE2N/a5RM2e073hcC3spM
	 gp+PohdZkcc5I3zRbYTa7Bhx1HedCtLxWs5UkgYb9WRAPKRLqO8fwItsufcXx7CkB7
	 40NPTdiu4rcFKsvW6bdLVVAZ4bomWVNolGyFb6O++DdlHkGvg6a7JP1N6sCu0ojZcn
	 tWudfVKQFvDyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8703C79F9F
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178883643374.13173.9962395724955608508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66cd68e37d8c15ce029efd718c76c01d1bb867df71edb9bc8a6cd12155979ccf
Date: Tue, 08 Sep 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788836433

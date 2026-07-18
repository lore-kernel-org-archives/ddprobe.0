Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CDAB2EA172
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 11:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784372914; cv=none; b=sW5WPko/qNjuO4oGrLTBhJqE+eNijp281xtfIpc3jx1yWkqTi3nv5n1T/9fnS2zST1Du2USYLhEQ7m1Os4iLMaJYtGMoyVDIOwH89uHmYmT2+fLDEdVJ6U+MaFADhKyG+DXGqI90FKRweAKnpR0iIGW0pfpjCzWNHHxONRNkiOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784372914; c=relaxed/simple;
	bh=oPJ4CymnqOP9xEto/Opdt1HBt6mqT6UkcXrw8Wrmkks=;
	h=To:Subject:From:Message-Id:Date; b=R/OqoPf/l2NyAEQxsq/JO++OKNZsiAtzKxNDmj0XgCEGwEuPObs8ydWPHNNuUcCT3YnzAsyAY90xaNNjMR0jPlSK6Y6tg0QX/W90bAgxlmTNRb2DbfrixbZnqQfPbIKxvH0fvmjW8bmc6IAuD2wqUW+Q4niM4r+Iv1VU86r34Qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QC2tI1zL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QC2tI1zL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA4F7C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 11:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784372913;
	bh=oPJ4CymnqOP9xEto/Opdt1HBt6mqT6UkcXrw8Wrmkks=;
	h=To:Subject:From:Date:From;
	b=QC2tI1zLkhvlAbLGFSQRwyjN5dSyFM+jHQeUVTbqSbsO0R5zaiDk/i5NGcxz3+yb7
	 mb3gQYL6TKAuAkWA02E6t3TrkExmlIw4g0wLFpYHeUzMZZnTAjVW46UJcaYglm1gh6
	 SL5l6XSzI/N/H4kG8mEXNIjvw/fzTrbzs4ncvwmbmgPZsvvWFKdNsgGK7Yu7KfqnMI
	 WWe7FwBLzsIob6wCRFEJFqkxDuPAiW4/WDAl6O94WKbODKF0BQmyN4s7XrcGsio223
	 ST+uW3PETdZxVFpVtzFvL9vwOcKEH6UdjLcecVplzAcxldaqAUncnDbOS2C4E/jwgz
	 eXSOS2ssB9mKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE65FC4451C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 11:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178437291369.23826.10003163048559802871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65096afc4ed28ff25a01d50fd88750d72e6f8eeb2a006b1aa001bffc49504d5b
Date: Sat, 18 Jul 2026 11:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784372913

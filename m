Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D819158DB9
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 12:36:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720528583; cv=none; b=ceAdaptV9+4pu7f8lHGndBHR1dNpD8MYedFnaSpvJpT/hyEGB3/9nt2WWT6H/j8BYbNLn+2zKGgioM83jLS05M/BmCrgPZmO6RplPSIJ1vy4ghgEcnmtudJ3MqAYH49Jj3aVp8iRCwzFaPoK+vwpszASTT1xteJ8CaaIYEFxVVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720528583; c=relaxed/simple;
	bh=WGShKbDl70pQssd3rgWbHBMhfwqA4Ro9LrtN2EGWfO8=;
	h=To:Subject:From:Message-Id:Date; b=cbCFBIkZ2UsaEL6Z5UZQMjqfhrSwwxj1Tl3wX5i5Ho3pnT6iy4H5xgkPXf+neT7+OM2ZsbzRpqDSJXlqn5fmBxAtnBrTfDFg65eG1wDVUGXD8FexSqWif0c80HYNImh71OWqg8hTwjIeMsqK56WNKvm2VAGsPBvB2b5otXxyszM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cm0MiXBR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cm0MiXBR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE6A6C4AF0D
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 12:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720528582;
	bh=WGShKbDl70pQssd3rgWbHBMhfwqA4Ro9LrtN2EGWfO8=;
	h=To:Subject:From:Date:From;
	b=cm0MiXBRiL5jXLEb3ZhCJUr+ilUOrrFn0LNYkIXrOVMpkL/qFZKdTZdlfR9Pg/LKm
	 Qzq8jxB6j32tPscoiuW31sQEFLtUf+A2kQaXvyX5badumTeDZ7vWiCd52iE4rcoFlA
	 Nc7FumcRaz3EFHP/qXG90TAqtK/wV/UkB9+6mOpAhRP4OypuCU60b4PFzdgUcFbYoJ
	 aaeYRZkrcNgt0gD4XTWp5FH2rvyYjaMg1HeF+Zfo+VGsmR1Jn2ewoD+4xczzE14Srb
	 y5Btx8F5FASqRXA68agVhm1XZ3ilcCghJWMWiwkh5ZRAboGoEkKXsOT0t2h9TSSHiG
	 /+Kj6A+//lbpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2F2AC2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 12:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172052858279.27767.15070471605892324003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae223fdf76586f05d93490558a1977febc5b7fd95da6fb2f51586f6850bd10f6
Date: Tue, 09 Jul 2024 12:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720528582

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA1F2BEFE1
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750081194; cv=none; b=fHm8TTUtco0u3OKtLjD90fwyOAOkSGsmycpfKaz1udGYHy/yEhkbZ049mGTiPcEJGW32y4BOn7PtLq3Sbs2lM5jifEPbGZZtwMeAwu8oZKF/KrefRdUj7vhZ0qm6xXBWulOYkGhrU+xrhRNGvWJjBuSoZ420DVUcVRHAB4tXhxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750081194; c=relaxed/simple;
	bh=EgodojLF+wGRmJUQL0OUzT49123A5HSFghbFywT1EB8=;
	h=To:Subject:From:Message-Id:Date; b=AFZtvTIw6Y9BYzzhLAWob9pyk9CkZamgeVhNSAJf6y9fZjrFxcxqBnPVpx1tlDZzbpstRTQghK7hpJpzEviz2G4dTWwjEj7fHLBohxuOHdtGUrlg+909MR/ehTqoNKbBgin32qxnJ1fXVNHAfKCgWmSr1Bsx+b3fabn8lald1GU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fTxy/fGo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fTxy/fGo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7445C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750081193;
	bh=EgodojLF+wGRmJUQL0OUzT49123A5HSFghbFywT1EB8=;
	h=To:Subject:From:Date:From;
	b=fTxy/fGok5U0DZJuCUpri1W9Bshr9xzA6CRSklThfigifV19J80RCW7Q/kT7FtKlD
	 K8GiCqaRAXLwXL6bnXL5NCMSPlcm9MWYnECxJ9w3FZBLSA+JWCK+5UDjmGn2nZr6ey
	 GPrY7NIREsB5qMck5JCGCAo3KI02d9qjBPSut9kP4HSa+NumeTBgroN2bxhVsVi5gr
	 4QymV9wz9NnxU5prNj5NgXQI3PUNHjjI7EHd+hN0UwwAbtlseYJ5js3bW03uQ57WsD
	 tk7Wn7q8M5pbhGFQCSL1xTP48BQpijmhtUXpXEAHawpFqfr3kuWdIyYeKuRyXMzI5t
	 X0MUJdb1xniow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0BFEC71136
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175008119363.20497.8348306103158920589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b76ee6a5cfea424aae1d9303fe833e10847ce063a01ec7c1a1509de20b9aa5eb
Date: Mon, 16 Jun 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750081193

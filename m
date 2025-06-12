Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 489F522173D
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749730194; cv=none; b=TSIrf6DmFpdbsFPMQSsDoZNgy6dJPQxt3yNiHwV63j/wV89jUoTAqLE5x22GeYAI2/xKkXX7m4ON/uGy2U8W/1SBI5x+241B25Teg9qp2ATV6KPpbof8xup2lmlC0syJt7b9R0rxcSKJhYAVtMgE5kDIsQFkl1h1NXykPVJTRcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749730194; c=relaxed/simple;
	bh=sEaPp807Dv6L/DPUzA9O+QxSpDR2vLFjT5ZbtwUfgVk=;
	h=To:Subject:From:Message-Id:Date; b=nZb27zahX8KE1i3lcARdOFFNP1LM+UYHsnfexoNIU6sN8sFmlmgOyoJpR9IuE7zyICRNt/2k0U0Sjlr4M5Dgc0wJgxSApGxVNABbaoxEEbij6QuHPkEnOGJPvZkgR/G2KsQx5DufMcgboI6a30z5HFhCMZN/F4cN8dg6jF1wUVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YYNL3Kg5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YYNL3Kg5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C1CC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749730193;
	bh=sEaPp807Dv6L/DPUzA9O+QxSpDR2vLFjT5ZbtwUfgVk=;
	h=To:Subject:From:Date:From;
	b=YYNL3Kg530iXh5MK7uNDHpiIDYCpsjrKmP2iXK/JYHzVyiEJom1de7G9yyzo/oNE0
	 HQ/TyFiwNC3seLZpw/ZqiJmgHh6pywokMEBEF99u1qJdr1fg2K47A1hXUVa/DEq6GT
	 hZbUjSbccVgaVoCFKOcLbOLmodh2NKZ+waFnChiEneaaHEOnYExO5JbO8dxUv8lJLN
	 jiyNFGdqEm1JzkNGt8hdYsv/VV96wDAyU67mSuebJLKZKMrhUCVxuRXAGhRYnm27g0
	 vH6UEOtp4c9XLlKwgSJGF8g4RJGafM75UUrn4zCOfpszIk0FPRUiMYH+lTIDP4a4OV
	 l6a8YbhLXrQBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9376FC61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174973019359.10608.13014983891539508059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b53238e304acb42ba57a35f7f1abfc454a4b97d37131399cb3ee0acb731309d
Date: Thu, 12 Jun 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749730193

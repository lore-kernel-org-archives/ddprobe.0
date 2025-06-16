Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7071A5B8C
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750048794; cv=none; b=PktCw69pzYF/fcAb/htOt6OUwUkOXTecg/iLs+nbN37s/OW8kNb+8MOP9KZkjKPsqAWgheOEsHLQQHkEi5s3JxCKom1XoFlzhOB/MmyxqT9F+0TiMjVTDixY0g3lfOy74ZoA6H2Lf09Gy2SrOcudrlPuuai39ONDhJZ+Q2M6PTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750048794; c=relaxed/simple;
	bh=n22QTNVfTlAQ4fCa3e5tsjtkYIdDu40TpfzNTJIEVdk=;
	h=To:Subject:From:Message-Id:Date; b=BRTltIarDeheddYxRNtTYX4YIE6L016I73qQztbkuiI0qjfujq506U6aTUGc17sjupW8bF0+gJExhddqVV8/eR0EqyHW5mu0pwSc4IPLeoiZXodqElJOhIJSL5RB3aDzUYNSd32awX3gDiqUSYg9IHtmQvIbORrsuVxSlhGnXn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ufVmUvRJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ufVmUvRJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE9B8C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750048793;
	bh=n22QTNVfTlAQ4fCa3e5tsjtkYIdDu40TpfzNTJIEVdk=;
	h=To:Subject:From:Date:From;
	b=ufVmUvRJDfo4L4AZTWgpKahRLJYEeNXSMHNKq365pcSARW/hLMRfV7itax9+3k3h9
	 0e00X7wOhLvM8DgHeTjICcyf4692jIp3kIAdfUPZgjYEt+RGNRbYbFr6U0XcbTwHXR
	 GI+18OQ8cvvZxUptqQ4VezF2uoC8QuGAJ+J4XjtkHTvOwxATpfeZRW+v+60GwArzx0
	 h5WFU6uiTyh+NXRrg0Gm/3Bt7CcPCOv/eRP67Q4J82c+sF+2XbXBDrORikmsBB5wBo
	 zLK2jdx8GTDlTT44X6PBCIVz3ZDjq8Q8MFOy7rIpp5Zekm7cenYt8ucc0KuCQVK+nr
	 bkzXkm4zSI1uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A667C71135
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175004879362.8836.5915563889201398044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dd9499869f5d8c8bd746f002fa8e7f930ca8d15174afdad86ec3af47462a3d9
Date: Mon, 16 Jun 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750048793

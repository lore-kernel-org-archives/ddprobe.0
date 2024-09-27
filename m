Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3549CEAF9
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727398554; cv=none; b=s0utTSbh38ze2Hy+xztGAivpP1ptNL2bJulyGNMQbRJwbWMnDTFhvt7ckUvl/Bqq69XaCI12pgkRgfuL0ahVcR4IBFhx6q/p8YBEJeDsDbYP5sOQ8U975L56+qcGhGeUJniURmtwGP77Nkxe96cXo7ubAKFeT9mCYfAilzcl1RY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727398554; c=relaxed/simple;
	bh=GD5l5UTU4cZF6MEmBeJVTDn55fB6wD+SwRbgj2yXYEg=;
	h=To:Subject:From:Message-Id:Date; b=JcGSC2VaLlkQfvpexoiWAsbV4nlgxcgd9VH1+Oj9EhPeappXTemNoEwVmtzSqHbbPOSNewyBhDEa+PlgfLnetzempf/+EZVDARcK51YYVSExmJ8ZCZ9mX0/BUGGcH8BgviceAvQNrqNoTOt7BbR3lF5jkTs2wIm/O2ZjqUK6bQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MW1U/mBd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MW1U/mBd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BA4C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727398553;
	bh=GD5l5UTU4cZF6MEmBeJVTDn55fB6wD+SwRbgj2yXYEg=;
	h=To:Subject:From:Date:From;
	b=MW1U/mBdQsQ+8yQSOwfZ2cpA/qr5kpxbW7sAHdiUFw7tU0cBTcVaQRGTjmPhw0YV9
	 L2o6ghcW/9AopCVDqOiRGSfQWk75KJJsG27aqc4w8HKZW2sf9101vbG9wPjJE0Cmt1
	 ty3LOeVx7GmZhmBg9ioxuyJqHYLSMpXgvy5I1SVrcECO0dIFOns9e/FhKEEzt0P1Yu
	 Ba0YM0Ri76R5rAk0St4GtTVNt60iIjC4IQNCbdF6waB6f6kGkysw4Dn1aRn26mCISb
	 nizZSnXrsn1UnH+Q141mKhtLVZy17qHPoR64MQ2DnqtWxIt/5W+m7Xt8ndwE93igGA
	 w8Gd7OUoCIqtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96844CEBF60
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172739855360.4221.892249813470837362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73df31c5b09ffaee9d5d1731761e2399ede302414027583fc73d0fb8ed85c269
Date: Fri, 27 Sep 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727398553

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FAF91D8DFB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754815794; cv=none; b=XWgAIh6d5M//ZA08uffl1TPRtktZCNn3QTZ/5SNI288KajbUCYBuAWnBtYHcw3r0Wqy6QSWsUAf5znMQ/6+FbC+yxyIg9fDO/bi3syPgIoyc8wABsANC0qYHuzTZgMT4pwTZgZK8BfARQsjTEZcA52tVy4N5SpZYKQEurDtEyjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754815794; c=relaxed/simple;
	bh=j8bVz2eNdcbOG/YF5ojYe+rCFnpwwMAykGse5x3uqXc=;
	h=To:Subject:From:Message-Id:Date; b=CeM3aNyBag6A1WU/Z9QIzHROC5IuPiLW/95EfcHVsZ20eXnI9drWC0aFdWwUHYVuHNq1kx4uz+/uHu0F/IwramDjw2CV95Rwfcj+/a8zTySsKvrywC3lfa/MdmA7DPRCrafOuA4VB5tf2R93OLran8URdM4GbczmuaPCgVIn/CU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nORLCBRF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nORLCBRF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14FDC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754815793;
	bh=j8bVz2eNdcbOG/YF5ojYe+rCFnpwwMAykGse5x3uqXc=;
	h=To:Subject:From:Date:From;
	b=nORLCBRFs2Zb9yGl7VQJ+NOGBXtsne4zQ8coxL33wPKHlZiuA4FinVQp2uXweYSB6
	 zIs0sjReZmv8g3rq+j6k/NHsCrWqBI7PgJnIwz5sObIg84ruZSAY+xu1OMZfSTCVev
	 FgVquOZiUjt97nim0bsi9BmvNb5141rsPn63liq0tztECFl23nLSfBNuX03grdR65n
	 UL7G/I0Qc73JQk5fE7KEUER9zbnrdc27nF9rlFsdFYKFGgiLWrOiwuynK8U06PBNLr
	 CwIoUCkwiO57b2HoX890q8LmHBMkDuNKg7w5EsQpw1oNDe+29T/9xREFwYp9JLxiIs
	 UdzrgmQa3nP6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D33C87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175481579357.25951.4145380121270555220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0f766d367d83d8ea482ee898abec922eb39c444dfd4d3c0e28fc4e6d61cdc37
Date: Sun, 10 Aug 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754815793

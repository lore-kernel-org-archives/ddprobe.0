Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C8E863AE
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 01:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719452003; cv=none; b=Qsd7LoP8qe6yvFqIRLwNe/AJn9uywoi+CKSUcWqf8j4IgbdE40SbNEg2ppF14+m6U5CyhLErDgqWOY6aV3pFvH9OSqpSdLLtRVIMwJUAhw/eXV04xte/jCt2UZ/jsOP5dLIdv4tH8+HzdBmprknH9VyUtdAcKsqzj2Q+Ych/cxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719452003; c=relaxed/simple;
	bh=jDFkdrvAMpmoMTIoa54YA6ULHUbyFKXJhrhdseDuIPU=;
	h=To:Subject:From:Message-Id:Date; b=pVBXKg0MIsZH/6nuQZEXUmIItUI19/vHV73ZScEE1Xtyau/h6et9C119MvbIekoqdR5F7mGXhftS3MY+6DDBznKxEHC7EsxMaUjje9NkSU0XYW/luUCNHHH0rUc9yB5eCs9FtGFcNRPpnuXiAnfrK6mEQ80Y+eiQ4gDeUXTXUVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sLDnmBbC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sLDnmBbC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9CE7C116B1
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 01:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719452002;
	bh=jDFkdrvAMpmoMTIoa54YA6ULHUbyFKXJhrhdseDuIPU=;
	h=To:Subject:From:Date:From;
	b=sLDnmBbC1WoZkYMF3AhABU6BQ1y8T/PG2UkgsOXohPMetL9vTzgv0JjPUtnlSLwHF
	 Vg50+PKx3TSeRuqUdZxkUrFfM1W6hUsi1o0nIq6m1CrAeRTH6vUUK6lhg+5/xj6PiU
	 gjXWbsNpEaJrMgfCOnXB7KWSFmaJdDjnqVFi3fTmlLTL/ptz38w0xr5TQhfQ2/lNn1
	 U2aNf83wwhD8/uOicpAMstvYpG8HF3Q0jspX4dUpXQjFs5qtkbpSNcBeQi7tQB6IlD
	 9jA+2MzN3zXHNeeO1Ln/17gBRe4KVCElQHe/5tQBkeoA8F7Bgw0vSCRoJuweggWRu/
	 Iijm+O/43RrSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D25C6C27C4F
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 01:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171945200282.29488.602081588451977797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8534fd27d7735ef104513bd53a0c50f75c61f7c2538ec576c541e38dcef7b253
Date: Thu, 27 Jun 2024 01:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719452002

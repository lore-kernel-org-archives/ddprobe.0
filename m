Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CED4A1AB52F
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730577953; cv=none; b=BnkPCebSuFyXPqVwnCw8Rttb1s6QpCpeiIlcPXht3siCxY7nz1TvW3FpEKX8DHmb5F1c2up5HOCt0wOueC6woi/OHu5xZ+oFBClGc9PLvm4ejCxSyoZ6SmedTQ8fHnD7bq0/86nlTxiiVK8eU7PgMW/mwIErK3jXkSQG9CdTEDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730577953; c=relaxed/simple;
	bh=GdE3f39KKauIte9YAsHQNrO8TPKIOAmiAApTFMN3GC0=;
	h=To:Subject:From:Message-Id:Date; b=V2sG7UO32ZkyFNGA4SUwQB9/xIm07hNs23Y4xgm+X6Aim4Z9+1BweTNdOeiEAlQbTD9ARnAU7Z8bwjbWfWo9hIVzHzB7ZAjnBrfHmUEPcLWI+yKxZWqCrXqv4KHMXM3oriYk3Z0tj/Q4AgUQdfJJ8xDEMMjgIcoTEqAstF4EgI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q+qWt3Y3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q+qWt3Y3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2570C4CEC3
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730577953;
	bh=GdE3f39KKauIte9YAsHQNrO8TPKIOAmiAApTFMN3GC0=;
	h=To:Subject:From:Date:From;
	b=Q+qWt3Y3kt+R5PcVnxN3jMty1ukzXpbotBuO7X7juOYOmxN5XTVR7YGNvncj2zjh5
	 +0qlWl5sfLItNntogwAHlM4G20BC2f3BlU4OWQAe6DkoQ4LUg066SvKll1+Ouv1Pay
	 M+kvcpAGf08JXgZ312VyfyaqO2PcRiP0ZbOS4q/coXK0z9zxP5rTzsF33Ib4xplgvM
	 G93HXZrTCIu/o64K87R1Sbj2rklJF71EHDeSK+Ek81FckKDEfcUiquTJ4MM125Us2B
	 O7hPus5kDPmHMIf2/PwaLU9zQr/4LlmI2ea8qJOAj7055eHVQNVplQaqweZPZDCPLr
	 Gff+99Xs55EZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CD3E67809
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173057795359.15498.2443114210668385278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec85ff77f204d4136ecfcbec69235fb57e141246d218beb8935a5cdcbea82276
Date: Sat, 02 Nov 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730577953

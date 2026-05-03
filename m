Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D7B1DF27D
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 17:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777829854; cv=none; b=qQ69KFHjvhZXJibEMMEuqlG77vaikJvzvHFl2DopjV0eWIQCBoOCE/3AT9J3ZaQPxwqFOOEx8qRH+hxu/tK95vdyF9t7apK4AjpbnfYgSLrA/3bC2ib3UGyz62+tln7nFROQSM7iI+IOcsiP8O2FHO0U+3noKIPexo7gwnm9r9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777829854; c=relaxed/simple;
	bh=GUMQiCdY75Vpq2QSew/4Tg/xe1m6vYxYOc/T6mU/VMs=;
	h=To:Subject:From:Message-Id:Date; b=nmVaPrWCwkqXtTN+gR9U6lXLJ2krlFGnUcAHn4h7O8APVl5W3M9nlUWZWIiXqsw/ORfFH34wcFaZYQU0Q9CRnLcvMgdBbQOgnSHCLwbW+a7+7iSC/3X4dPHfn+UkWrZDXpu16dyiJXYyFXisOMLzoKyeOkvMcRWqRw9bzRA2NQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VQm+S2+K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VQm+S2+K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C31BCC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 17:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777829853;
	bh=GUMQiCdY75Vpq2QSew/4Tg/xe1m6vYxYOc/T6mU/VMs=;
	h=To:Subject:From:Date:From;
	b=VQm+S2+KRv0CicYiqMgCJD8iUoS9XNY/6FS9Wqwr/sz7wc70LHT2d5UpaP2lYb/7w
	 Enyh4+FGO1VBDbuE+Tt4dJ5w4XH2tpoXMKPRyLrpP0K8U0HAnAi416PeMlIAajRhy6
	 RsoUIMJp9I171nSEhlnGGDY3pvxXAmEIId+mKXMSvhutM0V9UFOd24mOHFu1AIvK9f
	 u54DHfS4otfrovQWgXnOGCDMKOxlaC5DE6ju0DWKnDBA6Go8XvrGgAH2irNCgSVcDG
	 4PNT+bJrb0RZUT0X4bBBUbb3v8eWZDEEpYN9TkmJ/PIA+afCdbqKJFSGpvLhLQt9EK
	 I4ySKhtgWInsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B038DFF886F
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 17:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177782985368.31760.9175487066316353059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31f233aff5ec3e21abfef272f3c971efe24aecbbd55751fc4c1a37671f0bb767
Date: Sun, 03 May 2026 17:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777829853

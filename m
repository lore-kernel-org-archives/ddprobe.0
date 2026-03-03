Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2762745948
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 12:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772539494; cv=none; b=aeMGrb2e04GWfwuNjkhQipw2JuvpJVR5oiSjJCCPRpjgwsu/dSViOHiLcstMJqv5DyV1Enk6D6BECP72iGAGleBEMSHETIU3v1mRNw/vSnwzFPT3JMq9liWwe5bwt3HJId6fJJRnmv+LGZ9vzev5eOLMg+mARommxviIMM9Qvqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772539494; c=relaxed/simple;
	bh=f2ngy11p+H7rRuOF2CH7MWyrtx9v6dLjeXof3pF7xME=;
	h=To:Subject:From:Message-Id:Date; b=FJWvw2l7fCyWjnKBiCR7vWxQ6YzO/zQJGmT4Lr7co7qd49bSiSGajvBdh7H11GCjcBZ+XUP4grN2VCvJbtmrgePe+CwVif1XyhjT6Q2wM+x8Lj59nTmaNgpPqBGLr+JCDP0bSjZ2G9PHlaYsAWPLybrfuuBppLQwyhRf/BUaHMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=koxNMzvl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="koxNMzvl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB4BFC116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 12:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772539493;
	bh=f2ngy11p+H7rRuOF2CH7MWyrtx9v6dLjeXof3pF7xME=;
	h=To:Subject:From:Date:From;
	b=koxNMzvlA6v8wY+IluD8VkysKLrhVoI7SIeJ8UQs+9nR94Q34CPEclD45K7vveWWL
	 VoKwF5ZNVwSz3an/oaxRXjCHmDQG2CgslfuTSrVBFXaBxs0UPbxkjHnDk6uzRfa5xE
	 7PjNvCtH7rdH96Tuct4laeKx/soIcOfubymMkl6q2XMH1U00yDXAXlCJt6/I7QAg8L
	 wjPhTUlw1lvBV1l8C8KOOsxCB2uq4aZC20osHLYXN/jHEM/kwEQF5ddmOIID2i8+gx
	 tOD2UkZ8m/LC4YLcdrmNstjQpsozOKfSEyWEJKnzO1FPIcaHATCJxSB89jIt6q+yab
	 TtDYUWElHMX2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3E23EC1430
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 12:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177253949366.23134.13190869276248431993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25292d6efe344f9733787f14ea32dc048656ff64ace184418d4ad6de4c4e016a
Date: Tue, 03 Mar 2026 12:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772539493

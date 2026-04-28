Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05AFF18050
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 00:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777334854; cv=none; b=gMlFJ3s2PaNhYS/ZZkJfQqU6FuemM/OScOhsXeKnK0fEV0QW3FMqer3HqFtskBpsRGW7X3gBenWHeKTQsWcvKjXCvERleaQWHlmYd91YJvwQWBwwc7du06wDBKW4oGBv5c3+UykMAlYY2u9jt4EFZZD16ZgQnYnDJsv/sxmVFbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777334854; c=relaxed/simple;
	bh=FCpUo2V//vrUDV/w179Fzd1KPE3OXlCvZnXLlg6XKaY=;
	h=To:Subject:From:Message-Id:Date; b=Elu1DBf39qDRx28A31BDVHL2nq+ycvM0Z0kTYV2Qbe2+nxtWXdExWt+8VCSgnyv7oxLDVuJGYB6jWqe4Jw/Rtp1AFRdT3y5fZd/09gj9q5W9qvCbtrK35TqXIXG5w7vEkh1qVC6fi82vb6SAqGu+Xxsn9DGO4zxkLoZuX0WyuCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hXBOScHG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hXBOScHG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B89BEC19425
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 00:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777334853;
	bh=FCpUo2V//vrUDV/w179Fzd1KPE3OXlCvZnXLlg6XKaY=;
	h=To:Subject:From:Date:From;
	b=hXBOScHGmd5ugvHqfr1OJtovDhnVlZrgtTSbZYo3ANBFekAnYdPBReM5qSvxbL3R5
	 m/H8SVCI3MWgPMbiiMlRKTWlrvcCDkvBOLGL4g2zi+S2XHkgteDJOLmwZExXhsnoXI
	 IfyrHctzhEtSIHXJpccgQmWSOV9QutVT59lCQoBuSYVcmuqMAR7tOgf7RwW7akbrIk
	 dO/6rVnSg+tP5IcTbYo30O8YASNbQx2LUWDLsCUg1D9phJkSyCtkDt89R7DSa+mrY7
	 luLZ+VOUGUw9lNNk3QYDk0msQNimf7hiGJhNl3+3rnbMQ6ICZJSliA1HFG5g0wM8K5
	 B1/hi5etL9dzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA08CFF8867
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 00:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177733485368.18316.15760030515545114318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25ded2a7eb7d65681cd90c9f8da2b50ab8dd39fb6d5bcf4de133e273a5dfc164
Date: Tue, 28 Apr 2026 00:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777334853

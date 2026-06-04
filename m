Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FE8318BC3D
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 00:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780533274; cv=none; b=TkBbbuuWwTn85xSYWxboOkpMHQpiERGXbn1Mf8qviQpDib1xaa7pPgtP5SehKKYh0Oa9DirJvQkJW+s9+HYzY2CY1BC2rqZ451Y9yw717w91BpvUEbR1cb7eXt+hm9Es/7zI/6RXZbEzi4dY1ahVSFPor8Chwvdbsud5vl3IomA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780533274; c=relaxed/simple;
	bh=j15jqrqR87bs1/9WLpeQiJ6d1Gy5/qjB/gMeCMPvUJ8=;
	h=To:Subject:From:Message-Id:Date; b=jB6QTxCdXB8O3UMr/BpN9ZtxdS6WF0QgxtXnCHhV8dL9zRTUnazBYeVNHWHgBUpqfcDIM98TOdinA91KiaFguh4CEe+wnZgSgo+duk42CE8ApaMYU+a3yAC4iCjDqdiqWfm9Pc/h0g+4P0w072cncN5j9SVwlwefqFiRw9EZrpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JlpvhXyV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JlpvhXyV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFAEFC2BCB0
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 00:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780533273;
	bh=j15jqrqR87bs1/9WLpeQiJ6d1Gy5/qjB/gMeCMPvUJ8=;
	h=To:Subject:From:Date:From;
	b=JlpvhXyVtrVRiUSCrgzsRi61OUzgNsbMqN/PTS8pvhI1fwsacbdSJtvKsmwX7SoGr
	 gk7+xzUqomX8q/4c06at11Yp1p87M0irai1/vVnouzcuVq5ZXS7ykbz6oVOiaiY0BG
	 QJG7CjwFT4zKy1kZkJ9IVOY7wVpXSdc4iGVb+TGFVK4IRwhBOrK1LdqdsA8t63RlAU
	 7zAgr99ex2JqACnj4sDKb3xL+d9gHvd/VtHATogtIIC+8kd4SNYo54cveNkZpk3z3k
	 MzrF38v6KGISsL9COZoW/RtjCeHBj3N5qwROwVv2SBlDgomW/bVu8fLETrsq7Dy536
	 RYYh047hBZn+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1724CD6E60
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 00:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178053327369.25699.746471304657211227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6caac6c78df05c9fbdaac9e44996ab941deeb3db1aa20ee6607802c754bd4333
Date: Thu, 04 Jun 2026 00:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780533273

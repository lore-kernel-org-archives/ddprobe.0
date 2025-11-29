Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3863072623
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 08:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764405174; cv=none; b=muV9w6Deg4ujRNnFOF1AhxqJ+lBdTyyKexY/ReYdqDhgP5f94VvB9i9UQlij8oiQ6eRKBvmuLwx1qRjHzuVF2SrcHCJWRbk6sJ5ggnsehbQjsBG+Z1C73TV0FaNFFdBrq+yielVEGA/G43fg8WxCTI6PIW7sxerMwzinmuP40I0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764405174; c=relaxed/simple;
	bh=Z7nuh41fKeIpEvNlmRuH+ol4CAlGdlEaVoFkfSRog/A=;
	h=To:Subject:From:Message-Id:Date; b=i2TWYvd6B1Dv9lhJXmUhp28u3HGfaUUyPcfqgppTv1NJ49q5y333Xzmdhm11cTySuAIumOYaPdOnqsVhiKmC3YoiVtzoV/3zEv8uSayyycvofX5jxcD25mj5Ez4olblrDwxXTJuwy/JgBIga/mp1QzuGeclMXDWmEosk7XqOpSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gfopS49g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gfopS49g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E01C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 08:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764405173;
	bh=Z7nuh41fKeIpEvNlmRuH+ol4CAlGdlEaVoFkfSRog/A=;
	h=To:Subject:From:Date:From;
	b=gfopS49gw2DBn1jrlBuFNnoeK/D0BJ5E7xhb2hWAQ7KDtCdAys/mhfp7GuOddK1Td
	 m4V0hZb3o0/g06WFmdqhj7XeNCgG35Cv2YXncjO8v6IaiYrxN7iOBrZWi/P+5mVti3
	 WLf1v46sgo/lAg/iNzbPT/Wevoo35jm0L2XObw3cEaEfASyZlgdzAGCJYAhqneOiNx
	 9rpLtvVnoHQ0ZJ4ZGN9m7fB3eE6+vCBG52YcTjgJusSLygQRTd566g1wBwLhbaHOeH
	 0jRWyEYDUes+LyQUkPEtW/Bme4sNwWnmXNWn4oXgw0ai1TL5Jwzrd1H05DxRjP+DjO
	 i+BiwpcDFVHyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93281CFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 08:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176440517358.26125.16344458432945637144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7c442b4468d952155cae2d2ad4fb135914dbeb1f053b3412285bbe6c50025a6
Date: Sat, 29 Nov 2025 08:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764405173

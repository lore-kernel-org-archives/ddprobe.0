Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C5D2DF68
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 08:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780819474; cv=none; b=Zsfk8BXQeLDCDvvn/Smjdh6K8XrS/q4Fi8NOJDGuROK08H+lJzCTAAVMNv75AU9UGM3sb6lOeatYfqVHh4oH8/75+sxANR6eNHPCXkSqswm+nJ8LNG+tVL0pGOu6JKVV4qRdpSMQs6Mj3jpKTNy/6uSJxCvVfN3a+VAHpPGsq64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780819474; c=relaxed/simple;
	bh=+DxKoBJtHVEJe70OC/O6P3fxq8FZz58JJBv7QuGZeDY=;
	h=To:Subject:From:Message-Id:Date; b=puc38v6WNu9gbrSEQ11oC/84P/At/2zQTXUXtHHhXnjzybdfy+xIFDHnVEGimWKjl5iZPU8ADOkOLj149xAt2fSDT5vmrx2+SqYJqWeCnuuJfjZTHMDvKDPyIdmrUAwHcW3H/tDas45qxtaO9iqLtM2mSP25wwKkQsZ72gqYopI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i7BWRtZb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i7BWRtZb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC60FC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 08:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780819473;
	bh=+DxKoBJtHVEJe70OC/O6P3fxq8FZz58JJBv7QuGZeDY=;
	h=To:Subject:From:Date:From;
	b=i7BWRtZbOc4epExl7bXZ8ivEPzRhll5P0oERRm7Tj1P5/jZkNpkPUvHinFGT+FAs/
	 YutuXrMp35mVgDHVO5M7C7q+U88X12MJbcVGMTk9ON7Uhzjc6ZKg/oXa223qidZcRd
	 iJ19tTw+o6qua1zzwh/zL/sX1+r6JYTd7dx3F4To5xX5nPyRmkYmXEdgqnBhn0gMCl
	 vkCM96NARLE5fS71Wlzko6m8hs1AyAC6n3AVKin7iAe7qhExqSM4/5NPFc0wkRnxGg
	 wZw31O0HOjPw1n3ezVt44zVMcB8obCUU71F1saLmvRUKbV5sk+Fg5kBJo+EdqqvToF
	 xyu8QLlkEiG2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D10CD8C8C
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 08:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178081947370.6644.17492631045504288081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5253ff0d54bbaac12ddf8f0eb64bcfc565263b6a023388ec89eabb172f4eaeba
Date: Sun, 07 Jun 2026 08:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780819473

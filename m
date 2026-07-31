Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E5F433ADB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785484234; cv=none; b=GY1XS83LWHt+o0KVTtmpftSqv4LzFDDx/TyrRVhiFL0I+5qxQVTW0rONWS8xolgK24l0ZETZuxXlS3FvvDlb1POKlWNftJlqCk+K4OSFlT7S413pQriqEMBDHCt4Joj7srORCd4uoW03fbfdmMt8rinBMNWGzGvNJkgb75prxQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785484234; c=relaxed/simple;
	bh=8LMGmMLyAn6vWFJ7OOjWssLBW7BBwnYtzZ2jg3qLtIQ=;
	h=To:Subject:From:Message-Id:Date; b=EvZMpuL/BOmq08wcwWKm1Dqxpe23uZGjtU/oovdli8uw4B/dNJrbqrc62TYhoT9UDMsYXFC71EIVEV5jGeSA6Okl84Ox8zgbhWkeP15ddDYW3v3Nl8fySyDb8r0cxfH17QrEIaFZqR68fVOcDaT+CaVKhVeheZufgTiP615OXLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uCsODH1n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uCsODH1n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB754C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785484233;
	bh=8LMGmMLyAn6vWFJ7OOjWssLBW7BBwnYtzZ2jg3qLtIQ=;
	h=To:Subject:From:Date:From;
	b=uCsODH1nuFQEhbFldvfjyNzkA5OJ6OHJCVARfpXrlcMdNSSstV2pXXWBaS5ywBMVm
	 MK1TQjDPeXMNp+1uNwBI1usoV/dNi9c1S24lAfOWWm/E61xUNp8ouOLAHYEUxz7NSe
	 nr0c5O8WSDwDhTUSdZoBlbR6154X83MWoCRfP/xg6q0148PS8OG/LKJDpVysrzXGUu
	 UGcRPgOcnpH0T4MJ8LoMyiAyuYrHPpuRr1e1BsF3pCfyycTA5RWUl50ABwyDvrGlxs
	 p+hIP88J/1Lf3zHBVnNgy21NCBGOBzg9nGA9dH1HG1j0hj4rq1B/EuHhXRI0CmofkC
	 kKQ8lOiqyAjLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6DDC54F54
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178548423368.7750.12422157370952562854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d9fb7e851b9eef3040a5542474f65986ac762bafea36b75e1017a6f3ab90aec
Date: Fri, 31 Jul 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785484233

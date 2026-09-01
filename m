Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49F084A013E
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788288634; cv=none; b=tgBzsscm3wFV//16TJZGtDqPVU5/W/yazZq9SBZWAqKzSSLA6o6ehgvyBaZ3Hdn5DAtn6lEg1FfozqklgyP4jUY/vuDl5iJaEFowtAUeoBY+YmaaY8cI4wHTqJcpPRDjEk4wNXjpbC/7OA4B3AQZ6HocccqAZkEkKYNc3ZjQ5ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788288634; c=relaxed/simple;
	bh=4AsyGA1+/iR6rtbyE+JatC1K9uPKi91Pj0IQ4N/XTyg=;
	h=To:Subject:From:Message-Id:Date; b=pEU/egJGGuDZYr7m55CKVkrxavS3kbDgFgnQKZ8Aa67/+BdT7vnc06DJPcKJVc972LZ24iwqrCVWqkCpakCou2Gf/TlcZYQUmxbF9Q22A8jFYSt8QlCUBRMMT6+oysGrxKqElgH9/amuof3t+FTE7AQFe2VQqp2D1MmoagWO2Ic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q1gxT3Pj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q1gxT3Pj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBFAFC2BCFF
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788288633;
	bh=4AsyGA1+/iR6rtbyE+JatC1K9uPKi91Pj0IQ4N/XTyg=;
	h=To:Subject:From:Date:From;
	b=q1gxT3PjvDceJtd9qJuVy0fDKHsK1j8Vheq/8KhhjqwYX0At+f6WJlu7q+uzTwmsC
	 WzXIkqkU+UycDW1lAZHavD6cOciKzK1xLl6CzWNEJQGdypW8JbB/iBAZlsXZy2je8V
	 J0UC6GhyuVBWr8mwSDGC5yev1cSrai6kdbwFgpvIhylJOO6QoRj/3mIEcn+XqsCwz/
	 Xhl/hl8ceVBdL6WKNH05vTLFNVyE7FCRuG1p38S2qhr+Q9ZQQ3Pf2G0CqqITvHLKNu
	 TZXytlXUuaLg+ny5U75E962CcJQpm9AXhOsDkofhLjekl0wal+qFVfLjZmmq063DI0
	 WMKqrKMezZoJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1A8C624D0
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178828863368.26493.31488049073962438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87cdaf613e57534a86e97a521ffd67f659c81574e1237a098c8d7215c8c3c7d4
Date: Tue, 01 Sep 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788288633

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6D11E32A2
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 04:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768795434; cv=none; b=h0jxIC4bG3/KiVKowtHOJr2NtgECUgs8MY3qcPxlp9nzIXdVuvEHq3undJ96ofLXMbWtgWOVpdn5m2XFwfpgb4oFE2Zgkpnf0dl+caHyqvCWS/dbRRKemMiERNY7YJv3p8n47D9yPCprgsAtTYli/uSYUTYKXZR8S9EW80LoFa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768795434; c=relaxed/simple;
	bh=z0jTQFVeSAP+wygKsCnpY0y3FHJB6LuwMOlRSs2MmNU=;
	h=To:Subject:From:Message-Id:Date; b=YqmDK8ifW/T2jDkD59+oSk9iJI1GnjvYohWShC2XRqmc85uTP2iXF06+XYcenA5pc62gZ30l5+QUYGU9ycu4KNO3d3lwLD+P/oxCowyZ0gQVyWiXhGYAfXHK6vuTnmT4IHX9zN4Ai/X7EN5ofNthkAuUnXXszihk5SiN/zT2+Kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mja9EaO0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mja9EaO0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A347DC116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 04:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768795433;
	bh=z0jTQFVeSAP+wygKsCnpY0y3FHJB6LuwMOlRSs2MmNU=;
	h=To:Subject:From:Date:From;
	b=Mja9EaO0rN12lVARPPDi9+ILOI0hTx+L3kNbrgEBGNuz1+4r+HnQClYGOSU75s7Tz
	 yanLcZsJH3t8kjzV+N36KhzBB4Ldjx3X4ogF7OQg+2hJv57z+U36l4xNaFMUPt/3kh
	 LlQqM+MI9JLZisCXoIn2UBdCq774woZG5Q6jSUVsKj+TUbk59NFnYK+ttaa+65QSsm
	 TN+tv693nEOGQq3rt35c63GUQ7mr2Ux/k0Bi9v10KZmOVOwRwfLz5ls41Kj8KbUenO
	 /QX01uZcW8Ej22cXKi0m+XqwhIOU8ImN1jfhthS+lTzp7Q4T/rWhry/683hyrNmz1m
	 QfNAiFxG/DF/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9228FC98315
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 04:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176879543358.20702.15480945261939963985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 345a9b257f5dd01609bfcbf5244a9eff86c2c2ce5df486ebf0d77fcdbebf1a9b
Date: Mon, 19 Jan 2026 04:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768795433

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270302628D
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 06:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778394034; cv=none; b=JdHG0o0jEVmjAVdygW/Nhl6+cNMecfrIYm4vNfN8oOtT2kVQscti2eIc06bZE9yt+hO4nZdQ8IBN3gM/DNBpdQGY7Z4sDOsbrljeHnBSXs/mMl3LrVINUUsN+sILkPQ6pWNhNawJEmDSu1hHdwuVze+u4pjZFcc8QoqJncrQKbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778394034; c=relaxed/simple;
	bh=xk27RZAbToF7qr9AttYB5g+mDBjaUQgxYVDY4gl8tgw=;
	h=To:Subject:From:Message-Id:Date; b=hV9mP9PrHu9y4i7aXIqloNA5fQ6hNJRUzTijKOLIdWceeSd0Tl39DNaJzcsLHn/pt7P8+3HLUDqG5g0fCDNt69M4RFLCtUSvNy3ib6k1TaJFBXMRHtn0QYWk2VuwXSf9XtZgDS/DF0Gtjg0CM1/uXun4/Q2ziUa+ujwkXlW8agE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uK+vXcRn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uK+vXcRn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1DA8C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778394033;
	bh=xk27RZAbToF7qr9AttYB5g+mDBjaUQgxYVDY4gl8tgw=;
	h=To:Subject:From:Date:From;
	b=uK+vXcRnd+qQFTS+tRPFKrkYH/dDzhr/hdAx61qSQWT+WaAPuWw9/roJ9/spf62qc
	 wuKNVdcEXyw7Ieurh8Y5JLOZCW6gLQu2dZzrhn7fLLP9h2bc+lxqSfHxbT5lLzU+Mt
	 MvEACRkBLifIbwnmQxXzCp1nRhbR9JHG9DljEXbq0VLGagy54znIZFJB6VMEOZvZNL
	 jR0P8qXeLoWEuZySUdenzGo0jQjLeLJlw+maMN/sDd+3er+Cxay5+yEArW8nvFxIOa
	 6+Ht4tgvGWzi/jEYKEox2Z1gboe2CI4biP6LjmOCVIpi4gzCQU2/RYKVYbYqUK63cs
	 Zn4P3mEboz0DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF9F3CD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177839403368.11047.14841467015199963943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78db73c46276871541747299bbc0ecccf49071ed86b144d550dd3a9615211d13
Date: Sun, 10 May 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778394033

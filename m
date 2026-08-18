Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 574CC250BF2
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787083234; cv=none; b=kf49m+yYlgzxmqydzw1Kij8s7t+ouAIirxK3J29ZQppaBBSecCLyq8nqarak5uaZJsgYfJXC+uC55c8DVLPQ3WDSwcJetYBLUK8hyi9qw5yChZ1PvGRb9wu3o/MnDqgShFzPsrRkmrgNpZQ2Ly/jEU1rXqjhNapbulSJuDdGjHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787083234; c=relaxed/simple;
	bh=O6GkA+5/8/3yJuJBI7rkWTZK52XvYaCUj+SEFX/sTlU=;
	h=To:Subject:From:Message-Id:Date; b=FAYffeaNWhum1r0PpoZNW55I2ru9fO+tjzOmQ8l0sUb3PCT0GES5lwubL544Ih6IberjwomjfPVOJjQ2fWA614/nFGk3pJ3fK0D128PNecQVIgP/hskXZSBg9TRJBg6/t4X9GbrJz0sMCnD/HN2c+LjK5jdqyGcmXg59lrObaxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DawbiBW7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DawbiBW7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF110C19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787083233;
	bh=O6GkA+5/8/3yJuJBI7rkWTZK52XvYaCUj+SEFX/sTlU=;
	h=To:Subject:From:Date:From;
	b=DawbiBW74t8vVCU2lCYkTBohL0w5UXweY4x4lk9GQ9sgpYSoV5ftcET+d22HafX7Y
	 I1EjqKP0HUwQAfqIzeNAqPAisXq/8Y5y1EwKhkfoXRQLTh0uTgw9guEWl1c372/usY
	 HgRAUBNvta6aYcpBxdMN2PmkY+y3hzqDAApXhzbm3ziqz9lCNP8vxGGMz9UwYMguan
	 L/7kpxDSJGJvZ+stl8HAzme19Dlz///S2FuVFN3niPq/8XWwio1MRCqJEhwt5KmRme
	 O/MTNLW4qDQqRgJFMYd3N7TWd+yRPL64elWx5GvgkyktUyMycijDxMEczIElYxms+c
	 aOtI/lvQftktQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA469C5DF7D
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178708323368.5812.13360225842668430293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48aaaa33c55db65bf8872db6fe7e0ef48c4d72f6b6c638af0421ebf0f35d2777
Date: Tue, 18 Aug 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787083233
